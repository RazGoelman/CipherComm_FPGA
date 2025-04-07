// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:07:12 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InputInterfaceLayer_data_transmission_0_0_sim_netlist.v
// Design      : InputInterfaceLayer_data_transmission_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InputInterfaceLayer_data_transmission_0_0,data_transmission,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "data_transmission,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    fifo_empty,
    fifo_full,
    fifo_dout,
    fifo_rd_en,
    tx_data_out,
    tx_valid_out,
    ready_for_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input fifo_empty;
  input fifo_full;
  input [17:0]fifo_dout;
  output fifo_rd_en;
  output [7:0]tx_data_out;
  output tx_valid_out;
  output ready_for_data;

  wire clk;
  wire [17:0]fifo_dout;
  wire fifo_empty;
  wire fifo_full;
  wire ready_for_data;
  wire rst;
  wire [7:0]tx_data_out;
  wire tx_valid_out;

  assign fifo_rd_en = tx_valid_out;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_transmission U0
       (.clk(clk),
        .fifo_dout(fifo_dout[8:0]),
        .fifo_empty(fifo_empty),
        .rst(rst),
        .tx_data_out(tx_data_out),
        .tx_valid_out(tx_valid_out));
  LUT1 #(
    .INIT(2'h1)) 
    ready_for_data_INST_0
       (.I0(fifo_full),
        .O(ready_for_data));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_transmission
   (tx_valid_out,
    tx_data_out,
    clk,
    fifo_empty,
    fifo_dout,
    rst);
  output tx_valid_out;
  output [7:0]tx_data_out;
  input clk;
  input fifo_empty;
  input [8:0]fifo_dout;
  input rst;

  wire clk;
  wire [8:0]fifo_dout;
  wire fifo_empty;
  wire rd_en_int_i_1_n_0;
  wire rst;
  wire [7:0]tx_data_out;
  wire \tx_data_out[7]_i_1_n_0 ;
  wire tx_valid_out;

  LUT3 #(
    .INIT(8'h04)) 
    rd_en_int_i_1
       (.I0(fifo_empty),
        .I1(fifo_dout[8]),
        .I2(rst),
        .O(rd_en_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_en_int_reg
       (.C(clk),
        .CE(1'b1),
        .D(rd_en_int_i_1_n_0),
        .Q(tx_valid_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \tx_data_out[7]_i_1 
       (.I0(fifo_dout[8]),
        .I1(fifo_empty),
        .O(\tx_data_out[7]_i_1_n_0 ));
  FDRE \tx_data_out_reg[0] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[0]),
        .Q(tx_data_out[0]),
        .R(rst));
  FDRE \tx_data_out_reg[1] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[1]),
        .Q(tx_data_out[1]),
        .R(rst));
  FDRE \tx_data_out_reg[2] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[2]),
        .Q(tx_data_out[2]),
        .R(rst));
  FDRE \tx_data_out_reg[3] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[3]),
        .Q(tx_data_out[3]),
        .R(rst));
  FDRE \tx_data_out_reg[4] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[4]),
        .Q(tx_data_out[4]),
        .R(rst));
  FDRE \tx_data_out_reg[5] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[5]),
        .Q(tx_data_out[5]),
        .R(rst));
  FDRE \tx_data_out_reg[6] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[6]),
        .Q(tx_data_out[6]),
        .R(rst));
  FDRE \tx_data_out_reg[7] 
       (.C(clk),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(fifo_dout[7]),
        .Q(tx_data_out[7]),
        .R(rst));
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
