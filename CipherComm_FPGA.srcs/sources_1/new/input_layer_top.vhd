----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 09:29:44 AM
-- Design Name: 
-- Module Name: input_layer_top; - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity input_layer_top is
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;

        -- Inputs from board (coming from physical pins via XDC)
        uart_rx_data  : in  std_logic_vector(7 downto 0);
        uart_rx_valid : in  std_logic;

        spi_data_in   : in  std_logic_vector(7 downto 0);
        spi_valid_in  : in  std_logic;

        i2c_data_in   : in  std_logic_vector(7 downto 0);
        i2c_valid_in  : in  std_logic;

        gpio_switches : in  std_logic_vector(7 downto 0);
        gpio_valid    : in  std_logic;

        eth_data_in   : in  std_logic_vector(7 downto 0);
        eth_valid_in  : in  std_logic;

        -- Outputs to next layer (encoder)
        data_out      : out std_logic_vector(7 downto 0);
        valid_out     : out std_logic
    );
end input_layer_top;

architecture Structural of input_layer_top is

    ----------------------------------------------------------------
    -- Internal Signals
    ----------------------------------------------------------------
    signal muxed_data     : std_logic_vector(7 downto 0);
    signal muxed_valid    : std_logic;

    signal bram_addr      : std_logic_vector(3 downto 0);
    signal bram_din       : std_logic_vector(7 downto 0);
    signal bram_we        : std_logic;
    signal bram_dout      : std_logic_vector(7 downto 0);

    type bram_type is array (0 to 15) of std_logic_vector(7 downto 0);
    signal bram_mem : bram_type := (others => (others => '0'));

    ----------------------------------------------------------------
    -- Components
    ----------------------------------------------------------------
    component multi_comm_input
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
            data_out          : out std_logic_vector(7 downto 0);
            valid_out         : out std_logic
        );
    end component;

    component bram_fsm_controller
        Port (
            clk        : in  std_logic;
            rst        : in  std_logic;
            data_in    : in  std_logic_vector(7 downto 0);
            valid      : in  std_logic;
            enable     : in  std_logic;
            bram_addr  : out std_logic_vector(3 downto 0);
            bram_din   : out std_logic_vector(7 downto 0);
            bram_dout  : in  std_logic_vector(7 downto 0);
            bram_we    : out std_logic;
            data_out   : out std_logic_vector(7 downto 0);
            data_valid : out std_logic
        );
    end component;

begin

    ----------------------------------------------------------------
    -- MUX: בוחר את מקור הנתונים התקף לפי עדיפויות
    ----------------------------------------------------------------
    u_mux : multi_comm_input
        port map (
            clk           => clk,
            rst           => rst,
            uart_rx_data  => uart_rx_data,
            uart_rx_valid => uart_rx_valid,
            spi_data_in   => spi_data_in,
            spi_valid_in  => spi_valid_in,
            i2c_data_in   => i2c_data_in,
            i2c_valid_in  => i2c_valid_in,
            gpio_switches => gpio_switches,
            gpio_valid    => gpio_valid,
            eth_data_in   => eth_data_in,
            eth_valid_in  => eth_valid_in,
            data_out      => muxed_data,
            valid_out     => muxed_valid
        );

    ----------------------------------------------------------------
    -- BRAM Memory (simple behavioral model)
    ----------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if bram_we = '1' then
                bram_mem(to_integer(unsigned(bram_addr))) <= bram_din;
            end if;
            bram_dout <= bram_mem(to_integer(unsigned(bram_addr)));
        end if;
    end process;

    ----------------------------------------------------------------
    -- BRAM FSM Controller (handles write/read and outputs to encoder)
    ----------------------------------------------------------------
    u_bram_fsm : bram_fsm_controller
        port map (
            clk        => clk,
            rst        => rst,
            data_in    => muxed_data,
            valid      => muxed_valid,
            enable     => '1',  -- enable always
            bram_addr  => bram_addr,
            bram_din   => bram_din,
            bram_dout  => bram_dout,
            bram_we    => bram_we,
            data_out   => data_out,
            data_valid => valid_out
        );

end Structural;
