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
        pulse_in      : in  std_logic;  -- Long slope/Triangle wave input pulse
        control       : in  std_logic_vector(31 downto 0); -- Control input from another AXI GPIO register
        counting_flag : out std_logic;  -- Toggle this flag as soon as triangle wave triggers rising edge
        counter       : out std_logic_vector(31 downto 0); -- Output to AXI GPIO register
        debug         : out std_logic_vector(2 downto 0)
    );
end dac_cal;

architecture rtl of dac_cal is

    -- Synchronisation registers (double-flopping):
    signal sync_in_r1  : std_logic;
    signal sync_in_r2  : std_logic;
    signal pulse_in_r1 : std_logic;
    signal pulse_in_r2 : std_logic;

    -- State machine signals:
    type   dac_state_type is (dac_s_idle, dac_s_count);
    signal dac_state      : dac_state_type;

    -- Counter signal:
    signal dac_counter : unsigned(31 downto 0);

begin

    sync_p : process(clk,rst_n) is
    begin
        if (rst_n = '0' and control = x"FFFFFFFF") then

            sync_in_r1 <= '0';
            sync_in_r2 <= '0';

        elsif (rising_edge(clk)) then

            sync_in_r1 <= sync_in;
            sync_in_r2 <= sync_in_r1;

            pulse_in_r1 <= pulse_in;
            pulse_in_r2 <= pulse_in_r1;

        end if;
    end process;

    counter_p : process(clk,rst_n) is
    begin
        if (rst_n = '0' and control = x"FFFFFFFF") then

            counter       <= (others => '0');
            counting_flag <= '0';
            dac_counter   <= (others => '0');
            dac_state     <= dac_s_idle;

            debug <= (others => '0');

        elsif (rising_edge(clk)) then

            case dac_state is

                when dac_s_idle =>

                    -- Check for rising edge on sync input
                    if (sync_in_r1 = '1' and sync_in_r2 = '0') then
                        dac_state     <= dac_s_count;
                        counting_flag <= '1';
                    else
                        dac_state <= dac_s_idle;
                    end if;

                    counting_flag <= '0';

                    debug <= b"001";

                when dac_s_count =>

                    -- Check for rising edge in triangle wave:
                    if (pulse_in_r1 = '1' and pulse_in_r2 = '0') then
                        counter     <= std_logic_vector(dac_counter);
                        dac_state   <= dac_s_idle;
                        dac_counter <= (others => '0');
                    else
                        dac_counter <= dac_counter + 1;
                    end if;

                    counting_flag <= '1';

                    debug <= b"010";

                when others =>

                    dac_state <= dac_s_idle;
                    counting_flag <= '0';
                    dac_counter <= (others => '0');

                    debug <= (others => '0');

            end case;

        end if;
    end process;

end rtl;
