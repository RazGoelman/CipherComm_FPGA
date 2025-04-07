----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2025 11:59:46 AM
-- Design Name: 
-- Module Name: unscrambler_layer - Behavioral
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

entity unscrambler_layer is
    Port ( 
        clk       : in STD_LOGIC;
        rst       : in STD_LOGIC;
        data_in   : in STD_LOGIC_VECTOR (7 downto 0);
        valid_in  : in STD_LOGIC;
        lfsr_in   : in STD_LOGIC_VECTOR (7 downto 0); -- נוסף הפורט החסר
        data_out  : out STD_LOGIC_VECTOR (7 downto 0);
        valid_out : out STD_LOGIC
    );
end unscrambler_layer;

architecture Behavioral of unscrambler_layer is
    signal internal_data_out  : STD_LOGIC_VECTOR (7 downto 0);
    signal internal_valid_out : STD_LOGIC;
begin

    unscrambler_inst : entity work.unscrambler
        port map (
            clk        => clk,
            rst        => rst,
            enable     => '1',
            valid_in   => valid_in,
            data_in    => data_in,
            lfsr_in    => lfsr_in, -- חיבור הפורט שהיה חסר
            data_out   => internal_data_out,
            valid_out  => internal_valid_out
        );

    data_out  <= internal_data_out;
    valid_out <= internal_valid_out;
    
end Behavioral;

