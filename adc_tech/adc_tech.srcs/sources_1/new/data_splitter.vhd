----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2024 11:11:12
-- Design Name: 
-- Module Name: data_splitter - rtl
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_splitter is
  Port ( 
    port_in : in std_logic_vector(31 downto 0);
    port_out0 : out std_logic;
    port_out1 : out std_logic;
    port_out2 : out std_logic;
    port_out3 : out std_logic
  
  );
end data_splitter;

architecture rtl of data_splitter is

begin

    port_out0 <= not port_in(0);
    port_out1 <= not port_in(1);
    port_out2 <= not port_in(2);
    port_out3 <= not port_in(3);

end rtl;
