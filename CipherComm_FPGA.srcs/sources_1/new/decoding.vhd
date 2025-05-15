library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoding is
    generic (
        observation_window_cycles : natural := 1
    );
    Port (
        clk            : in  std_logic;
        rst            : in  std_logic;
        valid_in       : in  std_logic;
        data_in        : in  std_logic_vector(7 downto 0);
        parity_in      : in  std_logic;
        crc_in         : in  std_logic_vector(7 downto 0);
        valid_out      : out std_logic;
        data_out       : out std_logic_vector(7 downto 0);
        error_parity   : out std_logic;
        error_crc      : out std_logic
    );
end decoding;

architecture Behavioral of decoding is
    signal last_valid_in  : std_logic := '0';
    signal data_reg       : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg      : std_logic := '0';
    signal win_cnt        : natural range 0 to observation_window_cycles := 0;
begin

    process(clk, rst)
    begin
        if rst = '1' then
            last_valid_in <= '0';
            data_reg      <= (others => '0');
            valid_reg     <= '0';
            win_cnt       <= 0;
            error_parity  <= '0';
            error_crc     <= '0';

        elsif rising_edge(clk) then
            last_valid_in <= valid_in;

            -- Detect rising edge of valid_in
            if valid_in = '1' and last_valid_in = '0' then
                data_reg     <= data_in;
                valid_reg    <= '1';
                win_cnt      <= observation_window_cycles - 1;

                -- For now: no parity or CRC checking implemented
                error_parity <= '0';
                error_crc    <= '0';

            -- Maintain valid_out for window
            elsif win_cnt > 0 then
                valid_reg <= '1';
                win_cnt   <= win_cnt - 1;

            else
                valid_reg <= '0';
            end if;
        end if;
    end process;

    data_out   <= data_reg;
    valid_out  <= valid_reg;

end Behavioral;
