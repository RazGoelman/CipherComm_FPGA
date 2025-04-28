library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity encryption_to_fifo_bridge is
    Port (
        clk             : in  std_logic;
        rst             : in  std_logic;
        encrypted_data  : in  std_logic_vector(7 downto 0);
        crc_bitstream   : in  std_logic_vector(7 downto 0);
        parity_bit      : in  std_logic;
        valid_in        : in  std_logic;
        ready_for_data  : out std_logic;
        fifo_din        : out std_logic_vector(17 downto 0);
        fifo_wr_en      : out std_logic
    );
end encryption_to_fifo_bridge;

architecture Behavioral of encryption_to_fifo_bridge is
    signal fifo_din_i    : std_logic_vector(17 downto 0) := (others => '0');
    signal fifo_wr_en_i  : std_logic := '0';
    signal ready_i       : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                fifo_din_i    <= (others => '0');
                fifo_wr_en_i  <= '0';
                ready_i       <= '0';
            else
                fifo_wr_en_i <= '0';

                if valid_in = '1' then
                    -- Format: [17] start_frame, [16] parity, [15:8] CRC, [7:0] data
                    fifo_din_i <= '1' & parity_bit & crc_bitstream & encrypted_data;
                    fifo_wr_en_i <= '1';
                    ready_i <= '1';

                    report "[BRIDGE] Writing to FIFO: encrypted_data = " & 
                        integer'image(to_integer(unsigned(encrypted_data))) & 
                        ", crc = " & integer'image(to_integer(unsigned(crc_bitstream))) &
                        ", parity = '" & std_logic'image(parity_bit) & "'" severity note;

                else
                    ready_i <= '0';
                end if;
            end if;
        end if;
    end process;

    fifo_din    <= fifo_din_i;
    fifo_wr_en  <= fifo_wr_en_i;
    ready_for_data <= ready_i;

end Behavioral;
