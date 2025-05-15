-- encryption_layer.vhd - FINAL SAFE VERSION without debug_enable
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity encryption_layer is
generic (
        observation_window_cycles : natural := 5
    );
    Port (
        clk                 : in  STD_LOGIC;
        reset               : in  STD_LOGIC;
        scrambled_data_in   : in  STD_LOGIC_VECTOR(7 downto 0);
        scrambled_valid_in  : in  STD_LOGIC;
        encrypted_data_out  : out STD_LOGIC_VECTOR(7 downto 0);
        encrypted_valid_out : out STD_LOGIC;
        crc_out             : out STD_LOGIC_VECTOR(7 downto 0)
    );
end encryption_layer;

architecture Behavioral of encryption_layer is

    signal internal_encrypted_data : STD_LOGIC_VECTOR(7 downto 0);
    signal internal_valid_out      : STD_LOGIC;
    signal crc_reg                 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    function compute_crc8(data : STD_LOGIC_VECTOR(7 downto 0)) return STD_LOGIC_VECTOR is
        variable crc : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
        variable din : STD_LOGIC_VECTOR(7 downto 0) := data;
        variable feedback : STD_LOGIC;
    begin
        for i in 0 to 7 loop
            feedback := din(7) xor crc(7);
            crc(7 downto 1) := crc(6 downto 0);
            crc(0) := feedback;
            crc(2) := crc(2) xor feedback;
            crc(1) := crc(1) xor feedback;
            din := din(6 downto 0) & '0';
        end loop;
        return crc;
    end function;

begin

    encryption_logic_inst : entity work.encryption_logic
        port map (
            clk       => clk,
            reset     => reset,
            data_in   => scrambled_data_in,
            valid_in  => scrambled_valid_in,
            data_out  => internal_encrypted_data,
            valid_out => internal_valid_out
        );

    encryption_interface_inst : entity work.encryption_interface
        port map (
            clk             => clk,
            reset           => reset,
            data_in         => scrambled_data_in,
            valid_in        => scrambled_valid_in,
            data_out        => encrypted_data_out,
            valid_out       => encrypted_valid_out,
            logic_data_in   => internal_encrypted_data,
            logic_valid_out => internal_valid_out
        );

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                crc_reg <= (others => '0');
            elsif internal_valid_out = '1' then
                crc_reg <= compute_crc8(internal_encrypted_data);
            end if;
        end if;
    end process;

    crc_out <= crc_reg;

end Behavioral;