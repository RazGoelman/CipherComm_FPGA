// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:07:17 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top InputInterfaceLayer_data_reception_0_0 -prefix
//               InputInterfaceLayer_data_reception_0_0_ InputInterfaceLayer_data_reception_0_0_sim_netlist.v
// Design      : InputInterfaceLayer_data_reception_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InputInterfaceLayer_data_reception_0_0,data_reception,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "data_reception,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module InputInterfaceLayer_data_reception_0_0
   (clk,
    rst,
    rx_data_in,
    rx_valid_in,
    received_data,
    received_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]rx_data_in;
  input rx_valid_in;
  output [7:0]received_data;
  output received_valid;

  wire clk;
  wire [7:0]received_data;
  wire received_valid;
  wire rst;
  wire [7:0]rx_data_in;
  wire rx_valid_in;

  InputInterfaceLayer_data_reception_0_0_data_reception U0
       (.clk(clk),
        .received_data(received_data),
        .received_valid(received_valid),
        .rst(rst),
        .rx_data_in(rx_data_in),
        .rx_valid_in(rx_valid_in));
endmodule

module InputInterfaceLayer_data_reception_0_0_data_reception
   (received_data,
    received_valid,
    rst,
    rx_valid_in,
    rx_data_in,
    clk);
  output [7:0]received_data;
  output received_valid;
  input rst;
  input rx_valid_in;
  input [7:0]rx_data_in;
  input clk;

  wire clk;
  wire [7:0]received_data;
  wire received_valid;
  wire rst;
  wire [7:0]rx_data_in;
  wire rx_valid_in;
  wire valid_reg_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[0]),
        .Q(received_data[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[1]),
        .Q(received_data[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[2]),
        .Q(received_data[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[3]),
        .Q(received_data[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[4]),
        .Q(received_data[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[5]),
        .Q(received_data[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[6]),
        .Q(received_data[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk),
        .CE(rx_valid_in),
        .D(rx_data_in[7]),
        .Q(received_data[7]),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    valid_reg_i_1
       (.I0(rx_valid_in),
        .I1(rst),
        .O(valid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_reg_i_1_n_0),
        .Q(received_valid),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
