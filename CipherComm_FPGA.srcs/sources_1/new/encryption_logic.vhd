-- encryption_logic.vhd - FINAL SAFE VERSION
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity encryption_logic is
    Port (
        clk       : in STD_LOGIC;
        reset     : in STD_LOGIC;
        data_in   : in STD_LOGIC_VECTOR (7 downto 0);
        valid_in  : in STD_LOGIC;
        data_out  : out STD_LOGIC_VECTOR (7 downto 0);
        valid_out : out STD_LOGIC
    );
end encryption_logic;

architecture Behavioral of encryption_logic is
    constant XOR_KEY : STD_LOGIC_VECTOR(7 downto 0) := x"5A";
    signal data_reg   : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg  : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            data_reg   <= (others => '0');
            valid_reg  <= '0';
        elsif rising_edge(clk) then
            if valid_in = '1' then
                data_reg  <= data_in xor XOR_KEY;
                valid_reg <= '1';
            else
                valid_reg <= '0';
            end if;
        end if;
    end process;

    data_out  <= data_reg;
    valid_out <= valid_reg;

end Behavioral;