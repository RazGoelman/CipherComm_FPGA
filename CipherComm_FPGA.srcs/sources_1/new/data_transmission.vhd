----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2025 08:48:43 PM
-- Design Name: 
-- Module Name: data_transmission - Behavioral
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

--architecture
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_transmission is
  Port (
    clk             : in  std_logic;
    rst             : in  std_logic;
    fifo_empty      : in  std_logic;
    fifo_full       : in  std_logic;
    fifo_dout       : in  std_logic_vector(17 downto 0);
    fifo_rd_en      : out std_logic;
    tx_data_out     : out std_logic_vector(7 downto 0);
    tx_valid_out    : out std_logic;
    ready_for_data  : out std_logic
  );
end data_transmission;

architecture Behavioral of data_transmission is
  signal rd_en_int : std_logic := '0';

begin

  -- Flow control feedback: allow upstream to write only when FIFO not full
  ready_for_data <= not fifo_full;
  
-- Read process from FIFO to UART interface
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        rd_en_int     <= '0';
        tx_data_out   <= (others => '0');
        tx_valid_out  <= '0';
      else
        if fifo_empty = '0' and fifo_dout(8) = '1' then
          rd_en_int     <= '1';  -- Enable read
          tx_data_out   <= fifo_dout(7 downto 0);
          tx_valid_out  <= '1';
        else
          rd_en_int     <= '0';
          tx_valid_out  <= '0';
        end if;
      end if;
    end if;
  end process;

  fifo_rd_en <= rd_en_int;

end Behavioral;
