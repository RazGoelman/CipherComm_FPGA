library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bram_fsm_controller is
    Port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        data_in    : in  std_logic_vector(7 downto 0);
        valid      : in  std_logic;
        enable     : in  std_logic;
        bram_addr  : out std_logic_vector(3 downto 0);
        bram_din   : out std_logic_vector(7 downto 0);
        bram_dout  : in  std_logic_vector(7 downto 0);
        bram_we    : out std_logic;
        data_out   : out std_logic_vector(7 downto 0);
        data_valid : out std_logic
    );
end bram_fsm_controller;

architecture Behavioral of bram_fsm_controller is

    type state_type is (WRITE, WAIT_ONE_CLK, READ);
    signal current_state : state_type := WRITE;

    signal write_ptr : unsigned(3 downto 0) := (others => '0');
    signal read_ptr  : unsigned(3 downto 0) := (others => '0');

begin

    process(clk, rst)
    begin
        if rst = '1' then
            write_ptr      <= (others => '0');
            read_ptr       <= (others => '0');
            bram_we        <= '0';
            data_valid     <= '0';
            data_out       <= (others => '0');
            current_state  <= WRITE;
        elsif rising_edge(clk) then
            if enable = '1' then
                case current_state is

                    when WRITE =>
                        if valid = '1' then
                            bram_addr <= std_logic_vector(write_ptr);
                            bram_din  <= data_in;
                            bram_we   <= '1';
                            report "[DEBUG][FSM][WRITE] Data: " & integer'image(to_integer(unsigned(data_in))) & 
                                   " to Addr: " & integer'image(to_integer(write_ptr)) severity note;
                            write_ptr <= write_ptr + 1;
                            current_state <= WAIT_ONE_CLK;
                        else
                            bram_we <= '0';
                        end if;

                    when WAIT_ONE_CLK =>
                        bram_we <= '0';
                        data_valid <= '0';
                        read_ptr <= write_ptr - 1; -- Read back last written addr
                        current_state <= READ;

                    when READ =>
                        bram_addr <= std_logic_vector(read_ptr);
                        bram_we   <= '0';
                        data_out  <= bram_dout;
                        data_valid <= '1';

                        report "[DEBUG][FSM][READ] Data: " & integer'image(to_integer(unsigned(bram_dout))) & 
                               " from Addr: " & integer'image(to_integer(read_ptr)) severity note;

                        current_state <= WRITE; -- Loop again for next byte

                end case;
            end if;
        end if;
    end process;

end Behavioral;
