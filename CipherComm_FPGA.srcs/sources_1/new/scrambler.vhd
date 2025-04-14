library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity scrambler is
    Port (
        clk         : in  STD_LOGIC;
        rst         : in  STD_LOGIC;
        enable      : in  STD_LOGIC;                    
        valid_in    : in  STD_LOGIC;
        data_in     : in  STD_LOGIC_VECTOR(7 downto 0);
        parity_in   : in  STD_LOGIC;
        crc_in      : in  STD_LOGIC_VECTOR(7 downto 0);
        data_out    : out STD_LOGIC_VECTOR(7 downto 0);
        valid_out   : out STD_LOGIC;
        parity_out  : out STD_LOGIC;
        crc_out     : out STD_LOGIC_VECTOR(7 downto 0);
        lfsr_out    : out STD_LOGIC_VECTOR(7 downto 0)
    );
end scrambler;


architecture Behavioral of scrambler is

    signal lfsr        : STD_LOGIC_VECTOR (7 downto 0) := "10101010";
    signal scrambled   : STD_LOGIC_VECTOR (7 downto 0);

    -- Parity Calculation
    function calc_parity(data : STD_LOGIC_VECTOR(7 downto 0)) return STD_LOGIC is
        variable result : STD_LOGIC := '0';
    begin
        for i in data'range loop
            result := result xor data(i);
        end loop;
        return result;
    end function;

    -- CRC8 Calculation (Polynomial 0x31)
    function crc8(data : STD_LOGIC_VECTOR(7 downto 0)) return STD_LOGIC_VECTOR is
        variable crc : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    begin
        for i in 7 downto 0 loop
            if (crc(7) xor data(i)) = '1' then
                crc := (crc(6 downto 0) & '0') xor "00110001";
            else
                crc := crc(6 downto 0) & '0';
            end if;
        end loop;
        return crc;
    end function;

begin

    process(clk, rst)
    begin
        if rst = '1' then
            lfsr       <= "10101010";
            scrambled  <= (others => '0');
            data_out   <= (others => '0');
            valid_out  <= '0';
            parity_out <= '0';
            crc_out    <= (others => '0');

        elsif rising_edge(clk) then
            if valid_in = '1' then
                -- Update LFSR
                lfsr <= lfsr(6 downto 0) & (lfsr(7) xor lfsr(5) xor lfsr(4) xor lfsr(3));
                
                -- Scramble data
                scrambled <= data_in xor lfsr;

                -- Outputs
                data_out   <= scrambled;
                parity_out <= parity_in xor calc_parity(scrambled);
                crc_out    <= crc8(scrambled xor crc_in);
                valid_out  <= '1';
            else
                valid_out <= '0';
            end if;
        end if;
    end process;

    lfsr_out <= lfsr;

end Behavioral;
