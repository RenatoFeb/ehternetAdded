vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_data_fifo_v2_0_13

vmap xpm questa_lib/msim/xpm
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_13 questa_lib/msim/axis_data_fifo_v2_0_13

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_rmii_axis_0_0/src/data_fifo/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_rmii_axis_0_0/src/data_fifo/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_rmii_axis_0_0/src/data_fifo/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../bd/eth/ip/eth_rmii_axis_0_0/src/data_fifo/sim/data_fifo.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../bd/eth/ipshared/b3b3/src/crc_gen.sv" \
"../../../bd/eth/ipshared/b3b3/src/eth_header_gen.sv" \
"../../../bd/eth/ipshared/b3b3/src/packet_gen.sv" \
"../../../bd/eth/ipshared/b3b3/src/packet_recv.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../bd/eth/ipshared/b3b3/src/rmii_axis_v1_0.v" \
"../../../bd/eth/ip/eth_rmii_axis_0_0/sim/eth_rmii_axis_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/eth/ip/eth_proc_sys_reset_0_0/sim/eth_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../bd/eth/ip/eth_clk_wiz_0_0/eth_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/eth/ip/eth_clk_wiz_0_0/eth_clk_wiz_0_0.v" \

vlog -work axis_infrastructure_v1_1_1  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_13  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/sim/axis_data_fifo_tuser.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../bd/eth/ipshared/099f/src/axis_gpio.sv" \
"../../../bd/eth/ipshared/099f/src/sw_axis.sv" \
"../../../bd/eth/ipshared/099f/src/debounce.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ipshared/3242" "+incdir+../../../../ethernetTest5.gen/sources_1/bd/eth/ip/eth_axis_gpio_0_0/src/axis_data_fifo_tuser/hdl" \
"../../../bd/eth/ipshared/099f/src/axis_gpio_v1_0.v" \
"../../../bd/eth/ip/eth_axis_gpio_0_0/sim/eth_axis_gpio_0_0.v" \
"../../../bd/eth/ip/eth_tempSens_0_1/sim/eth_tempSens_0_1.v" \
"../../../bd/eth/sim/eth.v" \

vlog -work xil_defaultlib \
"glbl.v"

