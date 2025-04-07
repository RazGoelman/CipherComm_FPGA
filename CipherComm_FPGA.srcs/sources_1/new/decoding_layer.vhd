----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2025 08:23:18 PM
-- Design Name: 
-- Module Name: decoding_layer - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoding_layer is
    Port (
        clk            : in std_logic;
        rst            : in std_logic;
        data_in        : in std_logic_vector(7 downto 0);
        valid_in       : in std_logic;
        crc_in         : in std_logic_vector(7 downto 0);
        parity_in      : in std_logic;

        data_out       : out std_logic_vector(7 downto 0);
        valid_out      : out std_logic;
        error_detected : out std_logic;

        sseg_out       : out std_logic_vector(6 downto 0)  -- 7-segment display output
    );
end decoding_layer;

architecture Behavioral of decoding_layer is
    signal computed_crc    : std_logic_vector(7 downto 0);
    signal computed_parity : std_logic;

    -- CRC-8 Calculation
    function crc8(data: std_logic_vector(7 downto 0)) return std_logic_vector is
        variable crc: std_logic_vector(7 downto 0) := (others => '0');
        constant polynomial: std_logic_vector(7 downto 0) := "00000111"; -- x^8+x^2+x+1
    begin
        crc := data;
        for i in 0 to 7 loop
            if crc(7) = '1' then
                crc := (crc(6 downto 0) & '0') xor polynomial;
            else
                crc := crc(6 downto 0) & '0';
            end if;
        end loop;
        return crc;
    end function;

    -- Even parity
    function even_parity(data: std_logic_vector(7 downto 0)) return std_logic is
        variable parity: std_logic := '0';
    begin
        for i in data'range loop
            parity := parity xor data(i);
        end loop;
        return parity;
    end function;

    -- 7-Segment Hex Display
    function hex_to_7seg(hex : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable seg : std_logic_vector(6 downto 0);
    begin
        case hex is
            when "0000" => seg := "1000000"; -- 0
            when "0001" => seg := "1111001"; -- 1
            when "0010" => seg := "0100100"; -- 2
            when "0011" => seg := "0110000"; -- 3
            when "0100" => seg := "0011001"; -- 4
            when "0101" => seg := "0010010"; -- 5
            when "0110" => seg := "0000010"; -- 6
            when "0111" => seg := "1111000"; -- 7
            when "1000" => seg := "0000000"; -- 8
            when "1001" => seg := "0011000"; -- 9
            when "1110" => seg := "0000110"; -- E
            when others => seg := "1111111"; -- blank
        end case;
        return seg;
    end function;
begin


    process(clk, rst)
    begin
        if rst = '1' then
            data_out        <= (others => '0');
            valid_out       <= '0';
            error_detected  <= '0';
            computed_crc    <= (others => '0');
            computed_parity <= '0';
            sseg_out        <= hex_to_7seg("0000"); -- default 0

        elsif rising_edge(clk) then
            if valid_in = '1' then
                computed_crc    <= crc8(data_in);
                computed_parity <= even_parity(data_in);

                if (computed_crc = crc_in) and (computed_parity = parity_in) then
                    data_out       <= data_in;
                    valid_out      <= '1';
                    error_detected <= '0';
                    sseg_out       <= hex_to_7seg("0000"); -- Display 0
                else
                    data_out       <= (others => '0');
                    valid_out      <= '0';
                    error_detected <= '1';
                    sseg_out       <= hex_to_7seg("1110"); -- Display E
                end if;
            else
                valid_out <= '0';
            end if;
        end if;
    end process;
    
end Behavioral;
