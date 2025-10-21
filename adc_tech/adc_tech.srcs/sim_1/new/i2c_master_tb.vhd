library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity i2c_master_tb is
end entity i2c_master_tb;

architecture sim of i2c_master_tb is

    -- Clock and reset
    constant CLK_PERIOD : time := 5 ns;  -- 200 MHz
    signal clk_tb    : std_logic := '0';
    signal rst_n_tb  : std_logic := '0';

    signal axi_gpio_in_tb : std_logic_vector(31 downto 0);
    signal axi_gpio_out_tb : std_logic_vector(31 downto 0);

    signal sda_tb    : std_logic;         -- Bidirectional line
    signal scl_tb    : std_logic;

    signal sda_i    : std_logic;

    signal sda_en_tb    : std_logic;

    type   test_type is (
        write_addres,
        write_command,
        write_msb,
        write_lsb
    );
    signal current_test      : test_type;


begin

    -- =============================================
    -- Clock Generation (200 MHz)
    -- =============================================
    clk_tb <= not clk_tb after CLK_PERIOD/2;

    -- =============================================
    -- DUT Instantiation
    -- =============================================
    DUT: entity work.i2c_master
        generic map (
            INPUT_CLOCK_FREQ => 200_000_000,
            I2C_CLOCK_FREQ   => 50_000
        )
        port map (
            clk    => clk_tb,
            rst_n  => rst_n_tb,
            axi_gpio_in => axi_gpio_in_tb,
            axi_gpio_out => axi_gpio_out_tb,
            sda    => sda_tb,
            scl    => scl_tb,
            sda_en => sda_en_tb
        );

    
    sda_tb <= sda_i when sda_en_tb = '0' else 'Z';


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

        wait for 7 us;

        axi_gpio_in_tb <= x"8030ABCD";

        wait for 2 ms;

        axi_gpio_in_tb <= (others => '0');

        wait for 200 us;

        axi_gpio_in_tb <= x"C1000000";

        -- Detect start condition:
        wait until falling_edge(scl_tb);

        -- Detect full write address (X9 clock pulses):
        wait until rising_edge(scl_tb);
        wait until rising_edge(scl_tb);
        wait until rising_edge(scl_tb);
        wait until rising_edge(scl_tb);
        wait until rising_edge(scl_tb);
        wait until rising_edge(scl_tb);
        wait until rising_edge(scl_tb);
        wait until rising_edge(scl_tb);

        -- Now ACK:
        wait until falling_edge(sda_en_tb);
        sda_i <= '0';

        current_test <= write_command;

        -- Now start writing data onto SDA line: 
        -- Want to Write 0xA3: 0b10100011
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        wait until falling_edge(scl_tb);

        current_test <= write_msb;

        -- Now write 0xB4: 0b10110100
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        wait until falling_edge(scl_tb);

        current_test <= write_lsb;

        -- Now write 0xF6: 0b11110110
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '1';
        wait until falling_edge(scl_tb);
        sda_i <= '0';
        wait until falling_edge(scl_tb);
        wait until falling_edge(scl_tb);
        
        wait;
    end process STIMULUS;

end architecture sim;