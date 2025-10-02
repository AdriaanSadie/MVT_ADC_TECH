----------------------------------------------------------------------------------
-- Company: SAAB Grintek Defence
-- Engineer: Neël Swanepoel
-- 
-- Create Date: 01.07.2025 15:35:55
-- Design Name: 
-- Module Name: aurora_stimulator - rtl
-- Project Name: RWR_RFSOC
-- Target Devices: MPSOC Devkit
-- Tool Versions: 2020.2
-- Description: This RTL block will provide dummy data to the Aurora interface for the RWR RFSOC. The data will be fed into the FIFO generator block through the AXI interface.
-- 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aurora_stimulator is
    generic
        (
            DATA_WIDTH : integer := 64

        );
    Port ( 
        -- Flag to start loading Fifo for aurora
        trigger_simultanious : in std_logic;
        trigger_aur0 : in std_logic;
        trigger_aur1 : in std_logic;
        trigger_aur2 : in std_logic;
        trigger_aur3 : in std_logic;
        trigger_aur4 : in std_logic;
        trigger_stream : in std_logic;

        clk_in1 : in std_logic;
        rst_n : in std_logic;

        -- Fifo signals
        fifo_data_aur0 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        fifo_data_aur1 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        fifo_data_aur2 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        fifo_data_aur3 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        fifo_data_aur4 : out std_logic_vector(DATA_WIDTH - 1 downto 0);

        fifo_valid_aur0 : out std_logic;
        fifo_valid_aur1 : out std_logic;
        fifo_valid_aur2 : out std_logic;
        fifo_valid_aur3 : out std_logic;
        fifo_valid_aur4 : out std_logic;


        aurora_power_down : out std_logic:='1';
	    aurora_reset_pb   : out std_logic:='1';
	    aurora_pma_init   : out std_logic:='1'


    );
end aurora_stimulator;

architecture rtl of aurora_stimulator is

    -- Double Flopping
    signal trigger_simultanious_i : std_logic;
    signal trigger_simultanious_i2 : std_logic;

    signal trigger_stream_i : std_logic;
    signal trigger_stream_i2 : std_logic;

    signal trigger_aur0_i : std_logic;
    signal trigger_aur1_i : std_logic;
    signal trigger_aur2_i : std_logic;
    signal trigger_aur3_i : std_logic;
    signal trigger_aur4_i : std_logic;

    signal trigger_aur0_i2 : std_logic;
    signal trigger_aur1_i2 : std_logic;
    signal trigger_aur2_i2 : std_logic;
    signal trigger_aur3_i2 : std_logic;
    signal trigger_aur4_i2 : std_logic;

    signal fifo_data_aur0_i : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal fifo_data_aur1_i : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal fifo_data_aur2_i : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal fifo_data_aur3_i : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal fifo_data_aur4_i : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');

    signal stream_counter : unsigned(DATA_WIDTH - 1 downto 0) := (others => '0');

    -- State Machine
    type state_type is (STATE_IDLE, FIFO_WRITE_AUR0, FIFO_WRITE_AUR1, FIFO_WRITE_AUR2, FIFO_WRITE_AUR3, FIFO_WRITE_AUR4, FIFO_WRITE_SIMUL, FIFO_WRITE_STREAM);
    signal current_state : state_type;

    -- Aurora control
    type  aurora_startup is (RESET, POWER_UP, INIT_START, REMOVE_RESET);
    signal aurora_start_seq: aurora_startup;

    signal start_counter: integer range 0 to 512 :=0;

begin

    fifo_data_aur0 <= fifo_data_aur0_i;
    fifo_data_aur1 <= fifo_data_aur1_i;
    fifo_data_aur2 <= fifo_data_aur2_i;
    fifo_data_aur3 <= fifo_data_aur3_i;
    fifo_data_aur4 <= fifo_data_aur4_i;

    synq_process : process (clk_in1, rst_n) is
    begin
        if (rst_n = '0') then

            trigger_simultanious_i <= '0';
            trigger_simultanious_i2 <= '0';

            trigger_stream_i <= '0';
            trigger_stream_i2 <= '0';

            trigger_aur0_i <= '0';
            trigger_aur1_i <= '0';
            trigger_aur2_i <= '0';
            trigger_aur3_i <= '0';
            trigger_aur4_i <= '0';

            trigger_aur0_i2 <= '0';
            trigger_aur1_i2 <= '0';
            trigger_aur2_i2 <= '0';
            trigger_aur3_i2 <= '0';
            trigger_aur4_i2 <= '0';

        elsif (rising_edge(clk_in1)) then

            trigger_simultanious_i <= trigger_simultanious;
            trigger_simultanious_i2 <= trigger_simultanious_i;

            trigger_stream_i <= trigger_stream;
            trigger_stream_i2 <= trigger_stream_i;

            trigger_aur0_i <= trigger_aur0;
            trigger_aur1_i <= trigger_aur1;
            trigger_aur2_i <= trigger_aur2;
            trigger_aur3_i <= trigger_aur3;
            trigger_aur4_i <= trigger_aur4;

            trigger_aur0_i2 <= trigger_aur0_i;
            trigger_aur1_i2 <= trigger_aur1_i;
            trigger_aur2_i2 <= trigger_aur2_i;
            trigger_aur3_i2 <= trigger_aur3_i;
            trigger_aur4_i2 <= trigger_aur4_i;

        end if;
    end process;

    process (clk_in1, rst_n) is
    begin
        if (rst_n = '0') then

            current_state <= STATE_IDLE;

            fifo_data_aur0_i <= (others => '0');
            fifo_data_aur1_i <= (others => '0');
            fifo_data_aur2_i <= (others => '0');
            fifo_data_aur3_i <= (others => '0');
            fifo_data_aur4_i <= (others => '0');

            fifo_valid_aur0 <= '0';
            fifo_valid_aur1 <= '0';
            fifo_valid_aur2 <= '0';
            fifo_valid_aur3 <= '0';
            fifo_valid_aur4 <= '0';

            stream_counter <= (others => '0');

        elsif (rising_edge(clk_in1)) then

            case current_state is

                when STATE_IDLE =>

                    fifo_data_aur0_i <= (others => '0');
                    fifo_data_aur1_i <= (others => '0');
                    fifo_data_aur2_i <= (others => '0');
                    fifo_data_aur3_i <= (others => '0');
                    fifo_data_aur4_i <= (others => '0');

                    fifo_valid_aur0 <= '0';
                    fifo_valid_aur1 <= '0';
                    fifo_valid_aur2 <= '0';
                    fifo_valid_aur3 <= '0';
                    fifo_valid_aur4 <= '0';

                    if (trigger_aur0 = '1' and trigger_aur0_i = '1' and trigger_aur0_i2 = '0') then

                        current_state <= FIFO_WRITE_AUR0;

                    elsif (trigger_aur1 = '1' and trigger_aur1_i = '1' and trigger_aur1_i2 = '0') then

                        current_state <= FIFO_WRITE_AUR1;

                    elsif (trigger_aur2 = '1' and trigger_aur2_i = '1' and trigger_aur2_i2 = '0') then

                        current_state <= FIFO_WRITE_AUR2;

                    elsif (trigger_aur3 = '1' and trigger_aur3_i = '1' and trigger_aur3_i2 = '0') then

                        current_state <= FIFO_WRITE_AUR3;

                    elsif (trigger_aur4 = '1' and trigger_aur4_i = '1' and trigger_aur4_i2 = '0') then

                        current_state <= FIFO_WRITE_AUR4;

                    elsif (trigger_simultanious = '1' and trigger_simultanious_i = '1' and trigger_simultanious_i2 = '0') then

                        current_state <= FIFO_WRITE_SIMUL;

                    elsif (trigger_stream = '1' and trigger_stream_i = '1' and trigger_stream_i2 = '0') then

                        current_state <= FIFO_WRITE_STREAM;

                    end if;


                when FIFO_WRITE_AUR0 =>

                    fifo_data_aur0_i <= x"DEADBEEFCAFE00A0";
                    fifo_valid_aur0 <= '1';

                    current_state <= STATE_IDLE;

                when FIFO_WRITE_AUR1 =>

                    fifo_data_aur1_i <= x"DEADBEEFCAFE00A1";
                    fifo_valid_aur1 <= '1';

                    current_state <= STATE_IDLE;

                when FIFO_WRITE_AUR2 =>

                    fifo_data_aur2_i <= x"DEADBEEFCAFE00A2";
                    fifo_valid_aur2 <= '1';

                    current_state <= STATE_IDLE;

                when FIFO_WRITE_AUR3 =>

                    fifo_data_aur3_i <= x"DEADBEEFCAFE00A3";
                    fifo_valid_aur3 <= '1';

                    current_state <= STATE_IDLE;

                when FIFO_WRITE_AUR4 =>

                    fifo_data_aur4_i <= x"DEADBEEFCAFE00A4";
                    fifo_valid_aur4 <= '1';

                    current_state <= STATE_IDLE;

                when FIFO_WRITE_SIMUL =>

                    fifo_data_aur0_i <= x"DEADBEEFCAFE00A0";
                    fifo_valid_aur0 <= '1';

                    fifo_data_aur1_i <= x"DEADBEEFCAFE00A1";
                    fifo_valid_aur1 <= '1';

                    fifo_data_aur2_i <= x"DEADBEEFCAFE00A2";
                    fifo_valid_aur2 <= '1';

                    fifo_data_aur3_i <= x"DEADBEEFCAFE00A3";
                    fifo_valid_aur3 <= '1';

                    fifo_data_aur4_i <= x"DEADBEEFCAFE00A4";
                    fifo_valid_aur4 <= '1';

                    current_state <= STATE_IDLE;


                when FIFO_WRITE_STREAM =>
                    if (trigger_stream = '0') then

                        fifo_valid_aur0 <= '0';
                        fifo_valid_aur1 <= '0';
                        fifo_valid_aur2 <= '0';
                        fifo_valid_aur3 <= '0';
                        fifo_valid_aur4 <= '0';
                        current_state <= STATE_IDLE;
                        stream_counter <= (others => '0');

                    else 
                    
                        fifo_data_aur0_i   <= std_logic_vector(stream_counter);
                        fifo_data_aur1_i   <= std_logic_vector(stream_counter);
                        fifo_data_aur2_i   <= std_logic_vector(stream_counter);
                        fifo_data_aur3_i   <= std_logic_vector(stream_counter);
                        fifo_data_aur4_i   <= std_logic_vector(stream_counter);

                        fifo_valid_aur0 <= '1';
                        fifo_valid_aur1 <= '1';
                        fifo_valid_aur2 <= '1';
                        fifo_valid_aur3 <= '1';
                        fifo_valid_aur4 <= '1';
                        stream_counter <= stream_counter + 1;
                        current_state <= FIFO_WRITE_STREAM;

                    end if;
                
                when others =>
                    current_state <= STATE_IDLE;
                
                end case;
        end if;
    end process;

    aurora_core_startup_ctrl :process(clk_in1, rst_n)
   
    begin

    if (rst_n = '0') then

        aurora_power_down <='1';
	    aurora_reset_pb   <='1';
	    aurora_pma_init   <='1';
	 
	    aurora_start_seq<=RESET;
	   
	    start_counter<=0;

    elsif (rising_edge(clk_in1)) then
	 
	  case aurora_start_seq is
	 
	    when RESET=>
	   	    aurora_power_down <='1';
	        aurora_reset_pb   <='1';
	        aurora_pma_init   <='1';
	   
	   
	      if start_counter < 250 then 
		     start_counter<=start_counter+1;
			 aurora_start_seq<=RESET;
		  else
		    start_counter<=0;
		    aurora_start_seq<=POWER_UP;
	      end if;
	   
	    when POWER_UP=>
	      aurora_power_down <='0';
		 
		  if start_counter < 250 then 
		     start_counter<=start_counter+1;
			 aurora_start_seq<=POWER_UP;
		  else
		    start_counter<=0;
		    aurora_start_seq<=INIT_START;
	      end if;
		 
	   
	    when INIT_START=>
	   
	     aurora_pma_init   <='0';
		
		  if start_counter < 250 then 
		     start_counter<=start_counter+1;
			 aurora_start_seq<=INIT_START;
		  else
		    start_counter<=0;
		    aurora_start_seq<=REMOVE_RESET;
	      end if;
	   
	   
	     when REMOVE_RESET=>
	     aurora_reset_pb   <='0';
		 aurora_start_seq<=REMOVE_RESET;
	   
	   
	   
	    when others=>
	      aurora_start_seq<=RESET;
	 
	  end case;
	 
	 
	    
      end if;
   
    end process aurora_core_startup_ctrl;


end rtl;
