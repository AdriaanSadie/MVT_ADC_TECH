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
-- [ 29:25	]   -- [ Reserved				]
-- [ 24 ]     -- [ 0: DAC 0, 1: DAC 1]
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
  generic(
    C_CLOCKS_PER_HALF_BIT : integer := 1000 -- 2000 clocks for a 100_000 kHz I2C clock, half is 1000 @ 200 MHz input clock
  );
  port(
    clk_in             : in    std_logic;
    rst_n              : in    std_logic;
    axi_gpio_in        : in    std_logic_vector(31 downto 0);
    scl                : out   std_logic;
    sda                : inout std_logic;
    debug              : out   std_logic_vector(2 downto 0);
    internal_axi_gpio1 : out   std_logic_vector(31 downto 0);
    internal_axi_gpio2 : out   std_logic_vector(31 downto 0)
  );
end i2c;

architecture rtl of i2c is

  -- I2C shift registers:
  signal dac_address  : std_logic_vector(7 downto 0) := x"A8";
  signal dac_command  : std_logic_vector(7 downto 0);
  signal dac_data_msb : std_logic_vector(7 downto 0);
  signal dac_data_lsb : std_logic_vector(7 downto 0);

  -- State machine signals:
  type   i2c_state_type is (i2c_s_idle, i2c_s_write, i2c_s_read); -- Could possibly add read later
  signal i2c_state      : i2c_state_type;

  -- Registers for double-flopping the GPIO input:
  signal axi_gpio_in_reg1 : std_logic_vector(31 downto 0);
  signal axi_gpio_in_reg2 : std_logic_vector(31 downto 0);

  -- I2C signals:
  signal i2c_clk         : std_logic;
  signal i2c_clk_counter : integer range 0 to C_CLOCKS_PER_HALF_BIT - 1;
  signal sda_out         : std_logic;
  signal sda_out_r       : std_logic;

  -- I2C Control Flags:
  signal scl_write : std_logic;
  signal sda_write : std_logic;
  signal sda_read  : std_logic;
  signal scl_en    : std_logic;

  -- Constant time windows for i2c process tracker:
  constant C_ADDRESS_LEN  : integer := 8;
  constant C_COMMAND_LEN  : integer := 8;
  constant C_DATA_MSB_LEN : integer := 8;
  constant C_DATA_LSB_LEN : integer := 8;
  constant C_START_LEN    : integer := 1;
  constant C_STOP_LEN     : integer := 1;
  constant C_ACK_LEN      : integer := 1;

  constant C_COMMAND_REG_START : integer := C_START_LEN + C_ACK_LEN + C_ADDRESS_LEN; -- 1 + 1 + 8 = 10
  constant C_COMMAND_REG_END   : integer := C_COMMAND_REG_START + C_COMMAND_LEN - 1; -- 10 + 8 - 1 = 17
  constant C_DATA_MSB_START    : integer := C_COMMAND_REG_END + 2; -- 17 + 2 = 19
  constant C_DATA_MSB_END      : integer := C_DATA_MSB_START + C_DATA_MSB_LEN - 1; -- 19 + 8 - 1 = 26
  constant C_DATA_LSB_START    : integer := C_DATA_MSB_END + 2; -- 28
  constant C_DATA_LSB_END      : integer := C_DATA_LSB_START + C_DATA_LSB_LEN - 1; -- 28 + 8 - 1 = 35

  -- Shift register counter:
  signal i2c_shift_reg_counter   : integer range 0 to 8;
  signal i2c_shift_reg_counter_r : integer range 0 to 8;

  -- Manager signals:
  -- Write:
  constant i2c_write_clocks  : integer := C_START_LEN + C_ADDRESS_LEN + C_COMMAND_LEN + C_DATA_MSB_LEN + C_DATA_LSB_LEN + C_STOP_LEN + C_ACK_LEN * 4;
  signal   i2c_write_tracker : integer range 0 to i2c_write_clocks;

  signal i2c_start_flag          : std_logic;
  signal i2c_ack_flag            : std_logic;
  signal i2c_write_address_flag  : std_logic;
  signal i2c_write_command_flag  : std_logic;
  signal i2c_write_data_msb_flag : std_logic;
  signal i2c_write_data_lsb_flag : std_logic;
  signal i2c_write_stop_flag     : std_logic;

  -- Read:
  constant i2c_read_clocks  : integer := C_START_LEN + C_ADDRESS_LEN + C_COMMAND_LEN + C_DATA_MSB_LEN + C_DATA_LSB_LEN + C_STOP_LEN + C_ACK_LEN * 4;
  signal   i2c_read_tracker : integer range 0 to i2c_read_clocks;

  signal i2c_start_flag_r          : std_logic;
  signal i2c_ack_flag_r            : std_logic;
  signal i2c_ack_flag_master_r     : std_logic;
  signal i2c_write_address_flag_r  : std_logic;
  signal i2c_write_command_flag_r  : std_logic;
  signal i2c_write_data_msb_flag_r : std_logic;
  signal i2c_write_data_lsb_flag_r : std_logic;
  signal i2c_write_stop_flag_r     : std_logic;

begin

  -- Set scl and sda outputs
  --scl <= i2c_clk when ((scl_write = '1')) else
  --  '1' when (scl_en = '1') else
  --  '0';

  internal_axi_gpio1 <= axi_gpio_in_reg1;
  internal_axi_gpio2 <= axi_gpio_in_reg2;

  scl <= i2c_clk when ((scl_write = '1')) else
         '1';

  sda <= sda_out when (sda_write = '1') else
         sda_out_r when (sda_read = '1') else
         '1';

  i2c_clock_p : process(clk_in, rst_n) is
  begin
    if (rst_n = '0') then
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

  i2c_manager_p : process(i2c_clk, rst_n) is
  begin
    if (rst_n = '0') then
      -- Reset conditions:
      axi_gpio_in_reg1 <= (others => '0');
      axi_gpio_in_reg2 <= (others => '0');
      i2c_state        <= i2c_s_idle;

      dac_address  <= x"A8";
      dac_command  <= (others => '0');
      dac_data_msb <= (others => '0');
      dac_data_lsb <= (others => '0');

      i2c_start_flag          <= '0';
      i2c_ack_flag            <= '0';
      i2c_write_address_flag  <= '0';
      i2c_write_command_flag  <= '0';
      i2c_write_data_msb_flag <= '0';
      i2c_write_data_lsb_flag <= '0';
      i2c_write_stop_flag     <= '0';

      i2c_start_flag_r          <= '0';
      i2c_ack_flag_r            <= '0';
      i2c_ack_flag_master_r     <= '0';
      i2c_write_address_flag_r  <= '0';
      i2c_write_command_flag_r  <= '0';
      i2c_write_data_msb_flag_r <= '0';
      i2c_write_data_lsb_flag_r <= '0';
      i2c_write_stop_flag_r     <= '0';

      scl_write <= '0';                 -- Always disabled. Only assert when writing
      sda_write <= '0';                 -- Always disabled. Only assert when writing
      sda_read  <= '0';
      scl_en    <= '0';

      i2c_write_tracker <= 0;
      i2c_read_tracker  <= 0;

      debug <= b"000";

    elsif (rising_edge(i2c_clk)) then

      -- Clock in the GPIO input into the registers:
      axi_gpio_in_reg1 <= axi_gpio_in;
      axi_gpio_in_reg2 <= axi_gpio_in_reg1;

      case i2c_state is

        when i2c_s_idle =>

          debug <= b"001";

          -- Check for rising edge in trigger bit of GPIO:
          if (axi_gpio_in_reg1(31) = '1' and axi_gpio_in_reg2(31) = '0') then

            if (axi_gpio_in_reg1(30) = '0') then -- Write

              -- Go to write sequence and enable SCL and SDA lines
              i2c_state <= i2c_s_write;

              -- Load correct device address:
              if (axi_gpio_in_reg1(24) = '0') then
                dac_address <= x"AC";
              elsif (axi_gpio_in_reg1(24) = '1') then
                dac_address <= x"A8";
              else
                dac_address <= x"AC";
              end if;

              -- Load all data:
              dac_data_msb <= axi_gpio_in_reg1(15 downto 8);
              dac_data_lsb <= axi_gpio_in_reg1(7 downto 0);

            elsif (axi_gpio_in_reg1(30) = '1') then -- Read
              i2c_state <= i2c_s_read;

              -- Load correct device address:
              if (axi_gpio_in_reg1(24) = '0') then
                dac_address <= x"AD";
              elsif (axi_gpio_in_reg1(24) = '1') then
                dac_address <= x"A9";
              else
                dac_address <= x"AD";
              end if;


            end if;

            scl_write <= '0';           -- SCL Still high to generate the start condition in write transaction
            sda_write <= '0';
            scl_en    <= '1';           -- Pull high for start condition

            -- Load command:
            dac_command <= axi_gpio_in_reg1(23 downto 16);

          else
            i2c_state <= i2c_s_idle;
          end if;

          i2c_start_flag          <= '0';
          i2c_ack_flag            <= '0';
          i2c_write_address_flag  <= '0';
          i2c_write_command_flag  <= '0';
          i2c_write_data_msb_flag <= '0';
          i2c_write_data_lsb_flag <= '0';
          i2c_write_stop_flag     <= '0';

          i2c_start_flag_r          <= '0';
          i2c_ack_flag_r            <= '0';
          i2c_ack_flag_master_r     <= '0';
          i2c_write_address_flag_r  <= '0';
          i2c_write_command_flag_r  <= '0';
          i2c_write_data_msb_flag_r <= '0';
          i2c_write_data_lsb_flag_r <= '0';
          i2c_write_stop_flag_r     <= '0';

        when i2c_s_write =>

          debug <= b"010";

          if (i2c_write_tracker < i2c_write_clocks) then

            -- This case statement tracks the process of a single write transaction:
            case i2c_write_tracker is

              when 0 to C_START_LEN - 1 => -- 0
                -- Start bit

                scl_write <= '0';
                sda_write <= '1';

                -- Manager flags:
                i2c_start_flag          <= '1';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_START_LEN to C_ADDRESS_LEN => -- 1:8
                -- Address byte

                scl_write <= '1';       -- Assert SCL here so that SDA is pulled low before SCL

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '1';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_ADDRESS_LEN + 1 => -- 9
                -- Ack

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '1';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_COMMAND_REG_START to C_COMMAND_REG_END => -- 10:17
                -- Command byte

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '1';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_COMMAND_REG_END + 1 => -- 18
                -- Ack

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '1';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_DATA_MSB_START to C_DATA_MSB_END => --19:26
                -- Data MSB

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '1';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_DATA_MSB_END + 1 => -- 27
                -- Ack

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '1';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_DATA_LSB_START to C_DATA_LSB_END => -- 28:35
                -- Data LSB

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '1';
                i2c_write_stop_flag     <= '0';

              when C_DATA_LSB_END + 1 => -- 36
                -- Ack

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '1';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when C_DATA_LSB_END + 1 + C_STOP_LEN => --37 
                -- Stop bit

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '1';

              when C_DATA_LSB_END + C_STOP_LEN + 2 => --38
                -- Stop bit -- Extra state to get timing of SDA and SCL right

                scl_write <= '0';
                sda_write <= '1';

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

              when others =>

                -- Disable write flags and enable other so it stays high
                scl_write <= '0';
                sda_write <= '0';

                -- Manager flags:
                i2c_start_flag          <= '0';
                i2c_ack_flag            <= '0';
                i2c_write_address_flag  <= '0';
                i2c_write_command_flag  <= '0';
                i2c_write_data_msb_flag <= '0';
                i2c_write_data_lsb_flag <= '0';
                i2c_write_stop_flag     <= '0';

            end case;

            -- Increment write tracker counter:
            i2c_write_tracker <= i2c_write_tracker + 1;

          else
            -- Reset tracker signals and go back to IDLE state:
            i2c_write_tracker <= 0;
            i2c_state         <= i2c_s_idle;

            -- Reset manager signals:
            scl_write <= '0';           -- Disable write flags
            sda_write <= '0';           -- Disable write flags
            scl_en    <= '0';

            -- Reset registers:
            dac_command  <= (others => '0');
            dac_data_msb <= (others => '0');
            dac_data_lsb <= (others => '0');

            -- Reset manager flags:
            i2c_start_flag          <= '0';
            i2c_ack_flag            <= '0';
            i2c_write_address_flag  <= '0';
            i2c_write_command_flag  <= '0';
            i2c_write_data_msb_flag <= '0';
            i2c_write_data_lsb_flag <= '0';
            i2c_write_stop_flag     <= '0';

          end if;

        when i2c_s_read =>

          debug <= b"011";

          if (i2c_read_tracker < i2c_read_clocks) then

            case i2c_read_tracker is

              when 0 to C_START_LEN - 1 => -- 0
                -- Start bit 

                scl_write <= '0';
                sda_read  <= '1';

                i2c_start_flag_r          <= '1';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when C_START_LEN to C_ADDRESS_LEN => -- 1:8
                -- Address byte

                scl_write <= '1';       -- Assert SCL here so that SDA is pulled low before SCL

                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '1';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              -- Manager flags:

              when C_ADDRESS_LEN + 1 => -- 9
                -- Ack

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '1';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when C_COMMAND_REG_START to C_COMMAND_REG_END => -- 10:17
                -- Command byte

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '1';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when C_COMMAND_REG_END + 1 => -- 18
                -- Ack

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '1';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when C_DATA_MSB_START to C_DATA_MSB_END => --19:26
                -- Data MSB

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '1';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when C_DATA_MSB_END + 1 => -- 27
                -- Ack

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '1';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when C_DATA_LSB_START to C_DATA_LSB_END => -- 28:35
                -- Data LSB

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '1';
                i2c_write_stop_flag_r     <= '0';

              when C_DATA_LSB_END + 1 => -- 36
                -- Ack

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '1';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when C_DATA_LSB_END + 1 + C_STOP_LEN => --37 
                -- Stop bit

                -- Manager flags:
                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '1';

              when C_DATA_LSB_END + C_STOP_LEN + 2 => --38
                -- Stop bit -- Extra state to get timing of SDA and SCL right

                scl_write <= '0';
                sda_read  <= '1';

                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

              when others =>

                scl_write <= '0';
                sda_read  <= '0';

                i2c_start_flag_r          <= '0';
                i2c_ack_flag_r            <= '0';
                i2c_ack_flag_master_r     <= '0';
                i2c_write_address_flag_r  <= '0';
                i2c_write_command_flag_r  <= '0';
                i2c_write_data_msb_flag_r <= '0';
                i2c_write_data_lsb_flag_r <= '0';
                i2c_write_stop_flag_r     <= '0';

            end case;

            -- Increment read tracker counter:
            i2c_read_tracker <= i2c_read_tracker + 1;
          else
            -- Reset tracker signals and go back to IDLE state:
            i2c_read_tracker <= 0;
            i2c_state        <= i2c_s_idle;

            -- Reset manager signals:
            scl_write <= '0';           -- Disable write flags
            sda_write <= '0';           -- Disable write flags
            scl_en    <= '0';
            sda_read  <= '0';

            i2c_start_flag_r          <= '0';
            i2c_ack_flag_r            <= '0';
            i2c_ack_flag_master_r     <= '0';
            i2c_write_address_flag_r  <= '0';
            i2c_write_command_flag_r  <= '0';
            i2c_write_data_msb_flag_r <= '0';
            i2c_write_data_lsb_flag_r <= '0';
            i2c_write_stop_flag_r     <= '0';

          end if;

        when others =>

          -- Reset tracker signals and go back to IDLE state:
          i2c_read_tracker <= 0;
          i2c_state        <= i2c_s_idle;

          -- Reset manager signals:
          scl_write <= '0';             -- Disable write flags
          sda_write <= '0';             -- Disable write flags
          scl_en    <= '0';
          sda_read  <= '0';

          i2c_start_flag_r          <= '0';
          i2c_ack_flag_r            <= '0';
          i2c_ack_flag_master_r     <= '0';
          i2c_write_address_flag_r  <= '0';
          i2c_write_command_flag_r  <= '0';
          i2c_write_data_msb_flag_r <= '0';
          i2c_write_data_lsb_flag_r <= '0';
          i2c_write_stop_flag_r     <= '0';

      end case;
    end if;
  end process;

  i2c_write_p : process(i2c_clk, rst_n) is
  begin
    if (rst_n = '0') then
      sda_out               <= '1';
      i2c_shift_reg_counter <= C_ADDRESS_LEN;

    elsif (falling_edge(i2c_clk)) then

      if (i2c_start_flag = '1') then

        -- Pull sda low for the start condition 
        sda_out <= '0';

      elsif (i2c_ack_flag = '1') then

        -- Do nothing. Can consider adding the ACK check later
        sda_out <= 'Z';

        --Reset shift register
        i2c_shift_reg_counter <= C_ADDRESS_LEN;

      elsif (i2c_write_address_flag = '1') then

        --Shift through the address register bit by bit:
        if (i2c_shift_reg_counter > 0) then
          sda_out               <= dac_address(i2c_shift_reg_counter - 1);
          i2c_shift_reg_counter <= i2c_shift_reg_counter - 1;
        else
          --Reset shift register
          i2c_shift_reg_counter <= C_ADDRESS_LEN;
        end if;

      elsif (i2c_write_command_flag = '1') then

        --Shift through the command register bit by bit:
        if (i2c_shift_reg_counter > 0) then
          sda_out               <= dac_command(i2c_shift_reg_counter - 1);
          i2c_shift_reg_counter <= i2c_shift_reg_counter - 1;
        else
          --Reset shift register
          i2c_shift_reg_counter <= C_ADDRESS_LEN;
        end if;

      elsif (i2c_write_data_msb_flag = '1') then

        --Shift through the data msb register bit by bit:
        if (i2c_shift_reg_counter > 0) then
          sda_out               <= dac_data_msb(i2c_shift_reg_counter - 1);
          i2c_shift_reg_counter <= i2c_shift_reg_counter - 1;
        else
          --Reset shift register
          i2c_shift_reg_counter <= C_ADDRESS_LEN;
        end if;

      elsif (i2c_write_data_lsb_flag = '1') then

        --Shift through the data msb register bit by bit:
        if (i2c_shift_reg_counter > 0) then
          sda_out               <= dac_data_lsb(i2c_shift_reg_counter - 1);
          i2c_shift_reg_counter <= i2c_shift_reg_counter - 1;
        else
          --Reset shift register
          i2c_shift_reg_counter <= C_ADDRESS_LEN;
        end if;

      elsif (i2c_write_stop_flag = '1') then

        -- Pull sda high for the stop condition
        sda_out <= '0';

      else
        sda_out               <= '1';
        i2c_shift_reg_counter <= C_ADDRESS_LEN;

      end if;

    end if;

  end process;

  i2c_read_p : process(i2c_clk, rst_n) is
  begin
    if (rst_n = '0') then
      sda_out_r               <= '1';
      i2c_shift_reg_counter_r <= C_ADDRESS_LEN;

    elsif (falling_edge(i2c_clk)) then

      if (i2c_start_flag_r = '1') then

        -- Pull sda low for the start condition 
        sda_out_r <= '0';

      elsif (i2c_ack_flag_r = '1') then
        sda_out_r <= 'Z';

        i2c_shift_reg_counter_r <= C_ADDRESS_LEN;

      elsif (i2c_ack_flag_master_r = '1') then

        sda_out_r <= '0';               -- Have to add check here later #################################

        i2c_shift_reg_counter_r <= C_ADDRESS_LEN;

      elsif (i2c_write_address_flag_r = '1') then

        --Shift through the address register bit by bit:
        if (i2c_shift_reg_counter_r > 0) then
          sda_out_r               <= dac_address(i2c_shift_reg_counter_r - 1);
          i2c_shift_reg_counter_r <= i2c_shift_reg_counter_r - 1;
        else
          --Reset shift register
          i2c_shift_reg_counter_r <= C_ADDRESS_LEN;
        end if;

      elsif (i2c_write_command_flag_r = '1') then

        --Shift through the command register bit by bit:
        --if (i2c_shift_reg_counter_r > 0) then
        --  sda_out_r               <= dac_command(i2c_shift_reg_counter_r - 1);
        --  i2c_shift_reg_counter_r <= i2c_shift_reg_counter_r - 1;
        --else
        --  --Reset shift register
        --  i2c_shift_reg_counter_r <= C_ADDRESS_LEN;
        --end if;

        sda_out_r <= 'Z';

      elsif (i2c_write_data_msb_flag_r = '1') then

        sda_out_r <= 'Z';

      elsif (i2c_write_data_lsb_flag_r = '1') then

        sda_out_r <= 'Z';

      elsif (i2c_write_stop_flag_r = '1') then

        sda_out_r <= '0';

      else

        sda_out_r               <= '1';
        i2c_shift_reg_counter_r <= C_ADDRESS_LEN;

      end if;

    end if;
  end process;

end rtl;
