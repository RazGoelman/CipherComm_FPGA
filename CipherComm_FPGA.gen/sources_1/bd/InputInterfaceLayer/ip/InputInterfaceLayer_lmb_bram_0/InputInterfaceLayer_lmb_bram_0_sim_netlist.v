// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Apr  1 10:01:59 2025
// Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top InputInterfaceLayer_lmb_bram_0 -prefix
//               InputInterfaceLayer_lmb_bram_0_ InputInterfaceLayer_lmb_bram_0_sim_netlist.v
// Design      : InputInterfaceLayer_lmb_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InputInterfaceLayer_lmb_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module InputInterfaceLayer_lmb_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "InputInterfaceLayer_lmb_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  InputInterfaceLayer_lmb_bram_0_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59728)
`pragma protect data_block
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
`pragma protect end_protected
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
