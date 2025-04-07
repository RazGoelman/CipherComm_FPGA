library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_InputInterfaceLayer_wrapper is
end tb_InputInterfaceLayer_wrapper;

architecture sim of tb_InputInterfaceLayer_wrapper is

    component InputInterfaceLayer_wrapper
        Port (
            clk            : in  std_logic;
            rst            : in  std_logic;
            dip_switches_16bits : in std_logic_vector(15 downto 0);
            dip_switches_16bits_0 : in std_logic_vector(15 downto 0);
            tx_line_0      : out std_logic;
            tx_busy_0      : out std_logic
        );
    end component;

    -- אותות לדוגמה
    signal clk             : std_logic := '0';
    signal rst             : std_logic := '1';
    signal dip_switches_16bits    : std_logic_vector(15 downto 0) := (others => '0');
    signal dip_switches_16bits_0  : std_logic_vector(15 downto 0) := (others => '0');
    signal tx_line_0       : std_logic;
    signal tx_busy_0       : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    -- אינסטנציית הרכיב הנבדק
    uut: InputInterfaceLayer_wrapper
        port map (
            clk                    => clk,
            rst                    => rst,
            dip_switches_16bits   => dip_switches_16bits,
            dip_switches_16bits_0 => dip_switches_16bits_0,
            tx_line_0             => tx_line_0,
            tx_busy_0             => tx_busy_0
        );

    -- יצירת שעון
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- גירוי
    stim_proc : process
    begin
        -- אתחול
        wait for 40 ns;
        rst <= '0';

        -- דגימה 1
        dip_switches_16bits <= x"5A0F";   -- נתון מוצפן 8 סיביות + command ID
        dip_switches_16bits_0 <= x"0001"; -- start_frame ו־valid_in
        wait for 20 ns;
        dip_switches_16bits_0 <= x"0000";

        -- דגימה 2
        wait for 500 ns;
        dip_switches_16bits <= x"A301";
        dip_switches_16bits_0 <= x"0001";
        wait for 20 ns;
        dip_switches_16bits_0 <= x"0000";

        -- המתנה לסיום שידור
        wait for 2 us;

        assert false report "End of simulation" severity failure;
    end process;

end sim;
