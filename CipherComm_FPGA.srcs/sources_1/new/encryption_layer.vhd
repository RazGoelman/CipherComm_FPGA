----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2025 10:55:04 PM
-- Design Name: 
-- Module Name: encryption_layer - Behavioral
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

entity encryption_layer is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           scrambled_data_in : in STD_LOGIC_VECTOR (7 downto 0);
           scrambled_valid_in : in STD_LOGIC;
           encrypted_data_out : out STD_LOGIC_VECTOR (7 downto 0);
           encrypted_valid_out : out STD_LOGIC);
end encryption_layer;

architecture Behavioral of encryption_layer is

    signal internal_encrypted_data : STD_LOGIC_VECTOR(7 downto 0);
    signal internal_valid_out      : STD_LOGIC;
begin


    -- Encryption Interface Layer
    encryption_interface_inst : entity work.encryption_interface
        port map (
            clk               => clk,
            reset             => reset,
            data_in           => scrambled_data_in,
            valid_in          => scrambled_valid_in,
            data_out          => encrypted_data_out,
            valid_out         => encrypted_valid_out,
            logic_data_in     => internal_encrypted_data,
            logic_valid_out   => internal_valid_out
        );

    -- Encryption Logic Layer
    encryption_logic_inst : entity work.encryption_logic
        port map (
            clk              => clk,
            reset            => reset,
            data_in          => scrambled_data_in,
            valid_in         => scrambled_valid_in,
            data_out         => internal_encrypted_data,
            valid_out        => internal_valid_out
        );
end Behavioral;
