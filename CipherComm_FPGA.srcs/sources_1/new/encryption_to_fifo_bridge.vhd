-- ===========================================
-- File: encryption_to_fifo_bridge.vhd
-- FINAL FINAL FIX version - rising_edge(valid_in) detection
-- ===========================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity encryption_to_fifo_bridge is
    generic (
        observation_window_cycles : natural := 1
    );
    Port (
        clk             : in  std_logic;
        rst             : in  std_logic;
        encrypted_data  : in  std_logic_vector(7 downto 0);
        crc_bitstream   : in  std_logic_vector(7 downto 0);
        parity_bit      : in  std_logic;
        valid_in        : in  std_logic;
        fifo_full       : in  std_logic;
        ready_for_data  : out std_logic;
        fifo_din        : out std_logic_vector(17 downto 0);
        fifo_wr_en      : out std_logic
    );
end encryption_to_fifo_bridge;

architecture Behavioral of encryption_to_fifo_bridge is
    signal fifo_din_i      : std_logic_vector(17 downto 0) := (others => '0');
    signal fifo_wr_en_i    : std_logic := '0';
    signal ready_i         : std_logic := '1';
    signal last_valid_in   : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                fifo_din_i    <= (others => '0');
                fifo_wr_en_i  <= '0';
                ready_i       <= '1';
                last_valid_in <= '0';

            else
                fifo_wr_en_i  <= '0';

                if (valid_in = '1' and last_valid_in = '0' and fifo_full = '0') then
                    fifo_din_i    <= '1' & parity_bit & crc_bitstream & encrypted_data;
                    fifo_wr_en_i  <= '1';
                    ready_i       <= '0';
                elsif valid_in = '0' then
                    ready_i <= '1';
                end if;

                last_valid_in <= valid_in;
            end if;
        end if;
    end process;

    fifo_din        <= fifo_din_i;
    fifo_wr_en      <= fifo_wr_en_i;
    ready_for_data  <= ready_i;

end Behavioral;
