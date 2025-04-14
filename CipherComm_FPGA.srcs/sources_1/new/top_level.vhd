library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;

        -- Physical inputs from board
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

        -- UART transmit output (changed to inout for internal reading)
        tx_data_out   : inout std_logic_vector(7 downto 0);
        tx_valid_out  : inout std_logic;

        -- LED error indication
        error_led     : out std_logic;

        -- Final output LEDs
        leds_out      : out std_logic_vector(7 downto 0)
    );
end top_level;

architecture Structural of top_level is

    -- Intermediate signals
    signal sensor_data_out      : std_logic_vector(7 downto 0);
    signal sensor_valid_out     : std_logic;

    signal data_encoded         : std_logic_vector(7 downto 0);
    signal encoded_valid        : std_logic;
    signal parity_bit           : std_logic := '0';
    signal crc_bit : std_logic_vector(7 downto 0) := (others => '0');

    signal scrambled_data       : std_logic_vector(7 downto 0);
    signal scrambled_valid      : std_logic;
    signal lfsr_seed            : std_logic_vector(7 downto 0);
    signal parity_from_scrambler: std_logic := '0';
    signal crc_from_scrambler   : std_logic_vector(7 downto 0) := (others => '0');

    signal encrypted_data       : std_logic_vector(7 downto 0);
    signal encrypted_valid      : std_logic;

    signal fifo_full            : std_logic;
    signal fifo_empty           : std_logic;
    signal fifo_wr_en           : std_logic;
    signal fifo_rd_en           : std_logic;
    signal fifo_din             : std_logic_vector(17 downto 0);
    signal fifo_dout            : std_logic_vector(17 downto 0);

    signal rx_data              : std_logic_vector(7 downto 0);
    signal rx_valid             : std_logic;

    signal decrypted_data       : std_logic_vector(7 downto 0);
    signal decrypted_valid      : std_logic;

    signal unscrambled_data     : std_logic_vector(7 downto 0);
    signal unscrambled_valid    : std_logic;

    signal decoded_data         : std_logic_vector(7 downto 0);
    signal decoded_valid        : std_logic;

    signal final_output         : std_logic_vector(7 downto 0);
    signal ready_for_data       : std_logic;

begin

    -- Input Layer
    u_input : entity work.input_layer_top
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
            data_out      => sensor_data_out,
            valid_out     => sensor_valid_out
        );

    -- Encoder Layer
u_encoder : entity work.encoder_layer
    port map (
        clk          => clk,
        rst          => rst,
        data_in      => sensor_data_out,
        valid_in     => sensor_valid_out,
        data_encoded => data_encoded,
        parity_bit   => parity_bit,       
        crc_bit      => crc_bit,          
        valid_out    => encoded_valid
    );


    -- Scrambler
u_scrambler : entity work.scrambler
    port map (
        clk         => clk,
        rst         => rst,
        enable      => '1',                     
        valid_in    => encoded_valid,
        data_in     => data_encoded,
        parity_in   => parity_bit,              
        crc_in      => crc_bit,                 
        data_out    => scrambled_data,
        valid_out   => scrambled_valid,
        lfsr_out    => lfsr_seed,
        parity_out  => parity_from_scrambler,
        crc_out     => crc_from_scrambler
    );


    -- Encryption Layer
    u_encryption : entity work.encryption_layer
        port map (
            clk                => clk,
            reset              => rst,
            scrambled_data_in  => scrambled_data,
            scrambled_valid_in => scrambled_valid,
            encrypted_data_out => encrypted_data,
            encrypted_valid_out => encrypted_valid
        );

    -- Bridge: Encryption to FIFO
u_bridge : entity work.encryption_to_fifo_bridge
    port map (
        clk             => clk,
        rst             => rst,
        encrypted_data  => encrypted_data,
        crc_bitstream   => crc_from_scrambler,     
        parity_bit      => parity_bit,
        valid_in        => encrypted_valid,
        ready_for_data  => ready_for_data,
        fifo_din        => fifo_din,
        fifo_wr_en      => fifo_wr_en
    );


    -- FIFO Instance
u_fifo : entity work.fifo_generator_0
    port map (
        clk     => clk,
        srst    => rst,
        din     => fifo_din,
        wr_en   => fifo_wr_en,
        dout    => fifo_dout,
        rd_en   => fifo_rd_en,
        full    => fifo_full,
        empty   => fifo_empty
    );


   -- Data Transmission Layer
u_tx : entity work.data_transmission
    port map (
        clk             => clk,
        rst             => rst,
        ready_for_data  => ready_for_data,
        fifo_empty      => fifo_empty,
        fifo_full       => fifo_full,
        fifo_dout       => fifo_dout,
        fifo_rd_en      => fifo_rd_en,
        tx_data_out     => tx_data_out,
        tx_valid_out    => tx_valid_out
    );

    -- Data Reception (loopback)
    u_rx : entity work.data_reception
        port map (
            clk             => clk,
            rst             => rst,
            rx_data_in      => tx_data_out,
            rx_valid_in     => tx_valid_out,
            received_data   => rx_data,
            received_valid  => rx_valid
        );

    -- Decryption Layer
    u_decryption : entity work.decryption_logic
        port map (
            clk             => clk,
            rst             => rst,
            encrypted_data  => rx_data,            -- קלט מה-loopback
            valid_in        => rx_valid,
            decrypted_data  => decrypted_data,     -- הפלט
            valid_out       => decrypted_valid
        );


    -- Unscrambler
    u_unscrambler : entity work.unscrambler
        port map (
            clk       => clk,
            rst       => rst,
            enable    => '1',
            valid_in  => decrypted_valid,
            data_in   => decrypted_data,
            lfsr_in   => lfsr_seed,
            data_out  => unscrambled_data,
            valid_out => unscrambled_valid
        );

    -- Decoding Layer
    u_decode : entity work.decoding
        port map (
            clk          => clk,
            rst          => rst,
            valid_in     => unscrambled_valid,     -- פלט תקפות מה-unscrambler
            data_in      => unscrambled_data,      -- נתונים מה-unscrambler
            decoded_out  => decoded_data,          -- פלט סופי לפני LED
            valid_out    => decoded_valid
        );


    -- Output Layer
    u_output_display : entity work.output_display
        port map (
            clk        => clk,
            rst        => rst,
            data_in    => decoded_data,
            valid_in   => decoded_valid,
            leds_out   => final_output
        );


    leds_out <= final_output;

end Structural;
