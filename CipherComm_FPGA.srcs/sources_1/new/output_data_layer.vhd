----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2025 05:49:35 PM
-- Design Name: 
-- Module Name: output_data_layer - Behavioral
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

entity output_data_layer is
  Port (
    clk         : in  std_logic;
    rst         : in  std_logic;

    -- Input from decryption layer
    decrypted_data : in  std_logic_vector(7 downto 0);
    valid_in       : in  std_logic;

    -- Start signal to send a full frame
    start_frame    : in  std_logic;
    cmd_id         : in  std_logic_vector(7 downto 0);

    -- UART output
    tx_line        : out std_logic;
    tx_busy        : out std_logic
  );
end output_data_layer;

architecture Behavioral of output_data_layer is
-- Signals between encoder and tx
  signal tx_data     : std_logic_vector(7 downto 0);
  signal write_en    : std_logic;
  signal fifo_full   : std_logic;
  signal encoder_busy: std_logic;
  
begin


  -- Instantiate UART Frame Encoder
  frame_enc : entity work.uart_frame_encoder
    port map (
      clk        => clk,
      rst        => rst,
      start      => start_frame,
      cmd_id     => cmd_id,
      data_in    => decrypted_data,
      data_valid => valid_in,
      write_en   => write_en,
      tx_data    => tx_data,
      busy       => encoder_busy
    );

  -- Instantiate UART TX with Parity
  uart_tx : entity work.uart_tx_with_parity
    port map (
      clk        => clk,
      rst        => rst,
      write_en   => write_en,
      tx_data_in => tx_data,
      fifo_full  => fifo_full,
      tx_line    => tx_line,
      tx_busy    => tx_busy
    );
end Behavioral;
