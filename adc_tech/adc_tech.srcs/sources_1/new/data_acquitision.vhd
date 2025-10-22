----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2025 11:13:39
-- Design Name: 
-- Module Name: data_acquitision - rtl
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_acquitision is
    port(
        -- Globals:
        clk          : in  std_logic;
        rst_n        : in  std_logic;
        -- Data in:
        adc_frontend : in  std_logic_vector(15 downto 0);
        -- Data out:
        adc_encoded  : out std_logic_vector(3 downto 0)
    );
end data_acquitision;

architecture rtl of data_acquitision is

begin

    encoder_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then

            adc_encoded <= (others => '0');

        elsif (rising_edge(clk)) then

            case adc_frontend is

                when x"0000" =>
                    adc_encoded <= x"0";
                when x"0001" =>
                    adc_encoded <= x"1";
                when x"0003" =>
                    adc_encoded <= x"2";
                when x"0007" =>
                    adc_encoded <= x"3";
                when x"000F" =>
                    adc_encoded <= x"4";
                when x"001F" =>
                    adc_encoded <= x"5";
                when x"003F" =>
                    adc_encoded <= x"6";
                when x"007F" =>
                    adc_encoded <= x"7";
                when x"00FF" =>
                    adc_encoded <= x"8";
                when x"01FF" =>
                    adc_encoded <= x"9";
                when x"03FF" =>
                    adc_encoded <= x"A";
                when x"07FF" =>
                    adc_encoded <= x"B";
                when x"0FFF" =>
                    adc_encoded <= x"C";
                when x"1FFF" =>
                    adc_encoded <= x"D";
                when x"3FFF" =>
                    adc_encoded <= x"E";
                when x"7FFF" =>
                    adc_encoded <= x"F";
                when x"FFFF" =>
                    adc_encoded <= x"F"; -- Last bit encoding is useless. Will set input max to 1.6V
                when others =>

            end case;

        end if;
    end process;

end rtl;
