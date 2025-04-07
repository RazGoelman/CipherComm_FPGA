// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Apr  3 21:54:29 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top InputInterfaceLayer_data_decryption_0_0 -prefix
//               InputInterfaceLayer_data_decryption_0_0_ InputInterfaceLayer_data_decryption_0_0_stub.v
// Design      : InputInterfaceLayer_data_decryption_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "data_decryption,Vivado 2021.1" *)
module InputInterfaceLayer_data_decryption_0_0(clk, reset, decrypted_in, valid_in, 
  decrypted_out, valid_out)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,decrypted_in[7:0],valid_in,decrypted_out[7:0],valid_out" */;
  input clk;
  input reset;
  input [7:0]decrypted_in;
  input valid_in;
  output [7:0]decrypted_out;
  output valid_out;
endmodule
