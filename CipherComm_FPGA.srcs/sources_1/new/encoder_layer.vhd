library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity encoder_layer is
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        data_in       : in  std_logic_vector(7 downto 0);
        valid_in      : in  std_logic;
        data_encoded  : out std_logic_vector(7 downto 0);
        parity_bit    : out std_logic;
        crc_bit       : out std_logic_vector(7 downto 0);
        valid_out     : out std_logic
    );
end encoder_layer;

architecture Behavioral of encoder_layer is

    function calculate_parity(data : std_logic_vector(7 downto 0)) return std_logic is
        variable parity : std_logic := '0';
    begin
        for i in 7 downto 0 loop
            parity := parity xor data(i);
        end loop;
        return parity;
    end function;

function calculate_crc8(data : std_logic_vector(7 downto 0)) return std_logic_vector is
    variable crc : std_logic_vector(7 downto 0) := (others => '0');
    variable din : std_logic_vector(7 downto 0);
    variable do_xor : std_logic;
    variable tmp : std_logic;  -- העברנו את ההכרזה החוצה מהלולאה
begin
    -- Bit reverse for MSB to LSB to match receiver expectations
    for i in 0 to 7 loop
        din(i) := data(7 - i);
    end loop;

    for i in 0 to 7 loop
        do_xor := crc(7) xor din(i);
        crc := crc(6 downto 0) & '0';
        if do_xor = '1' then
            crc := crc xor "00000111";  -- Polynomial x^8 + x^2 + x + 1 (0x07)
        end if;
    end loop;

    -- Bit reverse the result back from MSB to LSB
    for i in 0 to 3 loop
        tmp := crc(i);
        crc(i) := crc(7 - i);
        crc(7 - i) := tmp;
    end loop;

    return crc;
end function;

begin
    process(clk, rst)
    begin
        if rst = '1' then
            data_encoded <= (others => '0');
            parity_bit   <= '0';
            crc_bit      <= (others => '0');
            valid_out    <= '0';

        elsif rising_edge(clk) then
            if valid_in = '1' then
                data_encoded <= data_in;
                parity_bit   <= calculate_parity(data_in);
                crc_bit      <= calculate_crc8(data_in);
                valid_out    <= '1';
            else
                valid_out <= '0';
            end if;
        end if;
    end process;

end Behavioral;
