// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:07:05 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top InputInterfaceLayer_encryption_layer_0_4 -prefix
//               InputInterfaceLayer_encryption_layer_0_4_ InputInterfaceLayer_encryption_layer_0_4_sim_netlist.v
// Design      : InputInterfaceLayer_encryption_layer_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InputInterfaceLayer_encryption_layer_0_4,encryption_layer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "encryption_layer,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module InputInterfaceLayer_encryption_layer_0_4
   (clk,
    reset,
    scrambled_data_in,
    scrambled_valid_in,
    encrypted_data_out,
    encrypted_valid_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]scrambled_data_in;
  input scrambled_valid_in;
  output [7:0]encrypted_data_out;
  output encrypted_valid_out;

  wire clk;
  wire [7:0]encrypted_data_out;
  wire encrypted_valid_out;
  wire reset;
  wire [7:0]scrambled_data_in;
  wire scrambled_valid_in;

  InputInterfaceLayer_encryption_layer_0_4_encryption_layer U0
       (.clk(clk),
        .encrypted_data_out(encrypted_data_out),
        .encrypted_valid_out(encrypted_valid_out),
        .reset(reset),
        .scrambled_data_in(scrambled_data_in),
        .scrambled_valid_in(scrambled_valid_in));
endmodule

module InputInterfaceLayer_encryption_layer_0_4_encryption_interface
   (encrypted_valid_out,
    encrypted_data_out,
    valid_out,
    clk,
    reset,
    Q);
  output encrypted_valid_out;
  output [7:0]encrypted_data_out;
  input valid_out;
  input clk;
  input reset;
  input [7:0]Q;

  wire [7:0]Q;
  wire clk;
  wire [7:0]encrypted_data_out;
  wire encrypted_valid_out;
  wire reset;
  wire valid_out;

  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[0]),
        .Q(encrypted_data_out[0]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[1]),
        .Q(encrypted_data_out[1]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[2]),
        .Q(encrypted_data_out[2]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[3]),
        .Q(encrypted_data_out[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[4]),
        .Q(encrypted_data_out[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[5]),
        .Q(encrypted_data_out[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[6]),
        .Q(encrypted_data_out[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(Q[7]),
        .Q(encrypted_data_out[7]));
  FDCE valid_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(valid_out),
        .Q(encrypted_valid_out));
endmodule

module InputInterfaceLayer_encryption_layer_0_4_encryption_layer
   (encrypted_data_out,
    encrypted_valid_out,
    scrambled_data_in,
    scrambled_valid_in,
    clk,
    reset);
  output [7:0]encrypted_data_out;
  output encrypted_valid_out;
  input [7:0]scrambled_data_in;
  input scrambled_valid_in;
  input clk;
  input reset;

  wire clk;
  wire [7:0]data_out;
  wire [7:0]encrypted_data_out;
  wire encrypted_valid_out;
  wire reset;
  wire [7:0]scrambled_data_in;
  wire scrambled_valid_in;
  wire valid_out;

  InputInterfaceLayer_encryption_layer_0_4_encryption_interface encryption_interface_inst
       (.Q(data_out),
        .clk(clk),
        .encrypted_data_out(encrypted_data_out),
        .encrypted_valid_out(encrypted_valid_out),
        .reset(reset),
        .valid_out(valid_out));
  InputInterfaceLayer_encryption_layer_0_4_encryption_logic encryption_logic_inst
       (.Q(data_out),
        .clk(clk),
        .reset(reset),
        .scrambled_data_in(scrambled_data_in),
        .scrambled_valid_in(scrambled_valid_in),
        .valid_out(valid_out));
endmodule

module InputInterfaceLayer_encryption_layer_0_4_encryption_logic
   (valid_out,
    Q,
    scrambled_valid_in,
    clk,
    reset,
    scrambled_data_in);
  output valid_out;
  output [7:0]Q;
  input scrambled_valid_in;
  input clk;
  input reset;
  input [7:0]scrambled_data_in;

  wire [7:0]Q;
  wire clk;
  wire [6:1]p_0_in;
  wire reset;
  wire [7:0]scrambled_data_in;
  wire scrambled_valid_in;
  wire valid_out;

  LUT1 #(
    .INIT(2'h1)) 
    \data_out[1]_i_1 
       (.I0(scrambled_data_in[1]),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[3]_i_1 
       (.I0(scrambled_data_in[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[4]_i_1 
       (.I0(scrambled_data_in[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[6]_i_1 
       (.I0(scrambled_data_in[6]),
        .O(p_0_in[6]));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(scrambled_data_in[0]),
        .Q(Q[0]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE \data_out_reg[2] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(scrambled_data_in[2]),
        .Q(Q[2]));
  FDCE \data_out_reg[3] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE \data_out_reg[4] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE \data_out_reg[5] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(scrambled_data_in[5]),
        .Q(Q[5]));
  FDCE \data_out_reg[6] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(Q[6]));
  FDCE \data_out_reg[7] 
       (.C(clk),
        .CE(scrambled_valid_in),
        .CLR(reset),
        .D(scrambled_data_in[7]),
        .Q(Q[7]));
  FDCE valid_out_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(scrambled_valid_in),
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
