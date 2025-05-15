library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multi_comm_input is
    Port (
        clk, rst          : in  std_logic;
        uart_rx_data      : in  std_logic_vector(7 downto 0);
        uart_rx_valid     : in  std_logic;
        spi_data_in       : in  std_logic_vector(7 downto 0);
        spi_valid_in      : in  std_logic;
        i2c_data_in       : in  std_logic_vector(7 downto 0);
        i2c_valid_in      : in  std_logic;
        gpio_switches     : in  std_logic_vector(7 downto 0);
        gpio_valid        : in  std_logic;
        eth_data_in       : in  std_logic_vector(7 downto 0);
        eth_valid_in      : in  std_logic;
        input_source_sel  : in  std_logic_vector(2 downto 0);
        data_out          : out std_logic_vector(7 downto 0);
        valid_out         : out std_logic
    );
end multi_comm_input;

architecture Behavioral of multi_comm_input is
    signal latched_data  : std_logic_vector(7 downto 0) := (others => '0');
    signal latched_valid : std_logic := '0';
begin

    -- Output assignments
    data_out  <= latched_data;
    valid_out <= latched_valid;

    process(clk, rst)
    begin
        if rst = '1' then
            latched_data  <= (others => '0');
            latched_valid <= '0';

        elsif rising_edge(clk) then
            latched_valid <= '0';  -- Default low unless new valid data arrives

            case input_source_sel is
                when "000" =>  -- UART
                    if uart_rx_valid = '1' then
                        latched_data  <= uart_rx_data;
                        latched_valid <= '1';
                    end if;

                when "001" =>  -- SPI
                    if spi_valid_in = '1' then
                        latched_data  <= spi_data_in;
                        latched_valid <= '1';
                    end if;

                when "010" =>  -- I2C
                    if i2c_valid_in = '1' then
                        latched_data  <= i2c_data_in;
                        latched_valid <= '1';
                    end if;

                when "011" =>  -- GPIO (Switches)
                    if gpio_valid = '1' then
                        latched_data  <= gpio_switches;
                        latched_valid <= '1';
                    end if;

                when "100" =>  -- Ethernet
                    if eth_valid_in = '1' then
                        latched_data  <= eth_data_in;
                        latched_valid <= '1';
                    end if;

                when others =>
                    latched_data  <= (others => '0');
                    latched_valid <= '0';
            end case;
        end if;
    end process;

end Behavioral;
