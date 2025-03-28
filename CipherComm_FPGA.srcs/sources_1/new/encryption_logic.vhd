----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2025 08:50:19 AM
-- Design Name: 
-- Module Name: encryption_logic - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encryption_logic is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);  
           valid_in : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           valid_out : out STD_LOGIC);
end encryption_logic;

architecture Behavioral of encryption_logic is
 constant XOR_KEY : STD_LOGIC_VECTOR(7 downto 0) := x"5A"; 
begin
process(clk, reset)
    begin
        if reset = '1' then
            data_out  <= (others => '0');
            valid_out <= '0';
        elsif rising_edge(clk) then
            if valid_in = '1' then
                data_out  <= data_in xor XOR_KEY;
                valid_out <= '1';
            else
                valid_out <= '0';
            end if;
        end if;
    end process;

end Behavioral;
