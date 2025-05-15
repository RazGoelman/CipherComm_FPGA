library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_transmission is
    generic (
        observation_window_cycles : natural := 1
    );
    Port (
        clk            : in  std_logic;
        rst            : in  std_logic;
        fifo_empty     : in  std_logic;
        fifo_full      : in  std_logic;
        fifo_dout      : in  std_logic_vector(17 downto 0);
        fifo_rd_en     : out std_logic;
        tx_data_out    : out std_logic_vector(7 downto 0);
        tx_valid_out   : out std_logic;
        tx_start       : out std_logic;
        tx_done        : out std_logic;
        tx_crc_out     : out std_logic_vector(7 downto 0);
        crc_valid_out  : out std_logic;
        data_tx_state_dbg : out std_logic_vector(2 downto 0)
    );
end data_transmission;

architecture Behavioral of data_transmission is
    type state_type is (
        IDLE, READ_FIFO, LOAD_DATA,
        SEND_DATA, SEND_CRC, DONE
    );
    signal state : state_type := IDLE;

    signal data_reg        : std_logic_vector(17 downto 0) := (others => '0');
    signal data_byte       : std_logic_vector(7 downto 0)  := (others => '0');
    signal crc_byte        : std_logic_vector(7 downto 0)  := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state         <= IDLE;
                fifo_rd_en    <= '0';
                tx_data_out   <= (others => '0');
                tx_valid_out  <= '0';
                tx_start      <= '0';
                tx_crc_out    <= (others => '0');
                crc_valid_out <= '0';
                tx_done       <= '0';
            else
                fifo_rd_en    <= '0';
                tx_valid_out  <= '0';
                tx_start      <= '0';
                crc_valid_out <= '0';
                tx_done       <= '0';

                case state is
                    when IDLE =>
                        if fifo_empty = '0' then
                            state <= READ_FIFO;
                        end if;

                    when READ_FIFO =>
                        fifo_rd_en <= '1';
                        state <= LOAD_DATA;

                    when LOAD_DATA =>
                        data_reg  <= fifo_dout;
                        data_byte <= fifo_dout(7 downto 0);
                        crc_byte  <= fifo_dout(15 downto 8);
                        state <= SEND_DATA;

                    when SEND_DATA =>
                        tx_data_out  <= data_byte;
                        tx_valid_out <= '1';
                        tx_start     <= '1';
                        state <= SEND_CRC;

                    when SEND_CRC =>
                        tx_data_out    <= crc_byte;
                        tx_valid_out   <= '1';
                        tx_start       <= '1';
                        tx_crc_out     <= crc_byte;
                        crc_valid_out  <= '1';
                        state <= DONE;

                    when DONE =>
                        tx_done <= '1';
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;

    -- ⭐ debug FSM state (fixed for VHDL-93+)
    with state select
        data_tx_state_dbg <= "000" when IDLE,
                             "001" when READ_FIFO,
                             "010" when LOAD_DATA,
                             "011" when SEND_DATA,
                             "100" when SEND_CRC,
                             "101" when DONE,
                             "000" when others;

end Behavioral;
