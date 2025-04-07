library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_decoding_layer is
end tb_decoding_layer;

architecture Behavioral of tb_decoding_layer is
    -- DUT signals
    signal clk_tb            : std_logic := '0';
    signal rst_tb            : std_logic := '1';
    signal data_in_tb        : std_logic_vector(7 downto 0);
    signal valid_in_tb       : std_logic;
    signal crc_in_tb         : std_logic_vector(7 downto 0);
    signal parity_in_tb      : std_logic;
    signal data_out_tb       : std_logic_vector(7 downto 0);
    signal valid_out_tb      : std_logic;
    signal error_detected_tb : std_logic;
    signal sseg_out_tb       : std_logic_vector(6 downto 0);
    constant clk_period      : time := 10 ns;
begin

    -- Instantiate the DUT
    uut: entity work.decoding_layer
        port map (
            clk            => clk_tb,
            rst            => rst_tb,
            data_in        => data_in_tb,
            valid_in       => valid_in_tb,
            crc_in         => crc_in_tb,
            parity_in      => parity_in_tb,
            data_out       => data_out_tb,
            valid_out      => valid_out_tb,
            error_detected => error_detected_tb,
            sseg_out       => sseg_out_tb
        );

    -- Clock process
    clk_proc: process
    begin
        clk_tb <= '0';
        wait for clk_period / 2;
        clk_tb <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus
    stim_proc: process
    begin
        -- Initial Reset
        wait for 20 ns;
        rst_tb <= '0';

        -- ========== Test Case 1: Valid data ==========
        data_in_tb   <= x"AA";     -- 10101010
        crc_in_tb    <= x"98";     -- Correct CRC
        parity_in_tb <= '0';       -- Even parity
        valid_in_tb  <= '1';
        wait for clk_period;

        -- ========== Test Case 2: Invalid CRC ==========
        data_in_tb   <= x"AA";
        crc_in_tb    <= x"FF";     -- Wrong CRC
        parity_in_tb <= '0';
        wait for clk_period;

        -- ========== Test Case 3: Invalid parity ==========
        data_in_tb   <= x"AA";
        crc_in_tb    <= x"98";
        parity_in_tb <= '1';       -- Wrong parity
        wait for clk_period;

        -- ========== Test Case 4: Valid data ==========
        data_in_tb   <= x"3C";     -- 00111100
        crc_in_tb    <= x"66";     -- Correct CRC for 0x3C
        parity_in_tb <= '0';       -- Even parity
        wait for clk_period;

        -- ========== Test Case 5: Both CRC & Parity wrong ==========
        data_in_tb   <= x"3C";
        crc_in_tb    <= x"00";     -- Wrong CRC
        parity_in_tb <= '1';       -- Wrong parity
        wait for clk_period;

        -- End test
        valid_in_tb <= '0';
        wait for 50 ns;
        assert false report "Simulation Finished" severity note;
    end process;

end Behavioral;
