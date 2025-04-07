// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:06:03 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InputInterfaceLayer_scrambler_0_0_sim_netlist.v
// Design      : InputInterfaceLayer_scrambler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InputInterfaceLayer_scrambler_0_0,scrambler,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "scrambler,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    enable,
    valid_in,
    data_in,
    data_out,
    valid_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input enable;
  input valid_in;
  input [7:0]data_in;
  output [7:0]data_out;
  output valid_out;

  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire enable;
  wire rst;
  wire valid_in;
  wire valid_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scrambler U0
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .enable(enable),
        .rst(rst),
        .valid_in(valid_in),
        .valid_out(valid_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scrambler
   (data_out,
    valid_out,
    clk,
    rst,
    data_in,
    enable,
    valid_in);
  output [7:0]data_out;
  output valid_out;
  input clk;
  input rst;
  input [7:0]data_in;
  input enable;
  input valid_in;

  wire clk;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire \data_out[7]_i_1_n_0 ;
  wire enable;
  wire [7:0]lfsr;
  wire [0:0]p_0_out__0;
  wire rst;
  wire [7:0]scrambled;
  wire \scrambled[0]_i_1_n_0 ;
  wire \scrambled[1]_i_1_n_0 ;
  wire \scrambled[2]_i_1_n_0 ;
  wire \scrambled[3]_i_1_n_0 ;
  wire \scrambled[4]_i_1_n_0 ;
  wire \scrambled[5]_i_1_n_0 ;
  wire \scrambled[6]_i_1_n_0 ;
  wire \scrambled[7]_i_1_n_0 ;
  wire valid_in;
  wire valid_out;

  LUT2 #(
    .INIT(4'h8)) 
    \data_out[7]_i_1 
       (.I0(enable),
        .I1(valid_in),
        .O(\data_out[7]_i_1_n_0 ));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[0]),
        .Q(data_out[0]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[1]),
        .Q(data_out[1]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[2]),
        .Q(data_out[2]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[3]),
        .Q(data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[4]),
        .Q(data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[5]),
        .Q(data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[6]),
        .Q(data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(scrambled[7]),
        .Q(data_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_reg[0] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_out__0),
        .Q(lfsr[0]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_reg[1] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(lfsr[0]),
        .PRE(rst),
        .Q(lfsr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_reg[2] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(lfsr[1]),
        .Q(lfsr[2]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_reg[3] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(lfsr[2]),
        .PRE(rst),
        .Q(lfsr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(lfsr[3]),
        .Q(lfsr[4]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_reg[5] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(lfsr[4]),
        .PRE(rst),
        .Q(lfsr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \lfsr_reg[6] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(lfsr[5]),
        .Q(lfsr[6]));
  FDPE #(
    .INIT(1'b1)) 
    \lfsr_reg[7] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .D(lfsr[6]),
        .PRE(rst),
        .Q(lfsr[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p_0_out
       (.I0(lfsr[4]),
        .I1(lfsr[5]),
        .I2(lfsr[7]),
        .I3(lfsr[3]),
        .O(p_0_out__0));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[0]_i_1 
       (.I0(lfsr[0]),
        .I1(data_in[0]),
        .O(\scrambled[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[1]_i_1 
       (.I0(lfsr[1]),
        .I1(data_in[1]),
        .O(\scrambled[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[2]_i_1 
       (.I0(lfsr[2]),
        .I1(data_in[2]),
        .O(\scrambled[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[3]_i_1 
       (.I0(lfsr[3]),
        .I1(data_in[3]),
        .O(\scrambled[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[4]_i_1 
       (.I0(lfsr[4]),
        .I1(data_in[4]),
        .O(\scrambled[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[5]_i_1 
       (.I0(lfsr[5]),
        .I1(data_in[5]),
        .O(\scrambled[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[6]_i_1 
       (.I0(lfsr[6]),
        .I1(data_in[6]),
        .O(\scrambled[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \scrambled[7]_i_1 
       (.I0(lfsr[7]),
        .I1(data_in[7]),
        .O(\scrambled[7]_i_1_n_0 ));
  FDCE \scrambled_reg[0] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[0]_i_1_n_0 ),
        .Q(scrambled[0]));
  FDCE \scrambled_reg[1] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[1]_i_1_n_0 ),
        .Q(scrambled[1]));
  FDCE \scrambled_reg[2] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[2]_i_1_n_0 ),
        .Q(scrambled[2]));
  FDCE \scrambled_reg[3] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[3]_i_1_n_0 ),
        .Q(scrambled[3]));
  FDCE \scrambled_reg[4] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[4]_i_1_n_0 ),
        .Q(scrambled[4]));
  FDCE \scrambled_reg[5] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[5]_i_1_n_0 ),
        .Q(scrambled[5]));
  FDCE \scrambled_reg[6] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[6]_i_1_n_0 ),
        .Q(scrambled[6]));
  FDCE \scrambled_reg[7] 
       (.C(clk),
        .CE(\data_out[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\scrambled[7]_i_1_n_0 ),
        .Q(scrambled[7]));
  FDCE valid_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(valid_out));
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
