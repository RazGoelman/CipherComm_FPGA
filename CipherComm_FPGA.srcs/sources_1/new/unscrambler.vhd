library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity unscrambler is
    Port (
        clk        : in  STD_LOGIC;
        rst        : in  STD_LOGIC;
        enable     : in  STD_LOGIC;
        valid_in   : in  STD_LOGIC;
        data_in    : in  STD_LOGIC_VECTOR (7 downto 0);
        lfsr_in    : in  STD_LOGIC_VECTOR (7 downto 0);
        data_out   : out STD_LOGIC_VECTOR (7 downto 0);
        valid_out  : out STD_LOGIC
    );
end unscrambler;

architecture Behavioral of unscrambler is
    signal data_reg  : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                data_reg  <= (others => '0');
                valid_reg <= '0';
            elsif enable = '1' and valid_in = '1' then
                data_reg  <= data_in xor lfsr_in;
                valid_reg <= '1';
                report "[DEBUG] UnScrambler: data_in = " & integer'image(to_integer(unsigned(data_in))) &
                       ", lfsr_in = " & integer'image(to_integer(unsigned(lfsr_in))) &
                       ", data_out = " & integer'image(to_integer(unsigned(data_in xor lfsr_in))) severity note;
            else
                valid_reg <= '0';
            end if;
        end if;
    end process;

    data_out  <= data_reg;
    valid_out <= valid_reg;

end Behavioral;