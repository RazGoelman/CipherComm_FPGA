----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2025 05:51:06 PM
-- Design Name: 
-- Module Name: uart_tx_with_parity - Behavioral
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

entity uart_tx_with_parity is
  Port (
    clk           : in  std_logic;
    rst           : in  std_logic;

    write_en      : in  std_logic;
    tx_data_in    : in  std_logic_vector(7 downto 0);
    fifo_full     : out std_logic;

    tx_line       : out std_logic;
    tx_busy       : out std_logic
  );
end uart_tx_with_parity;

architecture Behavioral of uart_tx_with_parity is

  constant BAUD_DIV : integer := 104;

  type fifo_array is array (0 to 15) of std_logic_vector(7 downto 0);
  signal fifo      : fifo_array := (others => (others => '0'));
  signal wr_ptr    : integer range 0 to 15 := 0;
  signal rd_ptr    : integer range 0 to 15 := 0;
  signal count     : integer range 0 to 16 := 0;

  signal tx_shift  : std_logic_vector(10 downto 0) := (others => '1'); -- stop + parity + data + start
  signal clk_cnt   : integer := 0;
  signal bit_cnt   : integer range 0 to 10 := 0;
  signal sending   : std_logic := '0';

  signal parity_bit : std_logic;
begin


  -- FIFO write
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        wr_ptr <= 0;
        count  <= 0;
      elsif write_en = '1' and count < 16 then
        fifo(wr_ptr) <= tx_data_in;
        wr_ptr <= (wr_ptr + 1) mod 16;
        count  <= count + 1;
      end if;
    end if;
  end process;

  -- UART TX logic
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        rd_ptr    <= 0;
        clk_cnt   <= 0;
        bit_cnt   <= 0;
        sending   <= '0';
        tx_line   <= '1';
        tx_busy   <= '0';

      elsif sending = '0' and count > 0 then
        parity_bit <= fifo(rd_ptr)(0) xor fifo(rd_ptr)(1) xor fifo(rd_ptr)(2) xor fifo(rd_ptr)(3) xor
                      fifo(rd_ptr)(4) xor fifo(rd_ptr)(5) xor fifo(rd_ptr)(6) xor fifo(rd_ptr)(7);

        tx_shift <= '1' & parity_bit & fifo(rd_ptr) & '0';
        rd_ptr   <= (rd_ptr + 1) mod 16;
        count    <= count - 1;
        sending  <= '1';
        bit_cnt  <= 0;
        clk_cnt  <= 0;
        tx_busy  <= '1';

      elsif sending = '1' then
        if clk_cnt = BAUD_DIV then
          tx_line <= tx_shift(bit_cnt);
          bit_cnt <= bit_cnt + 1;
          clk_cnt <= 0;

          if bit_cnt = 10 then
            sending <= '0';
            tx_busy <= '0';
          end if;
        else
          clk_cnt <= clk_cnt + 1;
        end if;
      end if;
    end if;
  end process;

  fifo_full <= '1' when count = 16 else '0';
  
end Behavioral;
