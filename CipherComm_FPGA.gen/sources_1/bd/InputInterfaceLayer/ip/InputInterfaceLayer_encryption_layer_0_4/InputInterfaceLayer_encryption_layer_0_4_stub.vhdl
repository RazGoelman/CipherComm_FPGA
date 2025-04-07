-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  1 10:07:05 2025
-- Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top InputInterfaceLayer_encryption_layer_0_4 -prefix
--               InputInterfaceLayer_encryption_layer_0_4_ InputInterfaceLayer_encryption_layer_0_4_stub.vhdl
-- Design      : InputInterfaceLayer_encryption_layer_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InputInterfaceLayer_encryption_layer_0_4 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    scrambled_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambled_valid_in : in STD_LOGIC;
    encrypted_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out : out STD_LOGIC
  );

end InputInterfaceLayer_encryption_layer_0_4;

architecture stub of InputInterfaceLayer_encryption_layer_0_4 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,scrambled_data_in[7:0],scrambled_valid_in,encrypted_data_out[7:0],encrypted_valid_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "encryption_layer,Vivado 2021.1";
begin
end;
