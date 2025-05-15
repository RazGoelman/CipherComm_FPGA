-- uart_fifo_tx.vhd  (UART-TX with tx_start / tx_done handshake)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart_fifo_tx is
    generic (
        CLOCK_FREQ_HZ : integer := 50_000_000;
        BAUD_RATE     : integer := 9_600;
        observation_window_cycles : natural := 1   -- unused here, kept for symmetry
    );
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;

        -- write interface (one of them מספיק):
        data_in   : in  std_logic_vector(7 downto 0);
        wr_en     : in  std_logic;          -- legacy (logger)
        tx_start  : in  std_logic;          -- חדש - הפעלת שידור

        -- status / serial out
        tx_ready  : out std_logic;          -- '1' כאשר פנוי לקבלת בייט חדש
        tx_out    : out std_logic;          -- קו UART (TTL-level)
        tx_valid  : out std_logic;          -- '1' בעת שליחה (בִּמקום tx_busy)
        tx_done   : out std_logic           -- פולס "1" בסיום שידור
    );
end uart_fifo_tx;

architecture Behavioral of uart_fifo_tx is
    constant BAUD_DIVIDER : integer := CLOCK_FREQ_HZ / BAUD_RATE;

    type state_type is (IDLE, START_BIT, SEND_BITS, STOP_BIT);
    signal state        : state_type := IDLE;

    signal bit_cnt      : integer range 0 to 7 := 0;
    signal shift_reg    : std_logic_vector(7 downto 0) := (others => '0');
    signal baud_cnt     : integer := 0;
    signal tx_line      : std_logic := '1';         -- קו פיזי
    signal busy         : std_logic := '0';
    signal tx_done_int  : std_logic := '0';
begin
    ------------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state      <= IDLE;
                bit_cnt    <= 0;
                shift_reg  <= (others => '0');
                baud_cnt   <= 0;
                tx_line    <= '1';
                busy       <= '0';
                tx_done_int<= '0';

            else
                -- ברירת-מחדל
                tx_done_int <= '0';

                -- מונה באוד
                if baud_cnt = BAUD_DIVIDER-1 then
                    baud_cnt <= 0;

                    case state is
                        ------------------------------------------------------------------
                        when IDLE =>
                            if (wr_en = '1' or tx_start = '1') then
                                shift_reg <= data_in;
                                state     <= START_BIT;
                                busy      <= '1';
                            end if;

                        ------------------------------------------------------------------
                        when START_BIT =>
                            tx_line <= '0';               -- start bit
                            state   <= SEND_BITS;
                            bit_cnt <= 0;

                        ------------------------------------------------------------------
                        when SEND_BITS =>
                            tx_line <= shift_reg(bit_cnt);
                            if bit_cnt = 7 then
                                state <= STOP_BIT;
                            else
                                bit_cnt <= bit_cnt + 1;
                            end if;

                        ------------------------------------------------------------------
                        when STOP_BIT =>
                            tx_line      <= '1';          -- stop bit
                            state        <= IDLE;
                            busy         <= '0';
                            tx_done_int  <= '1';          -- פולס סיום

                        when others =>
                            state <= IDLE;
                    end case;

                else
                    baud_cnt <= baud_cnt + 1; -- עדיין באמצע סימן-באוד
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------------------
    -- יציאות
    tx_out   <= tx_line;
    tx_ready <= not busy;
    tx_valid <= busy;             -- "1" כל עוד המשדר עסוק
    tx_done  <= tx_done_int;      -- פולס יחיד בסוף

end Behavioral;
