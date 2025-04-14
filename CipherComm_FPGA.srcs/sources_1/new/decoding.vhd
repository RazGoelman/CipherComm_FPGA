----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 10:41:46 AM
-- Design Name: 
-- Module Name: decoding - Behavioral
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

entity decoding is
    Port (
        clk          : in  STD_LOGIC;                          -- System clock
        rst          : in  STD_LOGIC;                          -- Asynchronous reset
        valid_in     : in  STD_LOGIC;                          -- Valid signal for incoming data
        data_in      : in  STD_LOGIC_VECTOR(7 downto 0);       -- Decoded input data (from unscrambler)
        decoded_out  : out STD_LOGIC_VECTOR(7 downto 0);       -- Final decoded data output
        valid_out    : out STD_LOGIC                           -- Output valid signal
    );
end decoding;

architecture Behavioral of decoding is
begin

    -- Main process for decoding
    process(clk, rst)
    begin
        if rst = '1' then
            -- Reset all outputs
            decoded_out <= (others => '0');
            valid_out   <= '0';
        elsif rising_edge(clk) then
            if valid_in = '1' then
                -- Data is considered valid, pass it through
                -- Here you can apply more decoding logic if needed
                decoded_out <= data_in;
                valid_out   <= '1';
            else
                -- No valid input data
                valid_out <= '0';
            end if;
        end if;
    end process;

end Behavioral;
