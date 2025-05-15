-- encryption_interface.vhd - FINAL SAFE VERSION
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity encryption_interface is
    Port (
        clk             : in STD_LOGIC;
        reset           : in STD_LOGIC;
        data_in         : in STD_LOGIC_VECTOR(7 downto 0);
        valid_in        : in STD_LOGIC;
        data_out        : out STD_LOGIC_VECTOR(7 downto 0);
        valid_out       : out STD_LOGIC;
        logic_data_in   : in STD_LOGIC_VECTOR(7 downto 0);
        logic_valid_out : in STD_LOGIC
    );
end encryption_interface;

architecture Behavioral of encryption_interface is
    signal data_buffer       : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_buffer      : std_logic := '0';
    signal pending_data_in   : std_logic_vector(7 downto 0) := (others => '0');
    signal pending_valid     : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            data_out        <= (others => '0');
            valid_out       <= '0';
            data_buffer     <= (others => '0');
            valid_buffer    <= '0';
            pending_data_in <= (others => '0');
            pending_valid   <= '0';

        elsif rising_edge(clk) then
            if valid_in = '1' then
                pending_data_in <= data_in;
                pending_valid <= '1';
            end if;

            if logic_valid_out = '1' and pending_valid = '1' then
                data_buffer <= logic_data_in;
                valid_buffer <= '1';
                pending_valid <= '0';
            else
                valid_buffer <= '0';
            end if;

            data_out <= data_buffer;
            valid_out <= valid_buffer;
        end if;
    end process;

end Behavioral;