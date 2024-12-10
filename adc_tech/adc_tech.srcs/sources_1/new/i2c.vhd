----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2024 10:13:42 PM
-- Design Name: 
-- Module Name: i2c - rtl
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
-- AXI GPIO in Register content: 
--
-- [ BITS   ]   -- [ Description            ]
--
-- [ 31		]   -- [ Trigger Bit            ]	(Rising edge triggers write transaction)
-- [ 30     ]   -- [ Read/Write             ]	(Write = 0, Read = 1)
-- [ 29:24	]   -- [ Reserved				]
-- [ 23:16  ]   -- [ DAC Command          	]
-- [ 15:8   ]   -- [ Data MSB			    ]
-- [ 7:0    ]   -- [ Data LSB           	]
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

entity i2c is
  generic (
    C_CLOCKS_PER_HALF_BIT : integer := 1000 -- 2000 clocks for a 100_000 kHz I2C clock, half is 1000 @ 200 MHz input clock
  );
  port (
    clk_in  : in std_logic;
    rst_n   : in std_logic;
    gpio_in : in std_logic_vector (31 downto 0);
    scl     : out std_logic;
    sda     : inout std_logic);
end i2c;

architecture rtl of i2c is

  -- I2C shift registers:
  constant dac_address  : std_logic_vector(7 downto 0) := "deadbeef";
  signal dac_command    : std_logic_vector(7 downto 0);
  signal dac_data_msb   : std_logic_vector(7 downto 0);
  signal dac_data_lsb   : std_logic_vector(7 downto 0);

  -- State machine signals:
  type i2c_state_type is (i2c_s_idle, i2c_s_write); -- Could possibly add read later
  signal i2c_state : i2c_state_type;

  -- Registers for double-flopping the GPIO input:
  signal axi_gpio_in_reg1 : std_logic_vector(31 downto 0);
  signal axi_gpio_in_reg2 : std_logic_vector(31 downto 0);

  -- I2C signals:
  signal i2c_clk         : std_logic;
  signal i2c_clk_counter : integer range 0 to C_CLOCKS_PER_HALF_BIT - 1;
  signal sda_out         : std_logic;

  -- I2C Control Flags:
  signal sda_en    : std_logic;
  signal scl_write : std_logic;
  signal sda_write : std_logic;
  signal scl_en    : std_logic;

  -- Constant time windows for i2c process tracker:
  constant C_ADDRESS_LEN : integer := 8;
  constant C_COMMAND_LEN : integer := 8;
  constant C_DATA_MSB_LEN : integer := 8;
  constant C_DATA_LSB_LEN : integer := 8;
  constant C_START_LEN : integer := 1;
  constant C_STOP_LEN : integer := 1;
  constant C_ACK_LEN : integer := 1;
  
  -- Manager signals:
  constant i2c_write_clocks 	: integer := C_START_LEN + C_ADDRESS_LEN + C_COMMAND_LEN + C_DATA_MSB_LEN + C_DATA_LSB_LEN + C_STOP_LEN + C_ACK_LEN*4;
  signal i2c_write_tracker : integer range 0 to i2c_write_clocks;
  
  
  
  
  
  

begin

  -- Set scl and sda outputs
  scl <= i2c_clk when ((scl_write = '1')) else
    '1' when (scl_en = '1') else
    '0';

  sda <= sda_out when (sda_write = '1') else
    '1';

  i2c_clock_p : process (clk_in, rstn) is
  begin
    if (rstn = '0') then
      i2c_clk         <= '1';
      i2c_clk_counter <= 0;
    elsif (rising_edge(clk_in)) then
      if (i2c_clk_counter < C_CLOCKS_PER_HALF_BIT - 1) then
        i2c_clk_counter <= i2c_clk_counter + 1;
      else
        i2c_clk_counter <= 0;
        i2c_clk         <= not i2c_clk;
      end if;
    end if;
  end process;

  i2c_manager_p : process (i2c_clk, rstn) is
  begin
    if (rstn = '0') then
        -- Reset conditions:
      axi_gpio_in_reg1 <= (others => '0');
      axi_gpio_in_reg2 <= (others => '0');
      i2c_state <= i2c_s_idle;

      dac_command   <= (others => '0');  
      dac_data_msb  <= (others => '0');     
      dac_data_lsb  <= (others => '0'); 

      

    elsif






end rtl;
