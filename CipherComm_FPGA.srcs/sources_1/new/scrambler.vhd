library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity scrambler is
generic (
        observation_window_cycles : natural := 5
    );
    Port (
        clk           : in  STD_LOGIC;
        rst           : in  STD_LOGIC;
        enable        : in  STD_LOGIC;
        valid_in      : in  STD_LOGIC;
        data_in       : in  STD_LOGIC_VECTOR(7 downto 0);
        parity_in     : in  STD_LOGIC;
        crc_in        : in  STD_LOGIC_VECTOR(7 downto 0);
        data_out      : out STD_LOGIC_VECTOR(7 downto 0);
        valid_out     : out STD_LOGIC;
        parity_out    : out STD_LOGIC;
        crc_out       : out STD_LOGIC_VECTOR(7 downto 0);
        lfsr_out      : out STD_LOGIC_VECTOR(7 downto 0)
    );
end scrambler;

architecture Behavioral of scrambler is
    signal lfsr            : std_logic_vector(7 downto 0) := "10101010";
    signal lfsr_used       : std_logic_vector(7 downto 0) := (others => '0');
    signal data_reg        : std_logic_vector(7 downto 0) := (others => '0');
    signal parity_reg      : std_logic := '0';
    signal crc_reg         : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_latched   : std_logic := '0';
begin

    process(clk, rst)
    begin
        if rst = '1' then
            lfsr          <= "10101010";
            lfsr_used     <= (others => '0');
            data_reg      <= (others => '0');
            parity_reg    <= '0';
            crc_reg       <= (others => '0');
            valid_latched <= '0';

        elsif rising_edge(clk) then
            if enable = '1' then
                if valid_in = '1' then
                    -- Save current LFSR
                    lfsr_used <= lfsr;

                    -- Create scrambled data
                    data_reg <= data_in xor lfsr;
                    parity_reg <= parity_in;
                    crc_reg <= crc_in;
                    valid_latched <= '1';

                    -- Update LFSR
                    lfsr <= lfsr(6 downto 0) & (lfsr(7) xor lfsr(5) xor lfsr(4) xor lfsr(3));

                elsif valid_latched = '1' then
                    valid_latched <= '0';
                end if;
            end if;
        end if;
    end process;

    data_out   <= data_reg;
    parity_out <= parity_reg;
    crc_out    <= crc_reg;
    valid_out  <= valid_latched;
    lfsr_out   <= lfsr_used;

end Behavioral;
