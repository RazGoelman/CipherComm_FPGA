-- ===================================
-- FINAL debug_uart_logger.vhd with ASCII headers for PuTTY debug
-- ===================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity debug_uart_logger is
generic (
        observation_window_cycles : natural := 1
    );
    Port (
        clk               : in std_logic;
        rst               : in std_logic;
        encoded_data      : in std_logic_vector(7 downto 0);
        scrambled_data    : in std_logic_vector(7 downto 0);
        encrypted_data    : in std_logic_vector(7 downto 0);
        decrypted_data    : in std_logic_vector(7 downto 0);
        unscrambled_data  : in std_logic_vector(7 downto 0);
        decoded_data      : in std_logic_vector(7 downto 0);
        decoded_valid_in  : in std_logic;
        crc_error_internal: in std_logic;
        trigger_log       : in std_logic;
        uart_fifo_din     : out std_logic_vector(7 downto 0);
        uart_fifo_wr_en   : out std_logic;
        log_tx_data       : out std_logic_vector(7 downto 0);
        log_tx_valid      : out std_logic
    );
end debug_uart_logger;

architecture Behavioral of debug_uart_logger is

type state_type is (
    IDLE,
    SEND_HEADER_ENC,     SEND_ENCODED,
    SEND_HEADER_SCR,     SEND_SCRAMBLED,
    SEND_HEADER_ENCYP,   SEND_ENCRYPTED,
    SEND_HEADER_DECYP,   SEND_DECRYPTED,
    SEND_HEADER_UNSCR,   SEND_UNSCRAMBLED,
    SEND_HEADER_FINAL,   SEND_DECODED,
    SEND_HEADER_RES,     SEND_RESULT,
    DONE
);

signal state             : state_type := IDLE;
signal trigger_log_last  : std_logic := '0';
signal wr_data           : std_logic_vector(7 downto 0);
signal wr_en             : std_logic := '0';

begin

process(clk, rst)
begin
    if rst = '1' then
        state            <= IDLE;
        trigger_log_last <= '0';
        wr_data          <= (others => '0');
        wr_en            <= '0';

    elsif rising_edge(clk) then
        trigger_log_last <= trigger_log;
        wr_en  <= '0';

        case state is
            when IDLE =>
                if trigger_log = '1' and trigger_log_last = '0' then
                    state <= SEND_HEADER_ENC;
                end if;

            when SEND_HEADER_ENC =>
                wr_data <= X"41"; wr_en <= '1'; state <= SEND_ENCODED; -- 'A'

            when SEND_ENCODED =>
                wr_data <= encoded_data; wr_en <= '1'; state <= SEND_HEADER_SCR;

            when SEND_HEADER_SCR =>
                wr_data <= X"42"; wr_en <= '1'; state <= SEND_SCRAMBLED; -- 'B'

            when SEND_SCRAMBLED =>
                wr_data <= scrambled_data; wr_en <= '1'; state <= SEND_HEADER_ENCYP;

            when SEND_HEADER_ENCYP =>
                wr_data <= X"43"; wr_en <= '1'; state <= SEND_ENCRYPTED; -- 'C'

            when SEND_ENCRYPTED =>
                wr_data <= encrypted_data; wr_en <= '1'; state <= SEND_HEADER_DECYP;

            when SEND_HEADER_DECYP =>
                wr_data <= X"44"; wr_en <= '1'; state <= SEND_DECRYPTED; -- 'D'

            when SEND_DECRYPTED =>
                wr_data <= decrypted_data; wr_en <= '1'; state <= SEND_HEADER_UNSCR;

            when SEND_HEADER_UNSCR =>
                wr_data <= X"45"; wr_en <= '1'; state <= SEND_UNSCRAMBLED; -- 'E'

            when SEND_UNSCRAMBLED =>
                wr_data <= unscrambled_data; wr_en <= '1'; state <= SEND_HEADER_FINAL;

            when SEND_HEADER_FINAL =>
                wr_data <= X"46"; wr_en <= '1'; state <= SEND_DECODED; -- 'F'

            when SEND_DECODED =>
                wr_data <= decoded_data; wr_en <= '1'; state <= SEND_HEADER_RES;

            when SEND_HEADER_RES =>
                wr_data <= X"52"; wr_en <= '1'; state <= SEND_RESULT; -- 'R'

            when SEND_RESULT =>
                if crc_error_internal = '1' then
                    wr_data <= X"45"; -- ASCII 'E'
                else
                    wr_data <= X"4F"; -- ASCII 'O'
                end if;
                wr_en  <= '1';
                state  <= DONE;

            when DONE =>
                state <= IDLE;

        end case;
    end if;
end process;

-- Output assignments
uart_fifo_din   <= wr_data;
uart_fifo_wr_en <= wr_en;
log_tx_data     <= wr_data;
log_tx_valid    <= wr_en;

end Behavioral;
