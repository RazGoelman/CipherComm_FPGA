----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2025 11:42:52 AM
-- Design Name: 
-- Module Name: unscrambler - Behavioral
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
    signal descrambled : STD_LOGIC_VECTOR (7 downto 0);

begin

  process(clk, rst)
    begin
        if rst = '1' then
            descrambled <= (others => '0');
            data_out    <= (others => '0');
            valid_out   <= '0';
        elsif rising_edge(clk) then
            if enable = '1' and valid_in = '1' then
                descrambled <= data_in xor lfsr_in;
                data_out    <= descrambled;
                valid_out   <= '1';
            else
                valid_out   <= '0';
            end if;
        end if;
    end process;
    
end Behavioral;
