library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    generic ( observation_window_cycles : natural := 5 );
    port (
        clk, rst                        : in  std_logic;
        uart_rx_data                    : in  std_logic_vector(7 downto 0);
        uart_rx_valid                   : in  std_logic;
        spi_data_in, i2c_data_in        : in  std_logic_vector(7 downto 0);
        spi_valid_in, i2c_valid_in      : in  std_logic;
        gpio_switches                   : in  std_logic_vector(7 downto 0);
        gpio_valid                      : in  std_logic;
        eth_data_in                     : in  std_logic_vector(7 downto 0);
        eth_valid_in                    : in  std_logic;
        input_source_sel                : in  std_logic_vector(2 downto 0);
        tx_data_out                     : out std_logic;
        tx_valid_out                    : out std_logic;
        error_led                       : out std_logic;
        leds_out                        : out std_logic_vector(7 downto 0);
        tx_start_dbg                    : out std_logic;
        tx_done_dbg                     : out std_logic;
        data_tx_state_dbg               : out std_logic_vector(2 downto 0);

        -- DEBUG outputs
        sensor_data_dbg                 : out std_logic_vector(7 downto 0);
        sensor_valid_dbg                : out std_logic;
        encoded_data_dbg                : out std_logic_vector(7 downto 0);
        encoded_valid_dbg               : out std_logic;
        scrambled_data_dbg              : out std_logic_vector(7 downto 0);
        scrambled_valid_dbg             : out std_logic;
        encrypted_data_dbg              : out std_logic_vector(7 downto 0);
        encrypted_valid_dbg             : out std_logic;
        decoded_data_dbg                : out std_logic_vector(7 downto 0);
        decoded_valid_dbg               : out std_logic;
        decrypted_data_dbg              : out std_logic_vector(7 downto 0);
        decrypted_valid_dbg             : out std_logic;
        unscrambled_data_dbg            : out std_logic_vector(7 downto 0);
        unscrambled_valid_dbg           : out std_logic;
        tx_data_dbg                     : out std_logic_vector(7 downto 0);
        rx_data_dbg                     : out std_logic_vector(7 downto 0);
        fifo_dout_dbg                   : out std_logic_vector(17 downto 0);
        scrambler_lfsr_dbg              : out std_logic_vector(7 downto 0);
        unscrambler_lfsr_dbg            : out std_logic_vector(7 downto 0);
        fifo_wr_en_dbg                  : out std_logic;
        fifo_full_dbg                   : out std_logic;
        fifo_empty_dbg                  : out std_logic;
        ready_for_data_dbg              : out std_logic;
        fifo_din_dbg                    : out std_logic_vector(17 downto 0);
        encrypted_valid_dbg_out         : out std_logic
    );
end entity;

architecture Structural of top_level is
    -- internal signals
    signal sensor_data_out, data_encoded, scrambled_data, encrypted_data, decrypted_data, unscrambled_data, decoded_data : std_logic_vector(7 downto 0);
    signal parity_bit, parity_from_scrambler, sensor_valid_out, encoded_valid, scrambled_valid, encrypted_valid, decrypted_valid, unscrambled_valid, decoded_valid : std_logic;
    signal crc_bit, crc_from_scrambler : std_logic_vector(7 downto 0);
    signal fifo_din, fifo_dout : std_logic_vector(17 downto 0);
    signal fifo_wr_en, fifo_rd_en, fifo_full, fifo_empty, tx_valid_internal, ready_for_data : std_logic;
    signal tx_data_internal, data_to_unscrambler, lfsr_seed, lfsr_for_unscr : std_logic_vector(7 downto 0);
    signal wr_ptr, rd_ptr : unsigned(4 downto 0) := (others => '0');
    signal fifo_count : unsigned(5 downto 0) := (others => '0');
    signal crc_error_internal : std_logic;
    signal log_tx_data, log_tx_data_unused : std_logic_vector(7 downto 0);
    signal log_tx_valid, log_tx_valid_unused, tx_start_sig, tx_done_sig, uart_tx_ready : std_logic;
    type lfsr_fifo_t is array(0 to 31) of std_logic_vector(7 downto 0);
    signal lfsr_fifo : lfsr_fifo_t := (others => (others => '0'));
    constant debug_enable : std_logic := '0';
    signal ready_for_data_internal : std_logic := '0';
    signal heartbeat_counter : unsigned(23 downto 0) := (others => '0');
    signal system_ready_led : std_logic := '0';

begin
    -- Heartbeat process
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                heartbeat_counter <= (others => '0');
                system_ready_led <= '0';
            else
                heartbeat_counter <= heartbeat_counter + 1;
                if heartbeat_counter = x"4C4B40" then
                    system_ready_led <= not system_ready_led;
                    heartbeat_counter <= (others => '0');
                end if;
            end if;
        end if;
    end process;

    -- Assign to LED (example: leds_out(0))
    leds_out(0) <= system_ready_led;
--    -- LFSR delay FIFO
--    process(clk)
--    begin
--        if rising_edge(clk) then
--            if rst = '1' then
--                wr_ptr <= (others => '0');
--                rd_ptr <= (others => '0');
--                fifo_count <= (others => '0');
--                lfsr_for_unscr <= (others => '0');
--            else
--                if decrypted_valid = '1' and fifo_count /= 0 then
--                    lfsr_for_unscr <= lfsr_fifo(to_integer(rd_ptr));
--                    rd_ptr <= rd_ptr + 1;
--                    fifo_count <= fifo_count - 1;
--                end if;
--                if scrambled_valid = '1' then
--                    lfsr_fifo(to_integer(wr_ptr)) <= lfsr_seed;
--                    wr_ptr <= wr_ptr + 1;
--                    fifo_count <= fifo_count + 1;
--                end if;
--            end if;
--        end if;
--    end process;

    -- Debug outputs
    sensor_data_dbg <= sensor_data_out;
    sensor_valid_dbg <= sensor_valid_out;
    encoded_data_dbg <= data_encoded;
    encoded_valid_dbg <= encoded_valid;
    scrambled_data_dbg <= scrambled_data;
    scrambled_valid_dbg <= scrambled_valid;
    encrypted_data_dbg <= encrypted_data;
    encrypted_valid_dbg <= encrypted_valid;
    decrypted_data_dbg <= decrypted_data;
    decrypted_valid_dbg <= decrypted_valid;
    unscrambled_data_dbg <= unscrambled_data;
    unscrambled_valid_dbg <= unscrambled_valid;
    tx_data_dbg <= tx_data_internal;
    rx_data_dbg <= data_to_unscrambler;
    fifo_dout_dbg <= fifo_dout;
    scrambler_lfsr_dbg <= lfsr_seed;
    unscrambler_lfsr_dbg <= lfsr_for_unscr;
    fifo_wr_en_dbg <= fifo_wr_en;
    fifo_full_dbg <= fifo_full;
    fifo_empty_dbg <= fifo_empty;
    ready_for_data_dbg <= ready_for_data;

    -- INPUT LAYER
    u_input : entity work.input_layer_top
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst,
            uart_rx_data => uart_rx_data, uart_rx_valid => uart_rx_valid,
            spi_data_in => spi_data_in, spi_valid_in => spi_valid_in,
            i2c_data_in => i2c_data_in, i2c_valid_in => i2c_valid_in,
            gpio_switches => gpio_switches, gpio_valid => gpio_valid,
            eth_data_in => eth_data_in, eth_valid_in => eth_valid_in,
            input_source_sel => input_source_sel,
            data_out => sensor_data_out, valid_out => sensor_valid_out
        );

    -- ENCODER → SCRAMBLER → ENCRYPTION
    u_encoder : entity work.encoder_layer
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst,
            data_in => sensor_data_out, valid_in => sensor_valid_out,
            data_encoded => data_encoded, parity_bit => parity_bit,
            crc_bit => crc_bit, valid_out => encoded_valid
        );

    u_scrambler : entity work.scrambler
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst, enable => '1',
            valid_in => encoded_valid, data_in => data_encoded,
            parity_in => parity_bit, crc_in => crc_bit,
            data_out => scrambled_data, valid_out => scrambled_valid,
            parity_out => parity_from_scrambler,
            crc_out => crc_from_scrambler, lfsr_out => lfsr_seed
        );

    u_encryption : entity work.encryption_layer
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, reset => rst,
            scrambled_data_in => scrambled_data,
            scrambled_valid_in => scrambled_valid,
            encrypted_data_out => encrypted_data,
            encrypted_valid_out => encrypted_valid,
            crc_out => open
        );

    -- In u_bridge instantiation:
    u_bridge : entity work.encryption_to_fifo_bridge
    generic map (observation_window_cycles => observation_window_cycles)
    port map (
        clk => clk, rst => rst,
        encrypted_data => encrypted_data,
        crc_bitstream => crc_from_scrambler,
        parity_bit => parity_from_scrambler,
        valid_in => encrypted_valid,
        fifo_full => fifo_full,
        ready_for_data => open,  -- disconnected
        fifo_din => fifo_din,
        fifo_wr_en => fifo_wr_en
    );

    u_fifo : entity work.fifo_generator_0
        port map (
            clk => clk, srst => rst,
            din => fifo_din, wr_en => fifo_wr_en,
            rd_en => fifo_rd_en, dout => fifo_dout,
            full => fifo_full, empty => fifo_empty
        );

    -- DATA TRANSMISSION
   u_tx : entity work.data_transmission
    generic map (observation_window_cycles => observation_window_cycles)
    port map (
        clk => clk, rst => rst,
        fifo_empty => fifo_empty, fifo_full => fifo_full,
        fifo_dout => fifo_dout, fifo_rd_en => fifo_rd_en,
        tx_data_out => tx_data_internal,
        tx_valid_out => tx_valid_internal,
        tx_done => tx_done_sig, tx_start => tx_start_sig,
        data_tx_state_dbg => data_tx_state_dbg,
        tx_crc_out => open, crc_valid_out => open
    );

    -- DATA RECEPTION
    u_rx : entity work.data_reception
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst,
            rx_data_in => tx_data_internal,
            rx_valid_in => tx_valid_internal,
            received_data => data_to_unscrambler,
            received_valid => open,
            crc_error => crc_error_internal,
            crc_error_led => error_led,
            to_decryption => decrypted_data,
            valid_to_decryption => decrypted_valid,
            parity_out => open, crc_out => open
        );

    -- DECRYPTION → UNSCRAMBLER → DECODING
    u_decryption : entity work.decryption_logic
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst,
            encrypted_data => decrypted_data,
            valid_in => decrypted_valid,
            decrypted_data => unscrambled_data,
            valid_out => unscrambled_valid
        );

    u_unscrambler : entity work.unscrambler
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst, enable => '1',
            valid_in => unscrambled_valid,
            data_in => unscrambled_data,
            lfsr_in => lfsr_for_unscr,
            data_out => decoded_data,
            valid_out => decoded_valid
        );

    u_decoding : entity work.decoding
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst,
            valid_in => decoded_valid, data_in => decoded_data,
            parity_in => parity_from_scrambler,
            crc_in => crc_from_scrambler,
            valid_out => decoded_valid_dbg,
            data_out => decoded_data_dbg,
            error_parity => open, error_crc => open
        );

    -- DEBUG UART LOGGER + UART TX
    u_logger : entity work.debug_uart_logger
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst,
            encoded_data => data_encoded,
            scrambled_data => scrambled_data,
            encrypted_data => encrypted_data,
            decrypted_data => unscrambled_data,
            unscrambled_data => decoded_data,
            decoded_data => decoded_data,
            decoded_valid_in => decoded_valid,
            crc_error_internal => crc_error_internal,
            trigger_log => decoded_valid,
            uart_fifo_din => log_tx_data,
            uart_fifo_wr_en => log_tx_valid,
            log_tx_data => log_tx_data_unused,
            log_tx_valid => log_tx_valid_unused
        );

    u_uart_tx : entity work.uart_fifo_tx
        generic map (CLOCK_FREQ_HZ => 50_000_000, BAUD_RATE => 9_600)
        port map (
            clk => clk, rst => rst,
            data_in => log_tx_data, wr_en => log_tx_valid,
            tx_start => tx_start_sig, tx_ready => uart_tx_ready,
            tx_out => tx_data_out, tx_valid => tx_valid_out,
            tx_done => tx_done_sig
        );

    -- LED DISPLAY
    u_display : entity work.output_display
        generic map (observation_window_cycles => observation_window_cycles)
        port map (
            clk => clk, rst => rst,
            data_in => decoded_data, valid_in => decoded_valid,
            crc_error_internal => crc_error_internal,
            leds_out => leds_out,
            debug_enable => debug_enable
        );
        
     fifo_wr_en_dbg <= fifo_wr_en;
     fifo_full_dbg <= fifo_full;
     fifo_empty_dbg <= fifo_empty;
     ready_for_data_dbg <= ready_for_data;
     fifo_din_dbg <= fifo_din;
     encrypted_valid_dbg_out <= encrypted_valid;
     tx_start_dbg <= tx_start_sig;
     tx_done_dbg  <= tx_done_sig;
     ready_for_data_dbg <= ready_for_data_internal;

end architecture;
