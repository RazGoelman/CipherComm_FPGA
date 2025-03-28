----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2025 04:41:52 PM
-- Design Name: 
-- Module Name: scrambler - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity scrambler is
    Port ( 
        clk        : in  STD_LOGIC;
        rst        : in  STD_LOGIC;
        enable     : in  STD_LOGIC;
        valid_in   : in  STD_LOGIC;
        data_in    : in  STD_LOGIC_VECTOR (7 downto 0);
        data_out   : out STD_LOGIC_VECTOR (7 downto 0);
        valid_out  : out STD_LOGIC
    );
end scrambler;

architecture Behavioral of scrambler is

    signal lfsr       : STD_LOGIC_VECTOR (7 downto 0) := "10101010";
    signal scrambled  : STD_LOGIC_VECTOR (7 downto 0);

begin

    process(clk, rst)
    begin
        if rst = '1' then
            lfsr       <= "10101010";
            scrambled  <= (others => '0');
            data_out   <= (others => '0');
            valid_out  <= '0';
        elsif rising_edge(clk) then
            if enable = '1' and valid_in = '1' then
                -- LFSR polynomial: x^8 + x^6 + x^5 + x^4 + 1
                lfsr      <= lfsr(6 downto 0) & (lfsr(7) xor lfsr(5) xor lfsr(4) xor lfsr(3));
                scrambled <= data_in xor lfsr;
                data_out  <= scrambled;
                valid_out <= '1';
            else
                valid_out <= '0';
            end if;
        end if;
    end process;

end Behavioral;
