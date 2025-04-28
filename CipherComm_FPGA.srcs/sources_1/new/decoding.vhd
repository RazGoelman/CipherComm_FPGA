library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoding is
    Port (
        clk         : in  STD_LOGIC;
        rst         : in  STD_LOGIC;
        valid_in    : in  STD_LOGIC;
        data_in     : in  STD_LOGIC_VECTOR(7 downto 0);
        decoded_out : out STD_LOGIC_VECTOR(7 downto 0);
        valid_out   : out STD_LOGIC
    );
end decoding;

architecture Behavioral of decoding is
    signal data_reg  : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                data_reg  <= (others => '0');
                valid_reg <= '0';
            elsif valid_in = '1' then
                data_reg  <= data_in;
                valid_reg <= '1';
                report "[DEBUG] Decoding: Received valid data = " & integer'image(to_integer(unsigned(data_in))) severity note;
            else
                valid_reg <= '0';
            end if;
        end if;
    end process;

    decoded_out <= data_reg;
    valid_out   <= valid_reg;

end Behavioral;
