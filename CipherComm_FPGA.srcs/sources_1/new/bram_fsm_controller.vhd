----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 09:44:26 AM
-- Design Name: 
-- Module Name: bram_fsm_controller - Behavioral
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

entity bram_fsm_controller is
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
end bram_fsm_controller;

architecture Behavioral of bram_fsm_controller is
    signal write_ptr : unsigned(3 downto 0) := (others => '0');
    signal read_ptr  : unsigned(3 downto 0) := (others => '0');
    signal state     : std_logic := '0';  -- '0' = write, '1' = read
begin

    process(clk, rst)
    begin
        if rst = '1' then
            write_ptr  <= (others => '0');
            read_ptr   <= (others => '0');
            bram_we    <= '0';
            data_valid <= '0';
            data_out   <= (others => '0');
            state      <= '0';
        elsif rising_edge(clk) then
            if enable = '1' then
                case state is
                    when '0' =>  -- Write mode
                        if valid = '1' then
                            bram_addr <= std_logic_vector(write_ptr);
                            bram_din  <= data_in;
                            bram_we   <= '1';
                            write_ptr <= write_ptr + 1;
                            state     <= '1';
                        else
                            bram_we <= '0';
                        end if;

                    when '1' =>  -- Read mode
                        bram_addr  <= std_logic_vector(read_ptr);
                        bram_we    <= '0';
                        data_out   <= bram_dout;
                        data_valid <= '1';
                        read_ptr   <= read_ptr + 1;
                        state      <= '0';

                    when others => null;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
