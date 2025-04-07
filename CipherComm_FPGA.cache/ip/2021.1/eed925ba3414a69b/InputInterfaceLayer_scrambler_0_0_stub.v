// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:06:03 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InputInterfaceLayer_scrambler_0_0_stub.v
// Design      : InputInterfaceLayer_scrambler_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "scrambler,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, enable, valid_in, data_in, data_out, 
  valid_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,enable,valid_in,data_in[7:0],data_out[7:0],valid_out" */;
  input clk;
  input rst;
  input enable;
  input valid_in;
  input [7:0]data_in;
  output [7:0]data_out;
  output valid_out;
endmodule
