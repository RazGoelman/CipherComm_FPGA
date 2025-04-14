----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 09:42:33 AM
-- Design Name: 
-- Module Name: multi_comm_input - Behavioral
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

entity multi_comm_input is
    Port (
        clk, rst          : in  std_logic;
        uart_rx_data      : in  std_logic_vector(7 downto 0);
        uart_rx_valid     : in  std_logic;
        spi_data_in       : in  std_logic_vector(7 downto 0);
        spi_valid_in      : in  std_logic;
        i2c_data_in       : in  std_logic_vector(7 downto 0);
        i2c_valid_in      : in  std_logic;
        gpio_switches     : in  std_logic_vector(7 downto 0);
        gpio_valid        : in  std_logic;
        eth_data_in       : in  std_logic_vector(7 downto 0);
        eth_valid_in      : in  std_logic;
        data_out          : out std_logic_vector(7 downto 0);
        valid_out         : out std_logic
    );
end multi_comm_input;

architecture Behavioral of multi_comm_input is
begin
    process(clk, rst, uart_rx_valid, uart_rx_data,
        spi_valid_in, spi_data_in,
        i2c_valid_in, i2c_data_in,
        gpio_valid, gpio_switches,
        eth_valid_in, eth_data_in)

    begin
        data_out  <= (others => '0');
        valid_out <= '0';

        if uart_rx_valid = '1' then
            data_out  <= uart_rx_data;
            valid_out <= '1';
        elsif spi_valid_in = '1' then
            data_out  <= spi_data_in;
            valid_out <= '1';
        elsif i2c_valid_in = '1' then
            data_out  <= i2c_data_in;
            valid_out <= '1';
        elsif gpio_valid = '1' then
            data_out  <= gpio_switches;
            valid_out <= '1';
        elsif eth_valid_in = '1' then
            data_out  <= eth_data_in;
            valid_out <= '1';
        end if;
    end process;
    
end Behavioral;