library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level_tb is
end top_level_tb;

architecture sim of top_level_tb is

    -- Component declaration
    component top_level
        Port (
            clk                    : in  std_logic;
            rst                    : in  std_logic;
            uart_rx_data           : in  std_logic_vector(7 downto 0);
            uart_rx_valid          : in  std_logic;
            spi_data_in            : in  std_logic_vector(7 downto 0);
            spi_valid_in           : in  std_logic;
            i2c_data_in            : in  std_logic_vector(7 downto 0);
            i2c_valid_in           : in  std_logic;
            gpio_switches          : in  std_logic_vector(7 downto 0);
            gpio_valid             : in  std_logic;
            eth_data_in            : in  std_logic_vector(7 downto 0);
            eth_valid_in           : in  std_logic;
            tx_data_out            : out std_logic_vector(7 downto 0);
            tx_valid_out           : out std_logic;
            error_led              : out std_logic;
            leds_out               : out std_logic_vector(7 downto 0);
            sensor_data_out_ext    : out std_logic_vector(7 downto 0);
            sensor_valid_out_ext   : out std_logic;
            data_encoded_ext       : out std_logic_vector(7 downto 0);
            encoded_valid_ext      : out std_logic;
            fifo_wr_en_ext         : out std_logic;
            fifo_din_ext           : out std_logic_vector(17 downto 0);
            fifo_full_ext          : out std_logic;
            fifo_empty_ext         : out std_logic;
            fifo_rd_en_ext         : out std_logic;
            valid_to_decryption_dbg: out std_logic;
            to_decryption_dbg      : out std_logic_vector(7 downto 0);
            decoded_data_dbg       : out std_logic_vector(7 downto 0);
            decoded_valid_dbg      : out std_logic;
            crc_error_dbg          : out std_logic;
            decrypted_data_dbg     : out std_logic_vector(7 downto 0);
            unscrambled_data_dbg   : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signals
    signal clk_tb                   : std_logic := '0';
    signal rst_tb                   : std_logic := '1';
    signal uart_rx_data_tb          : std_logic_vector(7 downto 0) := (others => '0');
    signal uart_rx_valid_tb         : std_logic := '0';
    signal spi_data_in_tb           : std_logic_vector(7 downto 0) := (others => '0');
    signal spi_valid_in_tb          : std_logic := '0';
    signal i2c_data_in_tb           : std_logic_vector(7 downto 0) := (others => '0');
    signal i2c_valid_in_tb          : std_logic := '0';
    signal gpio_switches_tb         : std_logic_vector(7 downto 0) := (others => '0');
    signal gpio_valid_tb            : std_logic := '0';
    signal eth_data_in_tb           : std_logic_vector(7 downto 0) := (others => '0');
    signal eth_valid_in_tb          : std_logic := '0';
    signal tx_data_out_tb           : std_logic_vector(7 downto 0);
    signal tx_valid_out_tb          : std_logic;
    signal error_led_tb             : std_logic;
    signal leds_out_tb              : std_logic_vector(7 downto 0);
    signal sensor_data_out_ext_tb   : std_logic_vector(7 downto 0);
    signal sensor_valid_out_ext_tb  : std_logic;
    signal data_encoded_ext_tb      : std_logic_vector(7 downto 0);
    signal encoded_valid_ext_tb     : std_logic;
    signal fifo_wr_en_ext_tb        : std_logic;
    signal fifo_din_ext_tb          : std_logic_vector(17 downto 0);
    signal fifo_full_ext_tb         : std_logic;
    signal fifo_empty_ext_tb        : std_logic;
    signal fifo_rd_en_ext_tb        : std_logic;
    signal valid_to_decryption_dbg_tb : std_logic;
    signal to_decryption_dbg_tb     : std_logic_vector(7 downto 0);
    signal decoded_data_dbg_tb      : std_logic_vector(7 downto 0);
    signal decoded_valid_dbg_tb     : std_logic;
    signal crc_error_dbg_tb         : std_logic;
    signal decrypted_data_dbg_tb    : std_logic_vector(7 downto 0);
    signal unscrambled_data_dbg_tb  : std_logic_vector(7 downto 0);

    -- Clock period constant
    constant clk_period : time := 10 ns;

begin

    -- Clock generation
    clk_process : process
    begin
        clk_tb <= '0';
        wait for clk_period / 2;
        clk_tb <= '1';
        wait for clk_period / 2;
    end process;

    -- Instantiate UUT
    uut: top_level
        port map (
            clk                    => clk_tb,
            rst                    => rst_tb,
            uart_rx_data           => uart_rx_data_tb,
            uart_rx_valid          => uart_rx_valid_tb,
            spi_data_in            => spi_data_in_tb,
            spi_valid_in           => spi_valid_in_tb,
            i2c_data_in            => i2c_data_in_tb,
            i2c_valid_in           => i2c_valid_in_tb,
            gpio_switches          => gpio_switches_tb,
            gpio_valid             => gpio_valid_tb,
            eth_data_in            => eth_data_in_tb,
            eth_valid_in           => eth_valid_in_tb,
            tx_data_out            => tx_data_out_tb,
            tx_valid_out           => tx_valid_out_tb,
            error_led              => error_led_tb,
            leds_out               => leds_out_tb,
            sensor_data_out_ext    => sensor_data_out_ext_tb,
            sensor_valid_out_ext   => sensor_valid_out_ext_tb,
            data_encoded_ext       => data_encoded_ext_tb,
            encoded_valid_ext      => encoded_valid_ext_tb,
            fifo_wr_en_ext         => fifo_wr_en_ext_tb,
            fifo_din_ext           => fifo_din_ext_tb,
            fifo_full_ext          => fifo_full_ext_tb,
            fifo_empty_ext         => fifo_empty_ext_tb,
            fifo_rd_en_ext         => fifo_rd_en_ext_tb,
            valid_to_decryption_dbg => valid_to_decryption_dbg_tb,
            to_decryption_dbg      => to_decryption_dbg_tb,
            decoded_data_dbg       => decoded_data_dbg_tb,
            decoded_valid_dbg      => decoded_valid_dbg_tb,
            crc_error_dbg          => crc_error_dbg_tb,
            decrypted_data_dbg     => decrypted_data_dbg_tb,
            unscrambled_data_dbg   => unscrambled_data_dbg_tb
        );

    -- Stimulus process
    stimulus : process
    begin
        -- Reset system
        rst_tb <= '1';
        wait for 30 ns;
        rst_tb <= '0';

        -- Wait for system to stabilize
        wait for 50 ns;

        -- Test Case 1: Correct Data and CRC
        uart_rx_data_tb <= x"5A";  -- Data byte
        uart_rx_valid_tb <= '1';
        wait for clk_period;
        uart_rx_valid_tb <= '0';
        wait for clk_period * 4;

        uart_rx_data_tb <= x"07";  -- CRC byte (assuming correct CRC)
        uart_rx_valid_tb <= '1';
        wait for clk_period;
        uart_rx_valid_tb <= '0';
        wait for clk_period * 10;

        -- Test Case 2: Incorrect CRC
        uart_rx_data_tb <= x"A5";  -- Data byte
        uart_rx_valid_tb <= '1';
        wait for clk_period;
        uart_rx_valid_tb <= '0';
        wait for clk_period * 4;

        uart_rx_data_tb <= x"00";  -- Bad CRC
        uart_rx_valid_tb <= '1';
        wait for clk_period;
        uart_rx_valid_tb <= '0';

        -- Wait for output to propagate
        wait for clk_period * 20;

        -- Assertions
        assert decoded_data_dbg_tb = x"5A"
        report "Correct data received" severity note;

        assert error_led_tb = '1'
        report "CRC error triggered error LED as expected" severity note;

        report "End of simulation" severity note;
        wait;
    end process;

end sim;
