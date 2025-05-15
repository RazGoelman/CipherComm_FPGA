library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity output_display is
generic (
        observation_window_cycles : natural := 1  -- Number of cycles to hold valid_out after valid_in
    );
    Port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        data_in     : in  std_logic_vector(7 downto 0);
        valid_in    : in  std_logic;
        crc_error_internal : in  std_logic;
        leds_out    : out std_logic_vector(7 downto 0);
        debug_enable : in std_logic
    );
end output_display;

architecture Behavioral of output_display is
    signal led_reg : std_logic_vector(7 downto 0) := (others => '0');
begin

    process(clk, rst)
    begin
        if rst = '1' then
            led_reg <= (others => '0');

        elsif rising_edge(clk) then
            if crc_error_internal = '1' then
                led_reg <= "00000001";  -- RED = Error
                if debug_enable = '1' then
                    report "[DEBUG][DISPLAY] CRC ERROR to RED LED" severity warning;
                end if;

            elsif valid_in = '1' then
                led_reg <= data_in;     -- Show data directly on LEDs (optional)
                -- Alternatively: led_reg <= "10000000"; -- GREEN = Success
                if debug_enable = '1' then
                    report "[DEBUG][DISPLAY] CRC OK to GREEN LED | Data = " & integer'image(to_integer(unsigned(data_in))) severity note;
                end if;

            else
                led_reg <= led_reg; -- Latch last state
            end if;
        end if;
    end process;

    leds_out <= led_reg;

end Behavioral;
