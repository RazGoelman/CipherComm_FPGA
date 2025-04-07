// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:07:12 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top InputInterfaceLayer_data_transmission_0_0 -prefix
//               InputInterfaceLayer_data_transmission_0_0_ InputInterfaceLayer_data_transmission_0_0_stub.v
// Design      : InputInterfaceLayer_data_transmission_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "data_transmission,Vivado 2021.1" *)
module InputInterfaceLayer_data_transmission_0_0(clk, rst, fifo_empty, fifo_full, fifo_dout, 
  fifo_rd_en, tx_data_out, tx_valid_out, ready_for_data)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,fifo_empty,fifo_full,fifo_dout[17:0],fifo_rd_en,tx_data_out[7:0],tx_valid_out,ready_for_data" */;
  input clk;
  input rst;
  input fifo_empty;
  input fifo_full;
  input [17:0]fifo_dout;
  output fifo_rd_en;
  output [7:0]tx_data_out;
  output tx_valid_out;
  output ready_for_data;
endmodule
