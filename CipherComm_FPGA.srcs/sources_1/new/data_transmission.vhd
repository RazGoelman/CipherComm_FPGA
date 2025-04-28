-- Updated data_transmission.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_transmission is
    Port (
        clk              : in  std_logic;
        rst              : in  std_logic;
        fifo_empty       : in  std_logic;
        fifo_full        : in  std_logic;
        fifo_dout        : in  std_logic_vector(17 downto 0);
        fifo_rd_en       : out std_logic;
        tx_data_out      : out std_logic_vector(7 downto 0);
        tx_valid_out     : out std_logic;
        tx_done          : in  std_logic;
        tx_start         : out std_logic;
        tx_crc_out       : out std_logic_vector(7 downto 0);
        crc_valid_out    : out std_logic;
        ready_for_data   : out std_logic
    );
end data_transmission;

architecture Behavioral of data_transmission is

    type state_type is (IDLE, READ_FIFO, WAIT_ONE_CYCLE, LOAD_DATA, SEND_DATA, SEND_CRC, WAIT_TX_DONE);
    signal state        : state_type := IDLE;

    signal data_reg     : std_logic_vector(17 downto 0) := (others => '0');

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

            else
                fifo_rd_en    <= '0';
                tx_valid_out  <= '0';
                tx_start      <= '0';
                crc_valid_out <= '0';

                case state is
                    when IDLE =>
                        if fifo_empty = '0' then
                            state <= READ_FIFO;
                        end if;

                    when READ_FIFO =>
                        fifo_rd_en <= '1';
                        state <= WAIT_ONE_CYCLE;

                    when WAIT_ONE_CYCLE =>
                        -- Wait one cycle to allow fifo_dout to be valid
                        state <= LOAD_DATA;

                    when LOAD_DATA =>
                        data_reg <= fifo_dout;
                        report "[DEBUG][TX] FIFO read: " & integer'image(to_integer(unsigned(fifo_dout))) severity note;
                        state <= SEND_DATA;

                    when SEND_DATA =>
                        tx_data_out  <= data_reg(7 downto 0);
                        tx_valid_out <= '1';
                        tx_start     <= '1';
                        report "[DEBUG][TX] Sending DATA byte: " & integer'image(to_integer(unsigned(data_reg(7 downto 0)))) severity note;
                        state <= SEND_CRC;

                    when SEND_CRC =>
                        tx_data_out    <= data_reg(15 downto 8);
                        tx_valid_out   <= '1';
                        tx_crc_out     <= data_reg(15 downto 8);
                        crc_valid_out  <= '1';
                        tx_start       <= '1';
                        report "[DEBUG][TX] Sending CRC byte: " & integer'image(to_integer(unsigned(data_reg(15 downto 8)))) severity note;
                        state <= WAIT_TX_DONE;

                    when WAIT_TX_DONE =>
                        if tx_done = '1' then
                            state <= IDLE;
                        end if;
                end case;
            end if;
        end if;
    end process;

    ready_for_data <= '1' when (state = IDLE and fifo_empty = '0') else '0';

end Behavioral;
