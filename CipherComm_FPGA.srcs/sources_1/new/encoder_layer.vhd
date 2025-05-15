-- encoder_layer.vhd - Final clean version without debug_enable
-- Date: 2025-05-12

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity encoder_layer is
generic (
    observation_window_cycles : natural := 5
);
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        data_in       : in  std_logic_vector(7 downto 0);
        valid_in      : in  std_logic;
        data_encoded  : out std_logic_vector(7 downto 0);
        parity_bit    : out std_logic;
        crc_bit       : out std_logic_vector(7 downto 0);
        valid_out     : out std_logic
    );
end encoder_layer;

architecture Behavioral of encoder_layer is
    signal data_reg     : std_logic_vector(7 downto 0) := (others => '0');
    signal parity_reg   : std_logic := '0';
    signal crc_reg      : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg    : std_logic := '0';
    signal valid_latched: std_logic := '0';

    function calculate_parity(data : std_logic_vector(7 downto 0)) return std_logic is
        variable parity : std_logic := '0';
    begin
        for i in 7 downto 0 loop
            parity := parity xor data(i);
        end loop;
        return parity;
    end function;

    function calculate_crc8(data : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable crc : std_logic_vector(7 downto 0) := (others => '0');
        variable din : std_logic_vector(7 downto 0);
        variable do_xor : std_logic;
        variable tmp : std_logic;
    begin
        for i in 0 to 7 loop
            din(i) := data(7 - i);
        end loop;

        for i in 0 to 7 loop
            do_xor := crc(7) xor din(i);
            crc := crc(6 downto 0) & '0';
            if do_xor = '1' then
                crc := crc xor "00000111";
            end if;
        end loop;

        for i in 0 to 3 loop
            tmp := crc(i);
            crc(i) := crc(7 - i);
            crc(7 - i) := tmp;
        end loop;

        return crc;
    end function;

begin
    process(clk, rst)
    begin
        if rst = '1' then
            data_reg      <= (others => '0');
            parity_reg    <= '0';
            crc_reg       <= (others => '0');
            valid_reg     <= '0';
            valid_latched <= '0';

        elsif rising_edge(clk) then
            if valid_in = '1' then
                data_reg      <= data_in;
                parity_reg    <= calculate_parity(data_in);
                crc_reg       <= calculate_crc8(data_in);
                valid_latched <= '1';
            elsif valid_latched = '1' then
                valid_latched <= '0';
            end if;

            valid_reg <= valid_latched;
        end if;
    end process;

    data_encoded <= data_reg;
    parity_bit   <= parity_reg;
    crc_bit      <= crc_reg;
    valid_out    <= valid_reg;

end Behavioral;
