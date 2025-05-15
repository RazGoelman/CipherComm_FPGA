library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity unscrambler is
    generic (
        observation_window_cycles : natural := 1   -- זמן החזקת valid_out
    );
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        enable     : in  std_logic;
        valid_in   : in  std_logic;
        data_in    : in  std_logic_vector(7 downto 0);
        lfsr_in    : in  std_logic_vector(7 downto 0);  -- seed מה-Scrambler
        data_out   : out std_logic_vector(7 downto 0);
        valid_out  : out std_logic;
        lfsr_dbg   : out std_logic_vector(7 downto 0)   -- חדש: debug LFSR
    );
end entity;

architecture Behavioral of unscrambler is
    signal lfsr_reg       : std_logic_vector(7 downto 0) := (others => '0');
    signal lfsr_next      : std_logic_vector(7 downto 0);
    signal last_valid_in  : std_logic := '0';
    signal data_reg       : std_logic_vector(7 downto 0) := (others => '0');
    signal valid_reg      : std_logic := '0';
    signal win_cnt        : natural range 0 to observation_window_cycles := 0;
begin

    -- ❗ הגדרת LFSR לפי scrambler שלך: x^8 + x^6 + x^5 + x^4 + 1
    lfsr_next <= lfsr_reg(6 downto 0) & 
                (lfsr_reg(7) xor lfsr_reg(5) xor lfsr_reg(4) xor lfsr_reg(3));

    ------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            lfsr_reg      <= (others => '0');
            last_valid_in <= '0';
            data_reg      <= (others => '0');
            valid_reg     <= '0';
            win_cnt       <= 0;

        elsif rising_edge(clk) then
            last_valid_in <= valid_in;

            if enable = '1' then
                -- אירוע ראשוני valid_in ↑
                if valid_in = '1' and last_valid_in = '0' then
                    lfsr_reg  <= lfsr_in;
                    data_reg  <= data_in xor lfsr_in;
                    valid_reg <= '1';
                    win_cnt   <= observation_window_cycles - 1;

                -- המשך valid_in = '1'
                elsif valid_in = '1' and last_valid_in = '1' then
                    lfsr_reg <= lfsr_next;  -- advance LFSR
                end if;

                -- החזקת valid_out
                if win_cnt > 0 then
                    valid_reg <= '1';
                    win_cnt   <= win_cnt - 1;
                elsif win_cnt = 0 then
                    valid_reg <= '0';
                end if;

            else
                valid_reg <= '0';  -- disable
            end if;
        end if;
    end process;

    -- outputs
    data_out  <= data_reg;
    valid_out <= valid_reg;
    lfsr_dbg  <= lfsr_reg;

end architecture;


---- unscrambler_edgefix.vhd   ·  2025-05-13
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

--entity unscrambler is
--    generic (
--        observation_window_cycles : natural := 1   -- זמן החזקת valid_out
--    );
--    port (
--        clk        : in  std_logic;
--        rst        : in  std_logic;
--        enable     : in  std_logic;
--        valid_in   : in  std_logic;
--        data_in    : in  std_logic_vector(7 downto 0);
--        lfsr_in    : in  std_logic_vector(7 downto 0);  --  seed מה-Scrambler
--        data_out   : out std_logic_vector(7 downto 0);
--        valid_out  : out std_logic
--    );
--end entity;

--architecture Behavioral of unscrambler is
--    ------------------------------------------------------------------
--    signal lfsr_reg       : std_logic_vector(7 downto 0) := (others=>'0');
--    signal lfsr_next      : std_logic_vector(7 downto 0);

--    signal last_valid_in  : std_logic := '0';
--    signal data_reg       : std_logic_vector(7 downto 0) := (others=>'0');
--    signal valid_reg      : std_logic := '0';
--    signal win_cnt        : natural range 0 to observation_window_cycles := 0;
--begin
--    -- משוואת משוב 8-bit ‎x^8+x^5+x^4+x^3  (בדומה ל-Scrambler)
--    lfsr_next <= lfsr_reg(6 downto 0) &
--                 (lfsr_reg(7) xor lfsr_reg(5) xor lfsr_reg(4) xor lfsr_reg(3));

--    ------------------------------------------------------------------
--    process(clk, rst)
--    begin
--        if rst = '1' then
--            lfsr_reg      <= (others => '0');
--            last_valid_in <= '0';
--            data_reg      <= (others => '0');
--            valid_reg     <= '0';
--            win_cnt       <= 0;

--        elsif rising_edge(clk) then
--            last_valid_in <= valid_in;  -- לשימור הערך הקודם

--            if enable = '1' then
--                ------------------------------------------------------
--                -- חזית  ↑valid_in  (0→1) : פענוח וקידום פעם אחת
--                if valid_in = '1' and last_valid_in = '0' then
--                    lfsr_reg  <= lfsr_in;                 -- נטען seed
--                    data_reg  <= data_in xor lfsr_in;     -- Undo-scramble
--                    valid_reg <= '1';
--                    win_cnt   <= observation_window_cycles - 1;

--                -- מחזור אחד לאחר הפיענוח - נקדם את ה-LFSR
--                elsif valid_in = '1' and last_valid_in = '1' then
--                    lfsr_reg <= lfsr_next;                -- advance once
--                end if;
--                ------------------------------------------------------

--                -- שמירת valid_out למשך חלון
--                if win_cnt > 0 then
--                    valid_reg <= '1';
--                    win_cnt   <= win_cnt - 1;
--                elsif win_cnt = 0 then
--                    valid_reg <= '0';
--                end if;

--            else
--                valid_reg <= '0';   -- disable
--            end if;
--        end if;
--    end process;

--    data_out  <= data_reg;
--    valid_out <= valid_reg;
--end architecture;
