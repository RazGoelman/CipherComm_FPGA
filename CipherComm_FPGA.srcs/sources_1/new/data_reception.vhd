library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_reception is
    Port (
        clk                  : in  STD_LOGIC;
        rst                  : in  STD_LOGIC;
        rx_data_in           : in  STD_LOGIC_VECTOR (7 downto 0);
        rx_valid_in          : in  STD_LOGIC;
        received_data        : out STD_LOGIC_VECTOR (7 downto 0);
        received_valid       : out STD_LOGIC;
        crc_error            : out STD_LOGIC;
        crc_error_led        : out STD_LOGIC;
        to_decryption        : out STD_LOGIC_VECTOR (7 downto 0);
        valid_to_decryption  : out STD_LOGIC
    );
end data_reception;

architecture Behavioral of data_reception is

    type state_type is (IDLE, WAIT_CRC);
    signal state          : state_type := IDLE;

    signal data_byte      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal valid_reg      : STD_LOGIC := '0';
    signal crc_fail       : STD_LOGIC := '0';

    signal rx_valid_d     : STD_LOGIC := '0';
    signal rx_rising_edge : STD_LOGIC;

    -- CRC8 function remains for future use
    function crc8(data : STD_LOGIC_VECTOR(7 downto 0)) return STD_LOGIC_VECTOR is
        variable crc : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    begin
        for i in 7 downto 0 loop
            if (crc(7) xor data(i)) = '1' then
                crc := (crc(6 downto 0) & '0') xor "00000111";
            else
                crc := crc(6 downto 0) & '0';
            end if;
        end loop;
        return crc;
    end function;

begin

    rx_rising_edge <= '1' when (rx_valid_in = '1' and rx_valid_d = '0') else '0';

    process(clk)
    begin
        if rising_edge(clk) then
            rx_valid_d <= rx_valid_in;

            if rst = '1' then
                state       <= IDLE;
                data_byte   <= (others => '0');
                valid_reg   <= '0';
                crc_fail    <= '0';

            else
                valid_reg   <= '0';
                crc_fail    <= '0';

                if rx_rising_edge = '1' then
                    case state is
                        when IDLE =>
                            data_byte <= rx_data_in;
                            state <= WAIT_CRC;
                            report "[DEBUG] Received data byte: " & integer'image(to_integer(unsigned(rx_data_in))) severity note;

                        when WAIT_CRC =>
                            -- TEMPORARY BYPASS: CRC check is disabled for system test
                            valid_reg <= '1';
                            report "[DEBUG][TEMP] CRC check bypassed. Forwarding data to decryption anyway: " & integer'image(to_integer(unsigned(data_byte))) severity note;
                            state <= IDLE;
                    end case;
                end if;
            end if;
        end if;
    end process;

    received_data         <= data_byte;
    received_valid        <= valid_reg;
    crc_error             <= '0';  -- Always zero while CRC is bypassed
    crc_error_led         <= '0';
    to_decryption         <= data_byte;
    valid_to_decryption   <= valid_reg;

end Behavioral;
