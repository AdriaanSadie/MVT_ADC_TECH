library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_tester is
    port(
        clk     : in  std_logic;
        rst_n   : in  std_logic;
        trig_in : in  std_logic;
        tready  : in  std_logic;
        tvalid  : out std_logic;
        tdata   : out std_logic_vector(31 downto 0);
        tlast   : out std_logic
    );
end entity fifo_tester;

architecture rtl of fifo_tester is

    signal counter    : unsigned(31 downto 0) := (others => '0');
    type   state_type is (IDLE, WRITE, FINISHED);
    signal state      : state_type            := IDLE;

    signal trig_in_r1 : std_logic;
    signal trig_in_r2 : std_logic;

begin

    -- Main control
    process(clk, rst_n)
    begin
        if rst_n = '0' then

            counter <= (others => '0');
            state   <= IDLE;

            tdata  <= (others => '0');
            tvalid <= '0';

            trig_in_r1 <= '0';
            trig_in_r2 <= '0';

        elsif rising_edge(clk) then

            trig_in_r1 <= trig_in;
            trig_in_r2 <= trig_in_r1;

            case state is

                when IDLE =>

                    -- Wait for rising edge:
                    if (trig_in_r1 = '1' and trig_in_r2 = '0') then
                        state   <= WRITE;
                    else
                        state   <= IDLE;
                    end if;

            when WRITE =>

                if counter = 511 then
                    counter <= (others => '0');
                    state   <= IDLE;
                    tvalid <= '0';
                else
                    counter <= counter + 1;
                    
                    if (tready = '1') then
                        
                        tvalid <= '1';
                        tdata <= std_logic_vector(counter);

                    end if;

                end if;

            when others =>

                state   <= IDLE;

            end case;

        end if;
    end process;

end architecture rtl;
