-- Updated multi_comm_input to support input_source_sel (dynamic source selection)

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
        input_source_sel  : in  std_logic_vector(2 downto 0); -- NEW
        data_out          : out std_logic_vector(7 downto 0);
        valid_out         : out std_logic
    );
end multi_comm_input;

architecture Behavioral of multi_comm_input is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            data_out  <= (others => '0');
            valid_out <= '0';
        elsif rising_edge(clk) then
            valid_out <= '0';
            case input_source_sel is
                when "000" => -- UART
                    if uart_rx_valid = '1' then
                        data_out  <= uart_rx_data;
                        valid_out <= '1';
                    end if;
                when "001" => -- SPI
                    if spi_valid_in = '1' then
                        data_out  <= spi_data_in;
                        valid_out <= '1';
                    end if;
                when "010" => -- I2C
                    if i2c_valid_in = '1' then
                        data_out  <= i2c_data_in;
                        valid_out <= '1';
                    end if;
                when "011" => -- GPIO (Switches)
                    if gpio_valid = '1' then
                        data_out  <= gpio_switches;
                        valid_out <= '1';
                    end if;
                when "100" => -- Ethernet
                    if eth_valid_in = '1' then
                        data_out  <= eth_data_in;
                        valid_out <= '1';
                    end if;
                when others =>
                    data_out  <= (others => '0');
                    valid_out <= '0';
            end case;
        end if;
    end process;
end Behavioral;






------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 04/12/2025 09:42:33 AM
---- Design Name: 
---- Module Name: multi_comm_input - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity multi_comm_input is
--    Port (
--        clk, rst          : in  std_logic;
--        uart_rx_data      : in  std_logic_vector(7 downto 0);
--        uart_rx_valid     : in  std_logic;
--        spi_data_in       : in  std_logic_vector(7 downto 0);
--        spi_valid_in      : in  std_logic;
--        i2c_data_in       : in  std_logic_vector(7 downto 0);
--        i2c_valid_in      : in  std_logic;
--        gpio_switches     : in  std_logic_vector(7 downto 0);
--        gpio_valid        : in  std_logic;
--        eth_data_in       : in  std_logic_vector(7 downto 0);
--        eth_valid_in      : in  std_logic;
--        data_out          : out std_logic_vector(7 downto 0);
--        valid_out         : out std_logic
--    );
--end multi_comm_input;

--architecture Behavioral of multi_comm_input is
--begin
--    process(clk, rst, uart_rx_valid, uart_rx_data,
--        spi_valid_in, spi_data_in,
--        i2c_valid_in, i2c_data_in,
--        gpio_valid, gpio_switches,
--        eth_valid_in, eth_data_in)

--    begin
--        data_out  <= (others => '0');
--        valid_out <= '0';

--        if uart_rx_valid = '1' then
--            data_out  <= uart_rx_data;
--            valid_out <= '1';
--        elsif spi_valid_in = '1' then
--            data_out  <= spi_data_in;
--            valid_out <= '1';
--        elsif i2c_valid_in = '1' then
--            data_out  <= i2c_data_in;
--            valid_out <= '1';
--        elsif gpio_valid = '1' then
--            data_out  <= gpio_switches;
--            valid_out <= '1';
--        elsif eth_valid_in = '1' then
--            data_out  <= eth_data_in;
--            valid_out <= '1';
--        end if;
--    end process;
    
--end Behavioral;