----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2025 02:18:53 PM
-- Design Name: 
-- Module Name: data_output - Behavioral
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

entity data_output is
  Port (
    clk             : in  std_logic;
    rst             : in  std_logic;
    decrypted_data  : in  std_logic_vector(7 downto 0);
    valid_in        : in  std_logic;

    -- External control for output
    read_enable     : in  std_logic;

    -- Output data
    data_out        : out std_logic_vector(7 downto 0);
    data_valid      : out std_logic;

    -- FIFO status indicators
    fifo_full       : out std_logic;
    fifo_empty      : out std_logic
  );
end data_output;

architecture Behavioral of data_output is
  -- FIFO: 16-element circular buffer
  type fifo_array is array (0 to 15) of std_logic_vector(7 downto 0);
  signal fifo        : fifo_array := (others => (others => '0'));
  signal wr_ptr      : integer range 0 to 15 := 0;
  signal rd_ptr      : integer range 0 to 15 := 0;
  signal count       : integer range 0 to 16 := 0;

  signal temp_out    : std_logic_vector(7 downto 0) := (others => '0');
  signal valid_out   : std_logic := '0';
begin


  -- Write logic: enqueue decrypted data into FIFO
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        wr_ptr  <= 0;
        count   <= 0;
      elsif valid_in = '1' and count < 16 then
        fifo(wr_ptr) <= decrypted_data;
        wr_ptr       <= (wr_ptr + 1) mod 16;
        count        <= count + 1;
      end if;
    end if;
  end process;

  -- Read logic: dequeue data from FIFO when read_enable is asserted
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        rd_ptr     <= 0;
        temp_out   <= (others => '0');
        valid_out  <= '0';
      elsif read_enable = '1' and count > 0 then
        temp_out   <= fifo(rd_ptr);
        rd_ptr     <= (rd_ptr + 1) mod 16;
        count      <= count - 1;
        valid_out  <= '1';
      else
        valid_out <= '0';
      end if;
    end if;
  end process;

  -- Outputs
  data_out    <= temp_out;
  data_valid  <= valid_out;
  fifo_full   <= '1' when count = 16 else '0';
  fifo_empty  <= '1' when count = 0 else '0';
  
end Behavioral;
