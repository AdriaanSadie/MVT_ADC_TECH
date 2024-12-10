----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2024 13:27:01
-- Design Name: 
-- Module Name: i2c_tb - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2c_tb is
end i2c_tb;

architecture Behavioral of i2c_tb is

  constant CLK_FREQ              : integer := 200_000_000;
  constant C_CLOCKS_PER_HALF_BIT : integer := 1000;

  signal stim_zeros    : std_logic_vector(31 downto 0) := (others => '0');

  -- Global signals:
  signal clk_in : std_logic := '1';
  signal rst_n  : std_logic;

  -- AXI GPIO signals:
  signal axi_gpio_in : std_logic_vector(31 downto 0);

  -- I2C signals:
  signal scl : std_logic;
  signal sda : std_logic;

begin

  i2c : entity work.i2c(rtl)
    generic map(
      C_CLOCKS_PER_HALF_BIT => C_CLOCKS_PER_HALF_BIT
    )
    port map
    (
      clk_in      => clk_in,
      rst_n       => rst_n,
      axi_gpio_in => axi_gpio_in,
      scl         => scl,
      sda         => sda
    );

  clk_in <= not clk_in after 5 ns;

  stim_p : process
  begin
    rst_n <= '0';

    -- Setup GPIO word:
    axi_gpio_in <= stim_zeros;

    wait for 10 us;
    rst_n <= '1';

    wait for 10 us;

    -- Create write transaction
    -- ----------------------------------
    --
    -- Command byte: 65
    -- Data upper : 43
    -- Data lower : 21
    --
    axi_gpio_in <= x"80654321";

    wait for 1 ms;

    -- Reset GPIO word:
    axi_gpio_in <= stim_zeros;
    -----------------------------------

    wait for 100 us;

    -- Create write transaction
    -- ----------------------------------
    --
    -- Command byte: 12
    -- Data upper : 34
    -- Data lower : 56
    --
    axi_gpio_in <= x"80123456";
    wait;


  end process;

end Behavioral;
