----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.10.2025 09:24:05
-- Design Name: 
-- Module Name: i2c_master - rtl
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
-- CTRL CLK
-- I2C CLK
-- SDA
--   ___     ___     ___     ___     ___     ___     ___     ___     ___     ___     ___     ___     ___     ___
--__|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___|   |___
--   _______         _______         _______         _______         _______         _______         _______         
--__|       |_______|       |_______|       |_______|       |_______|       |_______|       |_______|       |_______
--______         _______________         _______________________         _______                 ___________________
--      |_______|               |_______|                       |_______|       |_______________|
--
--  1       0       1       1       0       1       1       1       0       1       0       0       1       1
--
--
-- Control clock runs at X2 the I2C clk speed. Using the control clock and the level of I2C clk, we can 
-- ensure that SDA data transitions only happen halway during a low state of the I2C clock. The data is therefore 
-- stable during the whole rising edge.
--
--
-- Control register mapping:
--
-- [ BITS   ]   -- [ Description            ]
--
-- [ 31		]   -- [ Trigger Bit            ]	(Rising edge triggers write transaction)
-- [ 30     ]   -- [ Read/Write             ]	(Write = 0, Read = 1)
-- [ 29:25	]   -- [ Reserved				]
-- [ 24 ]       -- [ 0: DAC 0, 1: DAC 1]
-- [ 23:16  ]   -- [ DAC Command          	]
-- [ 15:8   ]   -- [ Data MSB			    ]
-- [ 7:0    ]   -- [ Data LSB           	]
----------------------------------------------------------------------------------
--
--
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2c_master is
    generic(
        INPUT_CLOCK_FREQ : integer := 200_000_000;
        I2C_CLOCK_FREQ   : integer := 50_000
    );
    port(
        -- global signals:
        clk          : in    std_logic;
        rst_n        : in    std_logic;
        -- control interface:
        axi_gpio_in  : in    std_logic_vector(31 downto 0);
        -- Output interface:
        axi_gpio_out : out   std_logic_vector(31 downto 0);
        -- I2C interface:
        sda          : inout std_logic;
        scl          : out   std_logic;
        -- Tristate logic:
        sda_en       : out std_logic
    );
end i2c_master;

architecture rtl of i2c_master is

    -- Control clock signals:
    signal   ctrl_clk         : std_logic;
    constant CTRL_CLK_MAX     : integer := (INPUT_CLOCK_FREQ / I2C_CLOCK_FREQ / 4) - 1; -- Half of the counts for rising, half for falling, 2X faster than I2C clk
    signal   ctrl_clk_counter : unsigned(31 downto 0);

    -- I2C clock signals:
    constant I2C_CLK_MAX     : integer := (INPUT_CLOCK_FREQ / I2C_CLOCK_FREQ / 2) - 1;
    signal   i2c_clk_counter : unsigned(31 downto 0);

    -- Internal I2C signals:
    signal sda_r           : std_logic; -- this one has actual SDA data loaded onto it
    signal scl_r           : std_logic; -- in contrast to SDA, this is more like an active flag
    signal scl_active      : std_logic;
    signal scl_freerunning : std_logic;
    signal read_flag       : std_logic;
    signal i2c_read_clk    : std_logic;
    signal sda_en_i        : std_logic;

    -- I2C internal registers for data and address:
    signal i2c_address_byte       : std_logic_vector(7 downto 0);
    signal i2c_cmd_byte           : std_logic_vector(7 downto 0);
    signal i2c_data_msb           : std_logic_vector(7 downto 0);
    signal i2c_data_lsb           : std_logic_vector(7 downto 0);
    signal i2c_shift_counter      : integer range 0 to 8;
    signal i2c_shift_read_counter : integer range 0 to 8;

    -- I2C shift registers to read data back:
    signal i2c_cmd_read_byte      : std_logic_vector(7 downto 0);
    signal i2c_msb_data_read_byte : std_logic_vector(7 downto 0);
    signal i2c_lsb_data_read_byte : std_logic_vector(7 downto 0);

    -- Delay signals between bytes:
    signal   delay_counter   : unsigned(4 downto 0);
    constant DELAY_COUNT_MAX : integer := 5;

    -- Control signal registers:
    signal axi_gpio_in_r1 : std_logic_vector(31 downto 0);
    signal axi_gpio_in_r2 : std_logic_vector(31 downto 0);
    signal axi_gpio_in_r3 : std_logic_vector(31 downto 0);

    -- State machine signals:
    type   i2c_state_type is (
        i2c_s_idle,
        i2c_s_start,
        i2c_s_delay1,
        i2c_s_write_address,
        i2c_s_ack1,
        i2c_s_delay2,
        i2c_s_cmd,
        i2c_s_ack2,
        i2c_s_delay3,
        i2c_s_data_msb,
        i2c_s_ack3,
        i2c_s_delay4,
        i2c_s_data_lsb,
        i2c_s_ack4,
        i2c_s_delay5,
        i2c_s_stop
    );
    signal i2c_state      : i2c_state_type;

begin

    sda <= sda_r when sda_en_i = '1' else 'Z';

    sda_en <= sda_en_i;

    scl <= '1' when scl_active = '0' else
           scl_r and scl_freerunning;

    i2c_read_clk <= '1' when scl_active = '0' else
           scl_r and scl_freerunning;

    ctrl_clk_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then
            ctrl_clk         <= '1';
            ctrl_clk_counter <= (others => '0');
        elsif (rising_edge(clk)) then
            if (ctrl_clk_counter < CTRL_CLK_MAX) then
                ctrl_clk_counter <= ctrl_clk_counter + 1;
            else
                ctrl_clk         <= not ctrl_clk;
                ctrl_clk_counter <= (others => '0');
            end if;
        end if;
    end process;

    i2c_clk_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then
            scl_freerunning <= '1';
            i2c_clk_counter <= (others => '0');
        elsif (rising_edge(clk)) then
            if (i2c_clk_counter < I2C_CLK_MAX) then
                i2c_clk_counter <= i2c_clk_counter + 1;
            else
                i2c_clk_counter <= (others => '0');
                scl_freerunning <= not scl_freerunning;
            end if;
        end if;
    end process;

    i2c_p : process(ctrl_clk, rst_n) is
    begin
        if (rst_n = '0') then

            axi_gpio_in_r1 <= (others => '0');
            axi_gpio_in_r2 <= (others => '0');
            axi_gpio_in_r3 <= (others => '0');

            i2c_state <= i2c_s_idle;

            i2c_address_byte <= x"AC";  -- Write to DAC 0 by default
            i2c_cmd_byte     <= (others => '0');
            i2c_data_msb     <= (others => '0');
            i2c_data_lsb     <= (others => '0');

            scl_r <= '1';
            sda_r <= '1';

            scl_active <= '0';

            delay_counter <= (others => '0');

            i2c_shift_counter <= 8;

            read_flag <= '0';

            sda_en_i <= '1';

        elsif (falling_edge(ctrl_clk)) then -- Only transition on the control clock falling edge to fall within spec

            -- Double register incoming control register:
            axi_gpio_in_r1 <= axi_gpio_in;
            axi_gpio_in_r2 <= axi_gpio_in_r1;
            axi_gpio_in_r3 <= axi_gpio_in_r2;

            -- No transitions happen unless halfway during low state of I2C clock
            -- However, if you don't include the i2c_s_idle check, it will miss all rising edges detected during a high
            -- state of the scl_freerunning clock
            if (scl_freerunning = '0' or i2c_state = i2c_s_idle) then

                case i2c_state is

                    when i2c_s_idle =>

                        if (axi_gpio_in_r2(31) = '1' and axi_gpio_in_r3(31) = '0') then -- Rising edge

                            -- Go to next state and clock in all information for transaction:
                            i2c_state <= i2c_s_start;

                            i2c_cmd_byte <= axi_gpio_in_r2(23 downto 16);
                            i2c_data_msb <= axi_gpio_in_r2(15 downto 8);
                            i2c_data_lsb <= axi_gpio_in_r2(7 downto 0);

                            if (axi_gpio_in_r2(24) = '0' and axi_gpio_in_r2(30) = '0') then
                                i2c_address_byte <= x"AC"; -- Write to DAC 0       
                                read_flag        <= '0';
                            elsif (axi_gpio_in_r2(24) = '0' and axi_gpio_in_r2(30) = '1') then
                                i2c_address_byte <= x"AD"; -- Read from DAC 0
                                read_flag        <= '1';
                            elsif (axi_gpio_in_r2(24) = '1' and axi_gpio_in_r2(30) = '0') then
                                i2c_address_byte <= x"A8"; -- Write to DAC 1
                                read_flag        <= '0';
                            elsif (axi_gpio_in_r2(24) = '1' and axi_gpio_in_r2(30) = '1') then
                                i2c_address_byte <= x"A9"; -- Read from DAC 1
                                read_flag        <= '1';
                            else
                            --i2c_state <= i2c_s_idle;
                            end if;

                            -- Start start bit by pulling SDA low:
                            sda_r <= '0';

                        else
                            i2c_state <= i2c_s_idle;

                            sda_r <= '1';
                        end if;

                    when i2c_s_start =>

                        sda_en_i <= '1';

                        scl_active    <= '1';
                        scl_r         <= '0';
                        i2c_state     <= i2c_s_delay1;
                        delay_counter <= (others => '0');

                    when i2c_s_delay1 =>

                        sda_r <= '1';

                        if (delay_counter < DELAY_COUNT_MAX) then
                            delay_counter <= delay_counter + 1;
                        else
                            delay_counter <= (others => '0');
                            i2c_state     <= i2c_s_write_address;
                        end if;

                    when i2c_s_write_address =>

                        scl_r <= '1';

                        if (i2c_shift_counter > 0) then
                            sda_r             <= i2c_address_byte(i2c_shift_counter - 1);
                            i2c_shift_counter <= i2c_shift_counter - 1;
                        else
                            --Reset shift register
                            i2c_shift_counter <= 8;
                            i2c_state         <= i2c_s_ack1;

                            -- Also pull SDA into high impedance now, since ACK state is one clock cycle away:
                            sda_r <= 'Z';
                            sda_en_i <= '0';
                        end if;

                    when i2c_s_ack1 =>

                        i2c_state     <= i2c_s_delay2;
                        delay_counter <= (others => '0');
                        scl_r         <= '0';

                        if (read_flag = '0') then
                            sda_r         <= '1';
                            sda_en_i <= '1';
                        else
                            -- sda_r         <= 'Z';
                            sda_en_i <= '0';
                        end if;

                    -- ############################### Remember to add secondary process with flag from here to read ACKs

                    when i2c_s_delay2 =>

                        if (delay_counter < DELAY_COUNT_MAX) then
                            delay_counter <= delay_counter + 1;
                        else
                            delay_counter     <= (others => '0');
                            i2c_state         <= i2c_s_cmd;
                            i2c_shift_counter <= 8;
                        end if;

                    when i2c_s_cmd =>

                        scl_r <= '1';

                        if (read_flag = '0') then

                            if (i2c_shift_counter > 0) then
                                sda_r             <= i2c_cmd_byte(i2c_shift_counter - 1);
                                i2c_shift_counter <= i2c_shift_counter - 1;
                            else
                                --Reset shift register
                                i2c_shift_counter <= 8;
                                i2c_state         <= i2c_s_ack2;

                                -- Also pull SDA into high impedance now, since ACK state is one clock cycle away:
                                sda_r <= 'Z';

                            end if;

                        else

                            if (i2c_shift_counter > 0) then
                                sda_r             <= 'Z';
                                --i2c_cmd_read_byte(i2c_shift_counter - 1)  <= sda;
                                i2c_shift_counter <= i2c_shift_counter - 1;
                            else
                                --Reset shift register
                                i2c_shift_counter <= 8;
                                i2c_state         <= i2c_s_ack2;
                                sda_en_i <= '1';
                                sda_r             <= '0'; -- Pull low for ACK
                            end if;

                        end if;

                    when i2c_s_ack2 =>

                        i2c_state     <= i2c_s_delay3;
                        delay_counter <= (others => '0');
                        scl_r         <= '0';

                        if (read_flag = '0') then
                            sda_r         <= '1';
                        else
                            --sda_r         <= 'Z';
                            sda_en_i <= '0';
                        end if;

                    when i2c_s_delay3 =>

                        if (delay_counter < DELAY_COUNT_MAX) then
                            delay_counter <= delay_counter + 1;
                        else
                            delay_counter     <= (others => '0');
                            i2c_state         <= i2c_s_data_msb;
                            i2c_shift_counter <= 8;
                        end if;

                    when i2c_s_data_msb =>

                        scl_r <= '1';

                        if (read_flag = '0') then

                            if (i2c_shift_counter > 0) then
                                sda_r             <= i2c_data_msb(i2c_shift_counter - 1);
                                i2c_shift_counter <= i2c_shift_counter - 1;
                            else
                                --Reset shift register
                                i2c_shift_counter <= 8;
                                i2c_state         <= i2c_s_ack3;

                                -- Also pull SDA into high impedance now, since ACK state is one clock cycle away:
                                sda_r <= 'Z';

                            end if;

                        else

                            if (i2c_shift_counter > 0) then
                                sda_r             <= 'Z';
                                --i2c_msb_data_read_byte(i2c_shift_counter - 1)  <= sda;
                                i2c_shift_counter <= i2c_shift_counter - 1;
                            else
                                --Reset shift register
                                i2c_shift_counter <= 8;
                                i2c_state         <= i2c_s_ack3;
                                sda_en_i <= '1';
                                sda_r             <= '0'; -- Pull low for ACK
                            end if;

                        end if;

                    when i2c_s_ack3 =>

                        i2c_state     <= i2c_s_delay4;
                        delay_counter <= (others => '0');
                        scl_r         <= '0';

                        if (read_flag = '0') then
                            sda_r         <= '1';
                        else
                            -- sda_r         <= 'Z';
                            sda_en_i <= '0';
                        end if;

                    when i2c_s_delay4 =>

                        if (delay_counter < DELAY_COUNT_MAX) then
                            delay_counter <= delay_counter + 1;
                        else
                            delay_counter     <= (others => '0');
                            i2c_state         <= i2c_s_data_lsb;
                            i2c_shift_counter <= 8;
                        end if;

                    when i2c_s_data_lsb =>

                        scl_r <= '1';

                        if (read_flag = '0') then

                            if (i2c_shift_counter > 0) then
                                sda_r             <= i2c_data_lsb(i2c_shift_counter - 1);
                                i2c_shift_counter <= i2c_shift_counter - 1;
                            else
                                --Reset shift register
                                i2c_shift_counter <= 8;
                                i2c_state         <= i2c_s_ack4;

                                -- Also pull SDA into high impedance now, since ACK state is one clock cycle away:
                                sda_r <= 'Z';

                            end if;

                        else

                            if (i2c_shift_counter > 0) then
                                sda_r             <= 'Z';
                                --i2c_lsb_data_read_byte(i2c_shift_counter - 1)  <= sda;
                                i2c_shift_counter <= i2c_shift_counter - 1;
                            else
                                --Reset shift register
                                i2c_shift_counter <= 8;
                                i2c_state         <= i2c_s_ack4;
                                sda_en_i <= '1';
                                sda_r             <= '0'; -- Pull low for ACK
                            end if;

                        end if;

                    when i2c_s_ack4 =>

                        i2c_state     <= i2c_s_delay5;
                        delay_counter <= (others => '0');
                        scl_r         <= '0';

                        if (read_flag = '0') then
                            sda_r         <= '1';
                        else
                            sda_r         <= 'Z';
                        end if;

                    when i2c_s_delay5 =>

                        if (delay_counter < DELAY_COUNT_MAX) then
                            delay_counter <= delay_counter + 1;
                        else
                            delay_counter     <= (others => '0');
                            i2c_state         <= i2c_s_stop;
                            scl_r             <= '0'; -- Here the SCL must be 0 going out of delay for the stop condition
                            i2c_shift_counter <= 8;

                            -- Start by pulling SDA low here for the stop condition:
                            sda_r <= '0';

                        end if;

                    when i2c_s_stop =>

                        scl_active <= '0';

                        -- Create one clock cycle delay for stop bit:
                        if (delay_counter < 1) then
                            delay_counter <= delay_counter + 1;

                        else
                            delay_counter <= (others => '0');
                            i2c_state     <= i2c_s_idle;
                            sda_r         <= '1';

                        end if;

                    when others =>

                        i2c_state <= i2c_s_idle;

                end case;

            else

            end if;

        end if;
    end process;

    i2c_read_p : process(i2c_read_clk, rst_n) is
    begin
        if (rst_n = '0') then

            i2c_shift_read_counter <= 8;

            i2c_cmd_read_byte      <= (others => '0');
            i2c_msb_data_read_byte <= (others => '0');
            i2c_lsb_data_read_byte <= (others => '0');

            axi_gpio_out <= (others => '0');

        elsif (rising_edge(i2c_read_clk)) then

            if (read_flag = '1') then

                case i2c_state is

                    when i2c_s_cmd =>

                        if (i2c_shift_read_counter > 0) then
                            i2c_cmd_read_byte(i2c_shift_read_counter - 1) <= sda;
                            i2c_shift_read_counter                        <= i2c_shift_read_counter - 1;
                        else
                            --Reset shift register
                            i2c_shift_read_counter <= 8;
                        end if;

                    when i2c_s_data_msb =>

                        if (i2c_shift_read_counter > 0) then
                            i2c_msb_data_read_byte(i2c_shift_read_counter - 1) <= sda;
                            i2c_shift_read_counter                             <= i2c_shift_read_counter - 1;
                        else
                            --Reset shift register
                            i2c_shift_read_counter <= 8;
                        end if;

                    when i2c_s_data_lsb =>

                        if (i2c_shift_read_counter > 0) then
                            i2c_lsb_data_read_byte(i2c_shift_read_counter - 1) <= sda;
                            i2c_shift_read_counter                             <= i2c_shift_read_counter - 1;
                        else
                            --Reset shift register
                            i2c_shift_read_counter <= 8;
                        end if;

                    when i2c_s_stop =>

                        -- Load data onto AXI GPIO for output:
                        axi_gpio_out <= x"00" & i2c_cmd_read_byte & i2c_msb_data_read_byte & i2c_lsb_data_read_byte;

                    when others =>

                end case;

            end if;

        end if;
    end process;

end rtl;
