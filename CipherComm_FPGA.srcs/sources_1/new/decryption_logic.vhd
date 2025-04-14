----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2025 05:22:32 PM
-- Design Name: 
-- Module Name: decryption_logic - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decryption_logic is
    Port (
        clk                  : in  std_logic;
        rst                  : in  std_logic;
        encrypted_data       : in  std_logic_vector(7 downto 0);
        valid_in             : in  std_logic;
        decrypted_data       : out std_logic_vector(7 downto 0);
        valid_out            : out std_logic
    );
end decryption_logic;

architecture Behavioral of decryption_logic is
    constant DECRYPTION_KEY : std_logic_vector(7 downto 0) := "10101010";  -- Example key
    signal decrypted_reg    : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg        : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                decrypted_reg <= (others => '0');
                valid_reg     <= '0';
            elsif valid_in = '1' then
                decrypted_reg <= encrypted_data xor DECRYPTION_KEY;
                valid_reg     <= '1';
            else
                valid_reg     <= '0';
            end if;
        end if;
    end process;

    decrypted_data <= decrypted_reg;
    valid_out      <= valid_reg;

end Behavioral;