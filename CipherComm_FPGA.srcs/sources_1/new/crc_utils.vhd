----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2025 10:44:02 AM
-- Design Name: 
-- Module Name: crc_utils - Behavioral
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

package crc_utils_pkg is
    function crc8(data : std_logic_vector(7 downto 0)) return std_logic_vector;
end package;

package body crc_utils_pkg is

    function crc8(data : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable crc : std_logic_vector(7 downto 0) := (others => '0');
        variable din : std_logic_vector(7 downto 0) := data;
    begin
        for i in 7 downto 0 loop
            if (crc(7) xor din(i)) = '1' then
                crc := (crc(6 downto 0) & '0') xor "00000111";  -- Poly x^8 + x^2 + x + 1 = 0x07
            else
                crc := crc(6 downto 0) & '0';
            end if;
        end loop;
        return crc;
    end function;

end package body;

