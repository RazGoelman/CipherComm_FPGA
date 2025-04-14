----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2025 11:20:07 PM
-- Design Name: 
-- Module Name: data_reception - Behavioral
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

entity data_reception is
    Port (
        clk             : in  STD_LOGIC;
        rst             : in  STD_LOGIC;
        rx_data_in      : in  STD_LOGIC_VECTOR (7 downto 0);
        rx_valid_in     : in  STD_LOGIC;
        received_data   : out STD_LOGIC_VECTOR (7 downto 0);
        received_valid  : out STD_LOGIC;
        crc_error       : out STD_LOGIC;
        crc_error_led   : out STD_LOGIC;  -- LED output for CRC error
        to_decryption   : out STD_LOGIC_VECTOR (7 downto 0); -- forward path
        valid_to_decryption : out STD_LOGIC
    );
end data_reception;

architecture Behavioral of data_reception is
    signal data_byte   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal crc_byte    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal byte_count  : integer range 0 to 1 := 0;
    signal valid_reg   : STD_LOGIC := '0';
    signal crc_fail    : STD_LOGIC := '0';

    function crc8(data : STD_LOGIC_VECTOR(7 downto 0)) return STD_LOGIC_VECTOR is
        variable crc : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        variable din : STD_LOGIC_VECTOR(7 downto 0) := data;
    begin
        for i in 7 downto 0 loop
            if (crc(7) xor din(i)) = '1' then
                crc := (crc(6 downto 0) & '0') xor "00110001";
            else
                crc := crc(6 downto 0) & '0';
            end if;
        end loop;
        return crc;
    end function;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                data_byte   <= (others => '0');
                crc_byte    <= (others => '0');
                byte_count  <= 0;
                valid_reg   <= '0';
                crc_fail    <= '0';
            else
                valid_reg   <= '0';
                crc_fail    <= '0';

                if rx_valid_in = '1' then
                    if byte_count = 0 then
                        data_byte  <= rx_data_in;
                        byte_count <= 1;
                    elsif byte_count = 1 then
                        crc_byte   <= rx_data_in;
                        if crc8(data_byte) /= rx_data_in then
                            crc_fail <= '1';
                        else
                            valid_reg <= '1';
                        end if;
                        byte_count <= 0;
                    end if;
                end if;
            end if;
        end if;
    end process;

    received_data         <= data_byte;
    received_valid        <= valid_reg;
    crc_error             <= crc_fail;
    crc_error_led         <= crc_fail; -- LED mirrors CRC error
    to_decryption         <= data_byte;
    valid_to_decryption   <= valid_reg;

end Behavioral;