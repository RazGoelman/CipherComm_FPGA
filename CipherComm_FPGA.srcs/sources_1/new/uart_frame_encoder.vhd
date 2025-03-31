----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2025 07:17:49 PM
-- Design Name: 
-- Module Name: uart_frame_encoder - Behavioral
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

entity uart_frame_encoder is
  Port (
    clk        : in  std_logic;
    rst        : in  std_logic;
    start      : in  std_logic;
    cmd_id     : in  std_logic_vector(7 downto 0);
    data_in    : in  std_logic_vector(7 downto 0);
    data_valid : in  std_logic;

    write_en   : out std_logic;
    tx_data    : out std_logic_vector(7 downto 0);
    busy       : out std_logic
  );
end uart_frame_encoder;

architecture Behavioral of uart_frame_encoder is

  type state_type is (IDLE, SEND_START, SEND_CMD, SEND_DATA, SEND_PARITY, DONE);
  signal state        : state_type := IDLE;

  signal parity_calc  : std_logic := '0';
  signal data_reg     : std_logic_vector(7 downto 0) := (others => '0');
  
begin

 process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        state        <= IDLE;
        write_en     <= '0';
        tx_data      <= (others => '0');
        parity_calc  <= '0';
        busy         <= '0';

      else
        case state is

          when IDLE =>
            write_en <= '0';
            if start = '1' then
              busy        <= '1';
              parity_calc <= "10100101" xor cmd_id;
              state       <= SEND_START;
            end if;

          when SEND_START =>
            tx_data  <= x"A5";
            write_en <= '1';
            state    <= SEND_CMD;

          when SEND_CMD =>
            tx_data  <= cmd_id;
            write_en <= '1';
            state    <= SEND_DATA;

          when SEND_DATA =>
            if data_valid = '1' then
              tx_data      <= data_in;
              parity_calc  <= parity_calc xor data_in;
              write_en     <= '1';
            else
              write_en     <= '0';
              state        <= SEND_PARITY;
            end if;

          when SEND_PARITY =>
            tx_data  <= parity_calc;
            write_en <= '1';
            state    <= DONE;

          when DONE =>
            write_en <= '0';
            busy     <= '0';
            state    <= IDLE;

          when others =>
            state <= IDLE;

        end case;
      end if;
    end if;
  end process;
  
end Behavioral;
