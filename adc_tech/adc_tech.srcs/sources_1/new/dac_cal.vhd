----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2025 08:23:56
-- Design Name: 
-- Module Name: dac_cal - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--
-- DAC Calibration IP core
--
-- Function of IP Core:
-- This block receives a synchronisation pulse from a signal generator as well as 
-- a pulse with a long slope. When a rising edge is registered from the sync pulse,
-- a counter is started that counts until the long slope of the second pulse registers 
-- a rising edge as well. The count value is then written to an AXI GPIO core so that
-- the value can read from the tcl console.
--
-- Theory:
-- If the slope of the second pulse is known, then a theoretical threshold can be 
-- calculated when the LVDS "comparator" will trigger the rising edge. Using the count
-- value, we can calculate when the rising edge really occurred. Therefore, we can calculate
-- the "error" or bias voltage of the LVDS "comparator". We can then compensate for that
-- bias by adjusting the DAC voltage reference that is driving the inverting input of the
-- LVDS port.
--
--
-- Control Register:
-- 
-- Top 2 bytes : number of bit to calibrate
-- Bottom 2 bytes : rising or falling edge detection, A - Rising, F - Falling, 0 - Nothing
--
-- E.g. :
--
-- 0x0004000A : Calibrate bit 4 and measure on a rising edge
-- 0x000B000F : Calibrate bit 11 and measure on a falling edge
-- 0x00060000 : Do nothing
--
--
--
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity dac_cal is
    Port(
        clk           : in  std_logic;
        rst_n         : in  std_logic;
        sync_in       : in  std_logic;  -- Synchronisation input pulse
        pulse_in      : in  std_logic_vector(15 downto 0); -- Long slope/Triangle wave input pulse
        control       : in  std_logic_vector(31 downto 0); -- Control input from another AXI GPIO register
        counting_flag : out std_logic;  -- Toggle this flag as soon as triangle wave triggers rising edge
        counter       : out std_logic_vector(31 downto 0); -- Output to AXI GPIO register

        -- BRAM signals:
        bram_data     : out std_logic_vector(31 downto 0);
        bram_addr     : out std_logic_vector(15 downto 0);
        bram_we       : out std_logic;
        debug         : out std_logic_vector(2 downto 0)
    );
end dac_cal;

architecture rtl of dac_cal is

    -- Control signals : 
    signal control_direction  : std_logic_vector(3 downto 0);
    signal control_bit_to_cal : unsigned(3 downto 0);

    -- DAC bit to cal:
    signal dac_bit_i : std_logic;

    -- Synchronisation registers (double-flopping):
    signal sync_in_r1  : std_logic;
    signal sync_in_r2  : std_logic;
    signal pulse_in_r1 : std_logic;
    signal pulse_in_r2 : std_logic;

    -- State machine signals:
    type   dac_state_type is (dac_s_idle, dac_s_count, dac_s_write, dac_s_debounce);
    signal dac_state      : dac_state_type;

    -- Counter signal:
    signal dac_counter : unsigned(31 downto 0);

    -- BRAM address counter:
    signal addr_count   : unsigned(31 downto 0);
    signal addr_count_4 : unsigned(31 downto 0);

    -- Debouncing/Delay counter:
    constant delay_count   : unsigned(31 downto 0) := x"000F4240"; -- 1000000 counts in hex (5 ms delay)
    signal   delay_counter : unsigned(31 downto 0);

begin

    -- Extract control data to local signals:
    control_direction  <= control(3 downto 0);
    control_bit_to_cal <= unsigned(control(19 downto 16)); -- See assignments in comments at very top

    dac_bit_i <= pulse_in(to_integer(control_bit_to_cal)); -- Depending on control register, choose bit to cal

    sync_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then

            sync_in_r1  <= '0';
            sync_in_r2  <= '0';
            pulse_in_r1 <= '0';
            pulse_in_r2 <= '0';

        elsif (rising_edge(clk)) then

            sync_in_r1 <= sync_in;
            sync_in_r2 <= sync_in_r1;

            pulse_in_r1 <= dac_bit_i;
            pulse_in_r2 <= pulse_in_r1;

        end if;
    end process;

    counter_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then

            counter       <= (others => '0');
            counting_flag <= '0';
            dac_counter   <= (others => '0');
            dac_state     <= dac_s_idle;

            debug <= (others => '0');

            --BRAM signals:
            bram_data <= (others => '0');
            bram_addr <= (others => '0');
            bram_we   <= '0';

            addr_count   <= (others => '0');
            addr_count_4 <= (others => '0');

            delay_counter <= (others => '0');

        elsif (rising_edge(clk)) then

            case dac_state is

                when dac_s_idle =>

                    -- Check for rising edge on sync input
                    if (sync_in_r1 = '1' and sync_in_r2 = '0' and control_direction /= x"0") then
                        dac_state     <= dac_s_count;
                        counting_flag <= '1';
                    else
                        dac_state <= dac_s_idle;
                    end if;

                    counting_flag <= '0';

                    bram_we <= '0';

                    debug <= b"001";

                when dac_s_count =>

                    -- Check for rising edge in triangle wave:
                    if (pulse_in_r1 = '1' and pulse_in_r2 = '0' and control_direction = x"A") then -- Count until rising edge 
                        counter     <= std_logic_vector(dac_counter);
                        dac_counter <= (others => '0');

                        -- Update BRAM values:
                        if (addr_count < 128) then
                            bram_data    <= std_logic_vector(dac_counter);
                            bram_addr    <= std_logic_vector(addr_count_4(15 downto 0)); -- use the 2-bit shifted value for address, since we can only write to 0,4,8,C...
                            addr_count   <= addr_count + 1; -- Increment counter normally
                            addr_count_4 <= addr_count sll 2; -- This is the bit shifted value
                            bram_we      <= '0'; -- Not enabled yet
                            -- Change state to enable write:
                            dac_state    <= dac_s_write;
                        else
                            dac_state <= dac_s_idle; -- BRAM is full. Ignore
                        end if;

                    elsif (pulse_in_r1 = '1' and pulse_in_r2 = '0' and control_direction = x"A") then -- Rising edge, but we look for falling. This is for debouncing during rising

                        delay_counter <= (others => '0');
                        dac_state     <= dac_s_debounce;

                        dac_counter <= dac_counter + 1; -- Still increment, counter is running

                    elsif (pulse_in_r1 = '0' and pulse_in_r2 = '1' and control = x"F") then -- Count until falling edge
                        counter     <= std_logic_vector(dac_counter);
                        dac_counter <= (others => '0');

                        -- Update BRAM values:
                        if (addr_count < 128) then
                            bram_data    <= std_logic_vector(dac_counter);
                            bram_addr    <= std_logic_vector(addr_count_4(15 downto 0)); -- use the 2-bit shifted value for address, since we can only write to 0,4,8,C...
                            addr_count   <= addr_count + 1; -- Increment counter normally
                            addr_count_4 <= addr_count sll 2; -- This is the bit shifted value
                            bram_we      <= '0'; -- Not enabled yet
                            -- Change state to enable write:
                            dac_state    <= dac_s_write;
                        else
                            dac_state <= dac_s_idle; -- BRAM is full. Ignore
                        end if;

                    else
                        dac_counter <= dac_counter + 1;
                    end if;

                    counting_flag <= '1';

                    debug <= b"010";

                when dac_s_debounce =>

                    if (delay_counter < delay_count) then
                        delay_counter <= delay_counter + 1;
                    else
                        delay_counter <= (others => '0');
                        dac_state     <= dac_s_count; -- Now go back to counting state, since debounce period is over
                    end if;

                    dac_counter <= dac_counter + 1; -- Keep incrementing the main counter since we are just passing the rising edge

                when dac_s_write =>

                    bram_we <= '1';     -- Enable write for one clock cycle now that data is stable

                    dac_state <= dac_s_idle;

                    debug <= b"011";

                when others =>

                    dac_state     <= dac_s_idle;
                    counting_flag <= '0';
                    dac_counter   <= (others => '0');

                    debug <= (others => '0');

            end case;

        end if;
    end process;

end rtl;
