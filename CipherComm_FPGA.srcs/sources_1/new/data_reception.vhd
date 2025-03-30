----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2025 11:20:07 PM
-- Design Name: 
-- Module Name: data_reception - Behavioral
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

entity data_reception is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           rx_data_in : in STD_LOGIC_VECTOR (7 downto 0);
           rx_valid_in : in STD_LOGIC;
           received_data : out STD_LOGIC_VECTOR (7 downto 0);
           received_valid : out STD_LOGIC);
end data_reception;

architecture Behavioral of data_reception is
  signal data_reg    : std_logic_vector(7 downto 0) := (others => '0');
  signal valid_reg   : std_logic := '0';
begin
process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        data_reg   <= (others => '0');
        valid_reg  <= '0';
      else
        if rx_valid_in = '1' then
          data_reg   <= rx_data_in;
          valid_reg  <= '1';
        else
          valid_reg  <= '0';
        end if;
      end if;
    end if;
  end process;

  received_data  <= data_reg;
  received_valid <= valid_reg;

end Behavioral;
