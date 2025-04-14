----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 01:02:01 PM
-- Design Name: 
-- Module Name: output_display - Behavioral
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

entity output_display is
    Port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        data_in     : in  std_logic_vector(7 downto 0);
        valid_in    : in  std_logic;
        leds_out    : out std_logic_vector(7 downto 0)
    );
end output_display;

architecture Behavioral of output_display is
    signal led_reg : std_logic_vector(7 downto 0) := (others => '0');
begin

    process(clk, rst)
    begin
        if rst = '1' then
            led_reg <= (others => '0');
        elsif rising_edge(clk) then
            if valid_in = '1' then
                led_reg <= data_in;
            end if;
        end if;
    end process;

    leds_out <= led_reg;

end Behavioral;

