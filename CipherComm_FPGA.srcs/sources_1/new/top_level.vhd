-- 📦 Updated Module: top_level.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;

        -- Physical inputs
        uart_rx_data  : in  std_logic_vector(7 downto 0);
        uart_rx_valid : in  std_logic;
        spi_data_in   : in  std_logic_vector(7 downto 0);
        spi_valid_in  : in  std_logic;
        i2c_data_in   : in  std_logic_vector(7 downto 0);
        i2c_valid_in  : in  std_logic;
        gpio_switches : in  std_logic_vector(7 downto 0);
        gpio_valid    : in  std_logic;
        eth_data_in   : in  std_logic_vector(7 downto 0);
        eth_valid_in  : in  std_logic;

        -- UART transmit output
        tx_data_out   : out std_logic_vector(7 downto 0);
        tx_valid_out  : out std_logic;

        -- LED error indication
        error_led     : out std_logic;

        -- Final output LEDs
        leds_out      : out std_logic_vector(7 downto 0);

        -- Debug outputs
        sensor_data_out_ext      : out std_logic_vector(7 downto 0);
        sensor_valid_out_ext     : out std_logic;
        data_encoded_ext         : out std_logic_vector(7 downto 0);
        encoded_valid_ext        : out std_logic;
        scrambled_data_ext       : out std_logic_vector(7 downto 0);
        scrambled_valid_ext      : out std_logic;
        encrypted_data_ext       : out std_logic_vector(7 downto 0);
        encrypted_valid_ext      : out std_logic;
        fifo_wr_en_ext           : out std_logic;
        fifo_din_ext             : out std_logic_vector(17 downto 0);
        fifo_full_ext            : out std_logic;
        fifo_empty_ext           : out std_logic;
        fifo_rd_en_ext           : out std_logic;
        valid_to_decryption_dbg  : out std_logic;
        to_decryption_dbg        : out std_logic_vector(7 downto 0);
        decoded_data_dbg         : out std_logic_vector(7 downto 0);
        decoded_valid_dbg        : out std_logic;
        crc_error_dbg            : out std_logic;
        decrypted_data_dbg       : out std_logic_vector(7 downto 0);
        unscrambled_data_dbg     : out std_logic_vector(7 downto 0);
        valid_reception_dbg      : out std_logic;
        valid_decryption_dbg     : out std_logic;
        valid_unscrambler_dbg    : out std_logic;
        valid_decoding_dbg       : out std_logic
    );
end top_level;

architecture Structural of top_level is

    signal input_source_sel : std_logic_vector(2 downto 0) := "000";
    signal sensor_data_out, data_encoded, scrambled_data, encrypted_data : std_logic_vector(7 downto 0);
    signal decrypted_data, unscrambled_data, decoded_data, final_decoded_data : std_logic_vector(7 downto 0);
    signal parity_bit, parity_from_scrambler : std_logic;
    signal scrambled_valid, encrypted_valid, decrypted_valid, unscrambled_valid, decoded_valid, final_decoded_valid : std_logic;
    signal sensor_valid_out, encoded_valid : std_logic;
    signal crc_bit, crc_from_scrambler : std_logic_vector(7 downto 0);
    signal fifo_din, fifo_dout : std_logic_vector(17 downto 0);
    signal fifo_wr_en_from_bridge, fifo_rd_en, fifo_full, fifo_empty : std_logic;
    signal tx_data_internal : std_logic_vector(7 downto 0);
    signal tx_valid_internal : std_logic;
    signal tx_done_signal : std_logic := '1';
    signal crc_error : std_logic;
    signal ready_for_data_signal : std_logic;
    signal lfsr_seed : std_logic_vector(7 downto 0);
    signal valid_to_unscrambler : std_logic;
    signal data_to_unscrambler  : std_logic_vector(7 downto 0);

begin

    u_input : entity work.input_layer_top
        port map (
            clk => clk,
            rst => rst,
            uart_rx_data => uart_rx_data,
            uart_rx_valid => uart_rx_valid,
            spi_data_in => spi_data_in,
            spi_valid_in => spi_valid_in,
            i2c_data_in => i2c_data_in,
            i2c_valid_in => i2c_valid_in,
            gpio_switches => gpio_switches,
            gpio_valid => gpio_valid,
            eth_data_in => eth_data_in,
            eth_valid_in => eth_valid_in,
            input_source_sel => input_source_sel,
            data_out => sensor_data_out,
            valid_out => sensor_valid_out
        );

    u_encoder : entity work.encoder_layer
        port map (
            clk => clk,
            rst => rst,
            data_in => sensor_data_out,
            valid_in => sensor_valid_out,
            data_encoded => data_encoded,
            parity_bit => parity_bit,
            crc_bit => crc_bit,
            valid_out => encoded_valid
        );

    u_scrambler : entity work.scrambler
        port map (
            clk => clk,
            rst => rst,
            enable => '1',
            valid_in => encoded_valid,
            data_in => data_encoded,
            parity_in => parity_bit,
            crc_in => crc_bit,
            data_out => scrambled_data,
            valid_out => scrambled_valid,
            lfsr_out => lfsr_seed,
            parity_out => parity_from_scrambler,
            crc_out => crc_from_scrambler
        );

    u_encryption : entity work.encryption_layer
        port map (
            clk => clk,
            reset => rst,
            scrambled_data_in => scrambled_data,
            scrambled_valid_in => scrambled_valid,
            encrypted_data_out => encrypted_data,
            encrypted_valid_out => encrypted_valid
        );

    u_bridge : entity work.encryption_to_fifo_bridge
        port map (
            clk => clk,
            rst => rst,
            encrypted_data => encrypted_data,
            crc_bitstream => crc_from_scrambler,
            parity_bit => parity_bit,
            valid_in => encrypted_valid,
            ready_for_data => ready_for_data_signal,
            fifo_din => fifo_din,
            fifo_wr_en => fifo_wr_en_from_bridge
        );

    u_fifo : entity work.fifo_generator_0
        port map (
            clk => clk,
            srst => rst,
            din => fifo_din,
            wr_en => fifo_wr_en_from_bridge,
            rd_en => fifo_rd_en,
            dout => fifo_dout,
            full => fifo_full,
            empty => fifo_empty
        );

    u_tx : entity work.data_transmission
        port map (
            clk => clk,
            rst => rst,
            fifo_empty => fifo_empty,
            fifo_full => fifo_full,
            fifo_dout => fifo_dout,
            fifo_rd_en => fifo_rd_en,
            tx_data_out => tx_data_internal,
            tx_valid_out => tx_valid_internal,
            tx_done => tx_done_signal,
            tx_start => open,
            tx_crc_out => open,
            crc_valid_out => open,
            ready_for_data => ready_for_data_signal
        );

    u_rx : entity work.data_reception
        port map (
            clk => clk,
            rst => rst,
            rx_data_in => tx_data_internal,
            rx_valid_in => tx_valid_internal,
            received_data => data_to_unscrambler,
            received_valid => valid_to_unscrambler,
            crc_error => crc_error,
            crc_error_led => error_led,
            to_decryption => decrypted_data,
            valid_to_decryption => decrypted_valid
        );

    u_decryption : entity work.decryption_logic
        port map (
            clk => clk,
            rst => rst,
            encrypted_data => decrypted_data,
            valid_in => decrypted_valid,
            decrypted_data => unscrambled_data,
            valid_out => unscrambled_valid
        );

    u_unscrambler : entity work.unscrambler
        port map (
            clk => clk,
            rst => rst,
            enable => '1',
            valid_in => unscrambled_valid,
            data_in => unscrambled_data,
            lfsr_in => lfsr_seed,
            data_out => decoded_data,
            valid_out => decoded_valid
        );

    u_decoding : entity work.decoding
        port map (
            clk => clk,
            rst => rst,
            valid_in => decoded_valid,
            data_in => decoded_data,
            valid_out => final_decoded_valid,
            data_out => final_decoded_data
        );

    u_display : entity work.output_display
        port map (
            clk => clk,
            rst => rst,
            data_in => final_decoded_data,
            valid_in => final_decoded_valid,
            leds_out => leds_out
        );

    -- Debug assignments
    tx_data_out <= tx_data_internal;
    tx_valid_out <= tx_valid_internal;
    sensor_data_out_ext <= sensor_data_out;
    sensor_valid_out_ext <= sensor_valid_out;
    data_encoded_ext <= data_encoded;
    encoded_valid_ext <= encoded_valid;
    scrambled_data_ext <= scrambled_data;
    scrambled_valid_ext <= scrambled_valid;
    encrypted_data_ext <= encrypted_data;
    encrypted_valid_ext <= encrypted_valid;
    fifo_wr_en_ext <= fifo_wr_en_from_bridge;
    fifo_din_ext <= fifo_din;
    fifo_full_ext <= fifo_full;
    fifo_empty_ext <= fifo_empty;
    fifo_rd_en_ext <= fifo_rd_en;
    valid_to_decryption_dbg <= decrypted_valid;
    to_decryption_dbg <= decrypted_data;
    decoded_data_dbg <= final_decoded_data;
    decoded_valid_dbg <= final_decoded_valid;
    crc_error_dbg <= crc_error;
    decrypted_data_dbg <= unscrambled_data;
    unscrambled_data_dbg <= decoded_data;
    valid_reception_dbg <= tx_valid_internal;
    valid_decryption_dbg <= decrypted_valid;
    valid_unscrambler_dbg <= unscrambled_valid;
    valid_decoding_dbg <= final_decoded_valid;

end Structural;
