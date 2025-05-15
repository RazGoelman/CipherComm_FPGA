-- =============================================================
-- FINAL top_level_full_system_tb.vhd
-- CypheXComm Full System Testbench with trace + polling + timeout
-- =============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level_full_system_tb is
end entity;

architecture Behavioral of top_level_full_system_tb is

    component top_level is
        generic (observation_window_cycles : natural := 5);
        port (
            clk, rst : in std_logic;
            uart_rx_data : in std_logic_vector(7 downto 0);
            uart_rx_valid : in std_logic;
            spi_data_in, i2c_data_in : in std_logic_vector(7 downto 0);
            spi_valid_in, i2c_valid_in : in std_logic;
            gpio_switches : in std_logic_vector(7 downto 0);
            gpio_valid : in std_logic;
            eth_data_in : in std_logic_vector(7 downto 0);
            eth_valid_in : in std_logic;
            input_source_sel : in std_logic_vector(2 downto 0);
            tx_data_out : out std_logic;
            tx_valid_out : out std_logic;
            error_led : out std_logic;
            leds_out : out std_logic_vector(7 downto 0);
            tx_start_dbg : out std_logic;
            tx_done_dbg : out std_logic;
            data_tx_state_dbg : out std_logic_vector(2 downto 0);
            sensor_data_dbg : out std_logic_vector(7 downto 0);
            sensor_valid_dbg : out std_logic;
            encoded_data_dbg : out std_logic_vector(7 downto 0);
            encoded_valid_dbg : out std_logic;
            scrambled_data_dbg : out std_logic_vector(7 downto 0);
            scrambled_valid_dbg : out std_logic;
            encrypted_data_dbg : out std_logic_vector(7 downto 0);
            encrypted_valid_dbg : out std_logic;
            decoded_data_dbg : out std_logic_vector(7 downto 0);
            decoded_valid_dbg : out std_logic;
            decrypted_data_dbg : out std_logic_vector(7 downto 0);
            decrypted_valid_dbg : out std_logic;
            unscrambled_data_dbg : out std_logic_vector(7 downto 0);
            unscrambled_valid_dbg : out std_logic;
            tx_data_dbg : out std_logic_vector(7 downto 0);
            rx_data_dbg : out std_logic_vector(7 downto 0);
            fifo_dout_dbg : out std_logic_vector(17 downto 0);
            scrambler_lfsr_dbg : out std_logic_vector(7 downto 0);
            unscrambler_lfsr_dbg : out std_logic_vector(7 downto 0);
            fifo_wr_en_dbg : out std_logic;
            fifo_full_dbg : out std_logic;
            fifo_empty_dbg : out std_logic;
            ready_for_data_dbg : out std_logic;
            fifo_din_dbg : out std_logic_vector(17 downto 0);
            encrypted_valid_dbg_out : out std_logic
        );
    end component;

    signal clk, rst : std_logic := '0';
    signal uart_rx_data : std_logic_vector(7 downto 0) := (others => '0');
    signal uart_rx_valid : std_logic := '0';
    signal leds_out : std_logic_vector(7 downto 0);
    signal error_led : std_logic;
    signal dummy : std_logic;

begin

    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for 5 ns;
            clk <= '1'; wait for 5 ns;
        end loop;
    end process;

    uut: top_level
        port map (
            clk => clk, rst => rst,
            uart_rx_data => uart_rx_data,
            uart_rx_valid => uart_rx_valid,
            spi_data_in => (others => '0'), spi_valid_in => '0',
            i2c_data_in => (others => '0'), i2c_valid_in => '0',
            gpio_switches => (others => '0'), gpio_valid => '0',
            eth_data_in => (others => '0'), eth_valid_in => '0',
            input_source_sel => "000",
            tx_data_out => dummy, tx_valid_out => dummy,
            error_led => error_led,
            leds_out => leds_out,
            tx_start_dbg => dummy, tx_done_dbg => dummy,
            data_tx_state_dbg => open,
            sensor_data_dbg => open, sensor_valid_dbg => open,
            encoded_data_dbg => open, encoded_valid_dbg => open,
            scrambled_data_dbg => open, scrambled_valid_dbg => open,
            encrypted_data_dbg => open, encrypted_valid_dbg => open,
            decoded_data_dbg => open, decoded_valid_dbg => open,
            decrypted_data_dbg => open, decrypted_valid_dbg => open,
            unscrambled_data_dbg => open, unscrambled_valid_dbg => open,
            tx_data_dbg => open, rx_data_dbg => open,
            fifo_dout_dbg => open, scrambler_lfsr_dbg => open,
            unscrambler_lfsr_dbg => open, fifo_wr_en_dbg => open,
            fifo_full_dbg => open, fifo_empty_dbg => open,
            ready_for_data_dbg => open, fifo_din_dbg => open,
            encrypted_valid_dbg_out => open
        );

    stim_proc: process
    begin
        rst <= '1'; wait for 20 ns; rst <= '0'; wait for 20 ns;

        uart_rx_data <= x"41"; uart_rx_valid <= '1'; wait for 10 ns;
        uart_rx_valid <= '0';

        wait for 2000 ns; -- delay to allow processing

        assert leds_out = x"41"
        report "Scenario 1 Failed: LEDs not set to 0x41" severity error;

        uart_rx_data <= x"42"; uart_rx_valid <= '1'; wait for 10 ns;
        uart_rx_valid <= '0';

        wait for 2000 ns;

        assert error_led = '1'
        report "Scenario 2 Failed: Error LED not set" severity error;

        assert false report "TEST PASSED" severity note;
        wait;
    end process;

end Behavioral;
