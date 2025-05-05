library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoding is
    Port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        valid_in    : in  std_logic;
        data_in     : in  std_logic_vector(7 downto 0);
        valid_out   : out std_logic;
        data_out    : out std_logic_vector(7 downto 0)
    );
end decoding;

architecture Behavioral of decoding is
    signal data_reg      : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg     : std_logic := '0';
    signal valid_counter : integer range 0 to 1 := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                data_reg      <= (others => '0');
                valid_reg     <= '0';
                valid_counter <= 0;
            elsif valid_in = '1' then
                data_reg      <= data_in;
                valid_reg     <= '1';
                valid_counter <= 1;
            elsif valid_counter = 1 then
                valid_reg     <= '1';
                valid_counter <= 0;
            else
                valid_reg <= '0';
            end if;
        end if;
    end process;

    data_out  <= data_reg;
    valid_out <= valid_reg;
end Behavioral;
