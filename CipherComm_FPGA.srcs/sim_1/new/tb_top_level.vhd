----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 01:05:53 AM
-- Design Name: 
-- Module Name: tb_top_level - Behavioral
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

entity tb_top_level is
end tb_top_level;

architecture sim of tb_top_level is
  signal clk           : std_logic := '0';
  signal rst           : std_logic := '1';

  signal uart_rx_data  : std_logic_vector(7 downto 0) := (others => '0');
  signal uart_rx_valid : std_logic := '0';

  signal spi_data_in   : std_logic_vector(7 downto 0) := (others => '0');
  signal spi_valid_in  : std_logic := '0';

  signal i2c_data_in   : std_logic_vector(7 downto 0) := (others => '0');
  signal i2c_valid_in  : std_logic := '0';

  signal gpio_switches : std_logic_vector(7 downto 0) := (others => '0');
  signal gpio_valid    : std_logic := '0';

  signal eth_data_in   : std_logic_vector(7 downto 0) := (others => '0');
  signal eth_valid_in  : std_logic := '0';

  signal tx_data_out   : std_logic_vector(7 downto 0);
  signal tx_valid_out  : std_logic;

  signal error_led     : std_logic;
  signal leds_out      : std_logic_vector(7 downto 0);

  constant clk_period : time := 10 ns;

begin

  -- Clock generation
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period / 2;
    clk <= '1';
    wait for clk_period / 2;
  end process;

  -- UUT
  uut : entity work.top_level
    port map (
      clk           => clk,
      rst           => rst,
      uart_rx_data  => uart_rx_data,
      uart_rx_valid => uart_rx_valid,
      spi_data_in   => spi_data_in,
      spi_valid_in  => spi_valid_in,
      i2c_data_in   => i2c_data_in,
      i2c_valid_in  => i2c_valid_in,
      gpio_switches => gpio_switches,
      gpio_valid    => gpio_valid,
      eth_data_in   => eth_data_in,
      eth_valid_in  => eth_valid_in,
      tx_data_out   => tx_data_out,
      tx_valid_out  => tx_valid_out,
      error_led     => error_led,
      leds_out      => leds_out
    );

  -- Stimulus
  stim_proc : process
  begin
    wait for 50 ns;
    rst <= '0';  -- release reset

    wait for 100 ns;
    uart_rx_data  <= x"A5";  -- נתון לבדיקה
    uart_rx_valid <= '1';
    wait for clk_period;
    uart_rx_valid <= '0';

    wait for 2000 ns;  -- זמן עיבוד למערכת
    report "End of simulation" severity note;
    wait;
  end process;

end sim;
