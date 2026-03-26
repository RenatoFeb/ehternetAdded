// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Feb 26 13:00:02 2026
// Host        : DESKTOP-4RVJPC8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/rfebb/Desktop/Projects/ethernetTest5/ethernetTest5.gen/sources_1/bd/eth/ip/eth_tempSens_0_1/eth_tempSens_0_1_stub.v
// Design      : eth_tempSens_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tempSens,Vivado 2024.1" *)
module eth_tempSens_0_1(CLK100MHZ, reset, TMP_SDA, TMP_SCL, SW, w_data)
/* synthesis syn_black_box black_box_pad_pin="reset,TMP_SDA,TMP_SCL,SW[7:0],w_data[15:0]" */
/* synthesis syn_force_seq_prim="CLK100MHZ" */;
  input CLK100MHZ /* synthesis syn_isclock = 1 */;
  input reset;
  inout TMP_SDA;
  output TMP_SCL;
  input [7:0]SW;
  output [15:0]w_data;
endmodule
