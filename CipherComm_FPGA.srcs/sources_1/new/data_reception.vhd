library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_reception is
    generic ( observation_window_cycles : natural := 1 );
    port (
        clk                 : in  std_logic;
        rst                 : in  std_logic;
        rx_data_in          : in  std_logic_vector(7 downto 0);
        rx_valid_in         : in  std_logic;
        ----------------------------------------------------------------
        received_data       : out std_logic_vector(7 downto 0);
        received_valid      : out std_logic;
        crc_error           : out std_logic;
        crc_error_led       : out std_logic;
        to_decryption       : out std_logic_vector(7 downto 0);
        valid_to_decryption : out std_logic;
        parity_out          : out std_logic;
        crc_out             : out std_logic_vector(7 downto 0)
    );
end entity;

architecture Behavioral of data_reception is
    --------------------------------------------------------------------
    --  ⬅ פונקציות-העזר ממוקמות כאן (איזור ההצהרות)
    function calc_parity(d : std_logic_vector(7 downto 0)) return std_logic is
        variable p : std_logic := '0';
    begin
        for i in d'range loop
            p := p xor d(i);
        end loop;
        return p;
    end function;

    function calc_crc8(d : std_logic_vector(7 downto 0)) return std_logic_vector is
        variable crc : std_logic_vector(7 downto 0) := (others => '0');
        variable x   : std_logic;
    begin
        for i in 0 to 7 loop
            x   := crc(7) xor d(i);
            crc := crc(6 downto 0) & '0';
            if x = '1' then
                crc := crc xor "00000111";
            end if;
        end loop;
        return crc;
    end function;
    --------------------------------------------------------------------
    signal data_reg  : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg : std_logic := '0';
    signal win_cnt   : natural range 0 to observation_window_cycles := 0;
begin
    --------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            data_reg       <= (others => '0');
            valid_reg      <= '0';
            win_cnt        <= 0;
            crc_error_led  <= '0';
        elsif rising_edge(clk) then
            if rx_valid_in = '1' then          -- לכידת נתון חדש
                data_reg  <= rx_data_in;
                valid_reg <= '1';
                win_cnt   <= observation_window_cycles - 1;

            elsif win_cnt > 0 then             -- החזקת valid
                valid_reg <= '1';
                win_cnt   <= win_cnt - 1;

            else
                valid_reg <= '0';
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- יציאות
    received_data        <= data_reg;
    received_valid       <= valid_reg;
    to_decryption        <= data_reg;
    valid_to_decryption  <= valid_reg;
    crc_error            <= '0';              -- עדיין לא ממומש
    parity_out           <= calc_parity(data_reg);
    crc_out              <= calc_crc8(data_reg);
end architecture;
