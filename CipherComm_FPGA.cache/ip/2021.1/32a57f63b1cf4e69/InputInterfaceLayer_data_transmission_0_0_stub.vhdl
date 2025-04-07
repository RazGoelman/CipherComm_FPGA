-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  1 10:07:12 2025
-- Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InputInterfaceLayer_data_transmission_0_0_stub.vhdl
-- Design      : InputInterfaceLayer_data_transmission_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 17 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    tx_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_valid_out : out STD_LOGIC;
    ready_for_data : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,fifo_empty,fifo_full,fifo_dout[17:0],fifo_rd_en,tx_data_out[7:0],tx_valid_out,ready_for_data";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "data_transmission,Vivado 2021.1";
begin
end;
