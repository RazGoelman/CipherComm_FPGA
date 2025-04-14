----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 07:06:15 PM
-- Design Name: 
-- Module Name: encoder_layer - Behavioral
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

entity encoder_layer is
    Port (
        clk          : in  std_logic;
        rst          : in  std_logic;
        data_in      : in  std_logic_vector(7 downto 0);
        valid_in     : in  std_logic;
        data_encoded : out std_logic_vector(7 downto 0);
        parity_bit   : out std_logic;
        crc_bit      : out std_logic_vector(7 downto 0);
        valid_out    : out std_logic
    );
end encoder_layer;

architecture Behavioral of encoder_layer is
    signal parity  : std_logic;
    signal crc_reg : std_logic_vector(7 downto 0);
begin

    process(clk, rst)
    begin
        if rst = '1' then
            data_encoded <= (others => '0');
            parity_bit   <= '0';
            crc_bit      <= (others => '0');
            valid_out    <= '0';
        elsif rising_edge(clk) then
            if valid_in = '1' then
                -- Simple encoding: invert bits
                data_encoded <= not data_in;

                -- Parity calculation (even parity)
                parity <= data_in(0) xor data_in(1) xor data_in(2) xor data_in(3) xor
                          data_in(4) xor data_in(5) xor data_in(6) xor data_in(7);
                parity_bit <= parity;

                -- Dummy CRC logic: rotate-left + xor (placeholder)
                crc_reg <= data_in(6 downto 0) & data_in(7); -- rotate left
                crc_reg <= crc_reg xor x"5A";  -- example fixed polynomial
                crc_bit <= crc_reg;

                valid_out <= '1';
            else
                valid_out <= '0';
            end if;
        end if;
    end process;

end Behavioral;
