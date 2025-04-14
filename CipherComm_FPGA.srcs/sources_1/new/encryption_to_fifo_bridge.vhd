----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 11:26:41 AM
-- Design Name: 
-- Module Name: encryption_to_fifo_bridge - Behavioral
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

entity encryption_to_fifo_bridge is
    Port (
        clk              : in  std_logic;
        rst              : in  std_logic;

        -- From encryption layer
        encrypted_data   : in  std_logic_vector(7 downto 0);
        crc_bitstream    : in  std_logic_vector(7 downto 0);
        parity_bit       : in  std_logic;
        valid_in         : in  std_logic;

        -- Flow control from FIFO
        ready_for_data   : in  std_logic;

        -- To FIFO
        fifo_din         : out std_logic_vector(17 downto 0);
        fifo_wr_en       : out std_logic
    );
end encryption_to_fifo_bridge;

architecture Behavioral of encryption_to_fifo_bridge is
    constant START_FRAME : std_logic := '1';
begin
    process(clk, rst)
    begin
        if rst = '1' then
            fifo_din   <= (others => '0');
            fifo_wr_en <= '0';
        elsif rising_edge(clk) then
            if valid_in = '1' and ready_for_data = '1' then
                fifo_din   <= START_FRAME & parity_bit & crc_bitstream & encrypted_data;
                fifo_wr_en <= '1';
            else
                fifo_wr_en <= '0';
            end if;
        end if;
    end process;
end Behavioral;

