// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:07:17 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top InputInterfaceLayer_data_reception_0_0 -prefix
//               InputInterfaceLayer_data_reception_0_0_ InputInterfaceLayer_data_reception_0_0_stub.v
// Design      : InputInterfaceLayer_data_reception_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "data_reception,Vivado 2021.1" *)
module InputInterfaceLayer_data_reception_0_0(clk, rst, rx_data_in, rx_valid_in, received_data, 
  received_valid)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,rx_data_in[7:0],rx_valid_in,received_data[7:0],received_valid" */;
  input clk;
  input rst;
  input [7:0]rx_data_in;
  input rx_valid_in;
  output [7:0]received_data;
  output received_valid;
endmodule
