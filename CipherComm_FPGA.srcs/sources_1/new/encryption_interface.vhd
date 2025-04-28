library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encryption_interface is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        data_in : in STD_LOGIC_VECTOR(7 downto 0);
        valid_in : in STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR(7 downto 0);
        valid_out : out STD_LOGIC;
        logic_data_in : in STD_LOGIC_VECTOR(7 downto 0);
        logic_valid_out : in STD_LOGIC
    );
end encryption_interface;

architecture Behavioral of encryption_interface is

begin

process(clk, reset)
begin
    if reset = '1' then
        data_out  <= (others => '0');
        valid_out <= '0';
    elsif rising_edge(clk) then
        if valid_in = '1' then
            data_out  <= logic_data_in;
            valid_out <= logic_valid_out;
        else
            data_out <= (others => '0');
            valid_out <= '0';
        end if;
    end if;
end process;

end Behavioral;