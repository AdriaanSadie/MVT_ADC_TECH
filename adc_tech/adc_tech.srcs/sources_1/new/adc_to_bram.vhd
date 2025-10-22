----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2025 11:48:33
-- Design Name: 
-- Module Name: adc_to_bram - rtl
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
-- 
-- 
-- Each 4 bit nibble gets packed into a whole word before being written to BRAM,
-- from LSB to MSB.
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_to_bram is
    port(
        -- Globals:
        clk         : in  std_logic;
        rst_n       : in  std_logic;
        -- Control input:
        axi_gpio_in : in  std_logic_vector(31 downto 0);
        -- ADC input:
        adc_in      : in  std_logic_vector(3 downto 0);
        -- BRAM signals:
        bram_data   : out std_logic_vector(31 downto 0);
        bram_addr   : out std_logic_vector(15 downto 0);
        bram_we     : out std_logic;
        bram_done   : out std_logic
    );
end adc_to_bram;

architecture rtl of adc_to_bram is

    -- State machine signals:
    type   adc_state_type is (adc_s_idle, adc_s_load, adc_s_write);
    signal adc_state      : adc_state_type;

    type   acq_state_type is (acq_s_idle, acq_s_acquire);
    signal acq_state      : acq_state_type;

    -- Counter to pack each nibble into full word:
    signal nibble_counter : integer range 0 to 8;

    -- Internal register to fill up before loading onto BRAM:
    signal bram_data_i  : std_logic_vector(31 downto 0);
    signal bram_data_i1 : std_logic_vector(31 downto 0);

    -- BRAM counters:
    signal addr_count   : unsigned(31 downto 0);
    signal addr_count_4 : unsigned(31 downto 0);

    -- Registers for double flopping:
    signal axi_gpio_in_r1 : std_logic_vector(31 downto 0);
    signal axi_gpio_in_r2 : std_logic_vector(31 downto 0);

    -- Flag to load data to BRAM:
    signal load_bram    : std_logic;
    signal load_bram_r1 : std_logic;
    signal load_bram_r2 : std_logic;    -- Add two registers so I can delay it with one clock cycle, so data is stable in second process;

begin

    acquisition_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then

            nibble_counter <= 0;

            bram_data_i <= (others => '0');
            bram_data_i1 <= (others => '0');

            axi_gpio_in_r1 <= (others => '0');
            axi_gpio_in_r2 <= (others => '0');

            acq_state <= acq_s_idle;

            load_bram <= '0';

        elsif (rising_edge(clk)) then

            axi_gpio_in_r1 <= axi_gpio_in;
            axi_gpio_in_r2 <= axi_gpio_in_r1;

            case acq_state is

                when acq_s_idle =>

                    if (axi_gpio_in_r1(31) = '1' and axi_gpio_in_r2(31) = '0') then
                        acq_state <= acq_s_acquire;
                    else
                        acq_state <= acq_s_idle;
                    end if;

                    nibble_counter <= 0;

                when acq_s_acquire =>

                    bram_data_i(nibble_counter * 4 + 3 downto nibble_counter * 4) <= adc_in;

                    nibble_counter <= nibble_counter + 1;

                    if (nibble_counter = 7) then
                        nibble_counter <= 0;
                    else
                        load_bram <= '0';
                    end if;

                    if (nibble_counter = 0) then
                        bram_data_i1 <= bram_data_i;
                        load_bram      <= '1';
                    else
                        load_bram      <= '0';
                    end if;

                when others =>

            end case;

        end if;
    end process;

    write_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then

            adc_state <= adc_s_idle;

            bram_data <= (others => '0');
            bram_addr <= (others => '0');
            bram_we   <= '0';

            addr_count   <= (others => '0');
            addr_count_4 <= (others => '0');

            bram_done <= '0';

            

        elsif (rising_edge(clk)) then

            load_bram_r1 <= load_bram;
            load_bram_r2 <= load_bram_r1;

            case adc_state is

                when adc_s_idle =>

                    if (load_bram_r1 = '1' and load_bram_r2 = '0') then
                        adc_state    <= adc_s_load;
                    else
                        adc_state <= adc_s_idle;
                    end if;

                    bram_we <= '0';

                when adc_s_load =>

                    if (addr_count < 128) then

                        -- Load data and address:
                        bram_data <= bram_data_i1;
                        bram_addr <= std_logic_vector(addr_count_4(15 downto 0));

                        addr_count   <= addr_count + 1; -- Increment counter normally
                        addr_count_4 <= addr_count sll 2; -- This is the bit shifted value

                        adc_state <= adc_s_write;

                    else
                        bram_done <= '1';
                        adc_state <= adc_s_idle;
                    end if;

                    bram_we <= '0';     -- still low to have data stable at next clock cycle

                when adc_s_write =>

                    bram_we <= '1';

                    adc_state <= adc_s_idle;

                when others =>

            end case;

        end if;
    end process;

end rtl;
