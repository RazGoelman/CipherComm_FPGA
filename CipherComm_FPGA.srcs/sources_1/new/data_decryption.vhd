----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2025 10:33:48 AM
-- Design Name: 
-- Module Name: data_decryption - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_decryption is
  Port (
    clk            : in  STD_LOGIC;
    reset          : in  STD_LOGIC;
    encrypted_in   : in  STD_LOGIC_VECTOR(7 downto 0);
    valid_in       : in  STD_LOGIC;
    decrypted_out  : out STD_LOGIC_VECTOR(7 downto 0);
    valid_out      : out STD_LOGIC
  );
end data_decryption;

architecture Behavioral of data_decryption is
  constant XOR_KEY : STD_LOGIC_VECTOR(7 downto 0) := x"5A";
  signal decrypted_data : STD_LOGIC_VECTOR(7 downto 0);
  signal descrambled_data : STD_LOGIC_VECTOR(7 downto 0);
  signal lfsr : STD_LOGIC_VECTOR(7 downto 0) := "10101010";
begin

process(clk, reset)
  begin
    if reset = '1' then
      decrypted_data    <= (others => '0');
      descrambled_data  <= (others => '0');
      decrypted_out     <= (others => '0');
      valid_out         <= '0';
      lfsr              <= "10101010";  -- same seed as in scrambler
    elsif rising_edge(clk) then
      if valid_in = '1' then
        -- Step 1: Decrypt with XOR key
        decrypted_data <= encrypted_in xor XOR_KEY;

        -- Step 2: Descramble (same LFSR sequence, apply XOR again)
        lfsr <= lfsr(6 downto 0) & (lfsr(7) xor lfsr(5) xor lfsr(4) xor lfsr(3));
        descrambled_data <= decrypted_data xor lfsr;

        decrypted_out <= descrambled_data;
        valid_out     <= '1';
      else
        valid_out <= '0';
      end if;
    end if;
  end process;
  
end Behavioral;
