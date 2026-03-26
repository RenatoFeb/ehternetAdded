// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 25 15:12:43 2026
// Host        : DESKTOP-4RVJPC8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ eth_axis_gpio_0_0_stub.v
// Design      : eth_axis_gpio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_gpio_v1_0,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SW, LED, s00_axis_aclk, s00_axis_aresetn, 
  s00_axis_tready, s00_axis_tdata, s00_axis_tlast, s00_axis_tvalid, m00_axis_aclk, 
  m00_axis_aresetn, m00_axis_tvalid, m00_axis_tdata, m00_axis_tlast, m00_axis_tuser, 
  m00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="SW[15:0],LED[15:0],s00_axis_aresetn,s00_axis_tready,s00_axis_tdata[7:0],s00_axis_tlast,s00_axis_tvalid,m00_axis_aresetn,m00_axis_tvalid,m00_axis_tdata[7:0],m00_axis_tlast,m00_axis_tuser[11:0],m00_axis_tready" */
/* synthesis syn_force_seq_prim="s00_axis_aclk" */
/* synthesis syn_force_seq_prim="m00_axis_aclk" */;
  input [15:0]SW;
  output [15:0]LED;
  input s00_axis_aclk /* synthesis syn_isclock = 1 */;
  input s00_axis_aresetn;
  output s00_axis_tready;
  input [7:0]s00_axis_tdata;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input m00_axis_aclk /* synthesis syn_isclock = 1 */;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [7:0]m00_axis_tdata;
  output m00_axis_tlast;
  output [11:0]m00_axis_tuser;
  input m00_axis_tready;
endmodule
