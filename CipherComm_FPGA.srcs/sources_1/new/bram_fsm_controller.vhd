library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bram_fsm_controller is
    Port (
        clk          : in  std_logic;
        rst          : in  std_logic;
        data_in      : in  std_logic_vector(7 downto 0);
        valid        : in  std_logic;
        enable       : in  std_logic;

        bram_addr    : out std_logic_vector(3 downto 0);
        bram_din     : out std_logic_vector(7 downto 0);
        bram_dout    : in  std_logic_vector(7 downto 0);
        bram_we      : out std_logic;
        data_out     : out std_logic_vector(7 downto 0);
        data_valid   : out std_logic
    );
end bram_fsm_controller;

architecture Behavioral of bram_fsm_controller is

    type state_type is (WRITE, WAIT_ONE_CLK, SET_READ_ADDR, WAIT_READ, READ);
    signal current_state   : state_type := WRITE;

    signal write_ptr       : unsigned(3 downto 0) := (others => '0');
    signal read_ptr        : unsigned(3 downto 0) := (others => '0');
    signal valid_latched   : std_logic := '0';

    -- helper function for address wraparound
    function wrap_subtract(a : unsigned(3 downto 0); b : integer) return unsigned is
        variable result : integer := to_integer(a) - b;
    begin
        if result < 0 then
            result := result + 16;
        end if;
        return to_unsigned(result mod 16, 4);
    end function;

begin

    process(clk, rst)
    begin
        if rst = '1' then
            write_ptr      <= (others => '0');
            read_ptr       <= (others => '0');
            bram_we        <= '0';
            data_valid     <= '0';
            data_out       <= (others => '0');
            bram_addr      <= (others => '0');
            bram_din       <= (others => '0');
            valid_latched  <= '0';
            current_state  <= WRITE;

        elsif rising_edge(clk) then
            if enable = '1' then

                -- latch valid input
                if valid = '1' then
                    valid_latched <= '1';
                end if;

                case current_state is

                    when WRITE =>
                        if valid_latched = '1' then
                            bram_addr     <= std_logic_vector(write_ptr);
                            bram_din      <= data_in;
                            bram_we       <= '1';
                            write_ptr     <= write_ptr + 1;
                            valid_latched <= '0';

                            -- ALWAYS DEBUG
                            report "[DEBUG][FSM][WRITE] Data: " & integer'image(to_integer(unsigned(data_in))) &
                                   " to Addr: " & integer'image(to_integer(write_ptr)) severity note;

                            current_state <= WAIT_ONE_CLK;
                        else
                            bram_we <= '0';
                        end if;

                    when WAIT_ONE_CLK =>
                        bram_we      <= '0';
                        data_valid   <= '0';
                        read_ptr     <= wrap_subtract(write_ptr, 1);
                        current_state <= SET_READ_ADDR;

                    when SET_READ_ADDR =>
                        bram_addr     <= std_logic_vector(read_ptr);
                        current_state <= WAIT_READ;

                    when WAIT_READ =>
                        current_state <= READ;

                    when READ =>
                        data_out    <= bram_dout;
                        data_valid  <= '1';
                        current_state <= WRITE;

                        -- ALWAYS DEBUG
                        report "[DEBUG][FSM][READ] Data: " & integer'image(to_integer(unsigned(bram_dout))) &
                               " from Addr: " & integer'image(to_integer(read_ptr)) severity note;

                end case;
            else
                data_valid <= '0';
                bram_we    <= '0';
            end if;
        end if;
    end process;

end Behavioral;
