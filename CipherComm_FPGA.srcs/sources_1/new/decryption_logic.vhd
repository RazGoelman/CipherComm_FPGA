library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decryption_logic is
    generic (
        observation_window_cycles : natural := 1;
        XOR_KEY                   : std_logic_vector(7 downto 0) := x"5A"
    );
    Port (
        clk            : in  STD_LOGIC;
        rst            : in  STD_LOGIC;
        encrypted_data : in  STD_LOGIC_VECTOR(7 downto 0);
        valid_in       : in  STD_LOGIC;
        decrypted_data : out STD_LOGIC_VECTOR(7 downto 0);
        valid_out      : out STD_LOGIC
    );
end decryption_logic;

architecture Behavioral of decryption_logic is
    signal data_reg       : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg      : std_logic := '0';
    signal window_counter : natural range 0 to observation_window_cycles := 0;
begin
    process(clk, rst)
    begin
        if rst = '1' then
            data_reg       <= (others => '0');
            valid_reg      <= '0';
            window_counter <= 0;
        elsif rising_edge(clk) then
            if valid_in = '1' then
                data_reg       <= encrypted_data xor XOR_KEY;
                valid_reg      <= '1';
                window_counter <= observation_window_cycles - 1;
            elsif window_counter > 0 then
                valid_reg      <= '1';
                window_counter <= window_counter - 1;
            else
                valid_reg <= '0';
            end if;
        end if;
    end process;

    decrypted_data <= data_reg;
    valid_out      <= valid_reg;
end Behavioral;


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

--entity decryption_logic is
--    generic (
--        observation_window_cycles : natural := 1;          -- כמה מחזורי שעון לשמור valid_out
--        XOR_KEY                   : std_logic_vector(7 downto 0) := x"5A"  -- חייב להיות זהה במצפין ובמפענח
--    );
--    Port (
--        clk            : in  STD_LOGIC;
--        rst            : in  STD_LOGIC;
--        encrypted_data : in  STD_LOGIC_VECTOR(7 downto 0);
--        valid_in       : in  STD_LOGIC;
--        decrypted_data : out STD_LOGIC_VECTOR(7 downto 0);
--        valid_out      : out STD_LOGIC
--    );
--end decryption_logic;

--architecture Behavioral of decryption_logic is
--    signal data_reg       : std_logic_vector(7 downto 0) := (others => '0');
--    signal valid_reg      : std_logic := '0';
--    signal window_counter : natural range 0 to observation_window_cycles := 0;
--begin

--    process(clk, rst)
--    begin
--        if rst = '1' then
--            data_reg       <= (others => '0');
--            valid_reg      <= '0';
--            window_counter <= 0;

--        elsif rising_edge(clk) then
--            if valid_in = '1' then
--                -- פענוח: XOR עם אותו KEY ממש כמו בהצפנה
--                data_reg       <= encrypted_data xor XOR_KEY;
--                valid_reg      <= '1';
--                window_counter <= observation_window_cycles - 1;

--            elsif window_counter > 0 then
--                -- החזקת valid_out לעוד כמה מחזורים
--                valid_reg      <= '1';
--                window_counter <= window_counter - 1;

--            else
--                valid_reg <= '0';
--            end if;
--        end if;
--    end process;

--    decrypted_data <= data_reg;
--    valid_out      <= valid_reg;

--end Behavioral;
