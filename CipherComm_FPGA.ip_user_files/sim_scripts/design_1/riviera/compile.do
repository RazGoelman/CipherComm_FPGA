vlib work
vlib riviera

vlib riviera/fifo_generator_v13_2_5
vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_1

vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/6dcf" \
"../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/6dcf" \
"../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/6dcf" \
"../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/6dcf" \
"../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CipherComm_FPGA.gen/sources_1/bd/design_1/ipshared/6dcf" \
"../../../bd/design_1/ip/design_1_reset_inv_0_0/sim/design_1_reset_inv_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

