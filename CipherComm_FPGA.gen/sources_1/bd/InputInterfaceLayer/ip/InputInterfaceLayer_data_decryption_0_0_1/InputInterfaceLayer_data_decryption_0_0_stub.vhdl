-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Thu Apr  3 21:54:29 2025
-- Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top InputInterfaceLayer_data_decryption_0_0 -prefix
--               InputInterfaceLayer_data_decryption_0_0_ InputInterfaceLayer_data_decryption_0_0_stub.vhdl
-- Design      : InputInterfaceLayer_data_decryption_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InputInterfaceLayer_data_decryption_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    decrypted_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    decrypted_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );

end InputInterfaceLayer_data_decryption_0_0;

architecture stub of InputInterfaceLayer_data_decryption_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,decrypted_in[7:0],valid_in,decrypted_out[7:0],valid_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "data_decryption,Vivado 2021.1";
begin
end;
