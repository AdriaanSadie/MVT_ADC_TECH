----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2025 13:29:04
-- Design Name: 
-- Module Name: adc_to_bram_tb - Behavioral
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
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_to_bram_tb is
end adc_to_bram_tb;

architecture behavioral of adc_to_bram_tb is

    constant CLK_PERIOD : time := 5 ns;  -- 200 MHz

    signal clk_tb         : std_logic := '0';
    signal rst_n_tb       : std_logic := '0';
    -- Control input:
    signal axi_gpio_in_tb : std_logic_vector(31 downto 0);
    -- ADC input:
    signal adc_in_tb      : std_logic_vector(3 downto 0);
    -- BRAM signals:
    signal bram_data_tb   : std_logic_vector(31 downto 0);
    signal bram_addr_tb   : std_logic_vector(15 downto 0);
    signal bram_we_tb     : std_logic;
    signal bram_done_tb   : std_logic;

    -- Signal to stimulate "data":
    signal adc_in_unsigned : unsigned(3 downto 0);


begin

    -- =============================================
    -- Clock Generation (200 MHz)
    -- =============================================
    clk_tb <= not clk_tb after CLK_PERIOD/2;

    -- =============================================
    -- DUT Instantiation
    -- =============================================
    DUT: entity work.adc_to_bram
        port map (
            clk         => clk_tb,
            rst_n       => rst_n_tb,
            -- Control input:
            axi_gpio_in => axi_gpio_in_tb,
            -- ADC input:
            adc_in      => adc_in_tb, 
        -- BRAM signals:
            bram_data   => bram_data_tb, 
            bram_addr   => bram_addr_tb, 
            bram_we     => bram_we_tb,   
            bram_done   => bram_done_tb 
        );


    data_p : process(clk_tb, rst_n_tb) is
    begin
        if (rst_n_tb = '0') then
            adc_in_tb <= (others => '0');
            adc_in_unsigned <= (others => '0');
        elsif (rising_edge(clk_tb)) then
            adc_in_unsigned <= adc_in_unsigned + 1;
            adc_in_tb <= std_logic_vector(adc_in_unsigned);
        end if;
    end process;


    -- =============================================
    -- Stimulus Process
    -- =============================================
    STIMULUS: process
    begin
        -- Initial reset
        rst_n_tb <= '0';
        axi_gpio_in_tb <= (others => '0');
        wait for 20 ns;
        rst_n_tb <= '1';
        wait for 100 us;

        axi_gpio_in_tb <= x"FFFFFFFF";

        wait;
    end process STIMULUS;

end behavioral;
