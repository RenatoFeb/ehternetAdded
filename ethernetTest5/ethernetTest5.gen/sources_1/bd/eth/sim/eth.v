//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Feb 26 13:21:15 2026
//Host        : DESKTOP-4RVJPC8 running 64-bit major release  (build 9200)
//Command     : generate_target eth.bd
//Design      : eth
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "eth,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=eth,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "eth.hwdef" *) 
module eth
   (CLK100MHZ,
    ETH_CRSDV,
    ETH_REFCLK,
    ETH_RXD,
    ETH_RXERR,
    ETH_TXD,
    ETH_TXEN,
    LED,
    RESET_N,
    SW,
    TMP_SCL,
    TMP_SDA,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK100MHZ, ASSOCIATED_RESET reset, CLK_DOMAIN eth_CLK100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK100MHZ;
  input ETH_CRSDV;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ETH_REFCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ETH_REFCLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 45.0" *) output ETH_REFCLK;
  input [1:0]ETH_RXD;
  input ETH_RXERR;
  output [1:0]ETH_TXD;
  output ETH_TXEN;
  output [15:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input RESET_N;
  input [7:0]SW;
  output TMP_SCL;
  inout TMP_SDA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;

  wire ETH_CRSDV_0_1;
  wire [1:0]ETH_RXD_0_1;
  wire ETH_RXERR_0_1;
  wire Net;
  wire [7:0]SW_0_1;
  wire [15:0]axis_gpio_0_LED;
  wire [7:0]axis_gpio_0_M00_AXIS_TDATA;
  wire axis_gpio_0_M00_AXIS_TLAST;
  wire axis_gpio_0_M00_AXIS_TREADY;
  wire [11:0]axis_gpio_0_M00_AXIS_TUSER;
  wire axis_gpio_0_M00_AXIS_TVALID;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire ext_reset_in_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_0_1;
  wire [1:0]rmii_axis_0_ETH_TXD;
  wire rmii_axis_0_ETH_TXEN;
  wire [7:0]rmii_axis_0_M00_AXIS_TDATA;
  wire rmii_axis_0_M00_AXIS_TLAST;
  wire rmii_axis_0_M00_AXIS_TREADY;
  wire rmii_axis_0_M00_AXIS_TVALID;
  wire tempSens_0_TMP_SCL;
  wire [15:0]tempSens_0_w_data;

  assign ETH_CRSDV_0_1 = ETH_CRSDV;
  assign ETH_REFCLK = clk_wiz_0_clk_out2;
  assign ETH_RXD_0_1 = ETH_RXD[1:0];
  assign ETH_RXERR_0_1 = ETH_RXERR;
  assign ETH_TXD[1:0] = rmii_axis_0_ETH_TXD;
  assign ETH_TXEN = rmii_axis_0_ETH_TXEN;
  assign LED[15:0] = axis_gpio_0_LED;
  assign SW_0_1 = SW[7:0];
  assign TMP_SCL = tempSens_0_TMP_SCL;
  assign clk_in1_0_1 = CLK100MHZ;
  assign ext_reset_in_0_1 = RESET_N;
  assign reset_0_1 = reset;
  eth_axis_gpio_0_0 axis_gpio_0
       (.LED(axis_gpio_0_LED),
        .SW(tempSens_0_w_data),
        .m00_axis_aclk(clk_wiz_0_clk_out1),
        .m00_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m00_axis_tdata(axis_gpio_0_M00_AXIS_TDATA),
        .m00_axis_tlast(axis_gpio_0_M00_AXIS_TLAST),
        .m00_axis_tready(axis_gpio_0_M00_AXIS_TREADY),
        .m00_axis_tuser(axis_gpio_0_M00_AXIS_TUSER),
        .m00_axis_tvalid(axis_gpio_0_M00_AXIS_TVALID),
        .s00_axis_aclk(clk_wiz_0_clk_out1),
        .s00_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axis_tdata(rmii_axis_0_M00_AXIS_TDATA),
        .s00_axis_tlast(rmii_axis_0_M00_AXIS_TLAST),
        .s00_axis_tready(rmii_axis_0_M00_AXIS_TREADY),
        .s00_axis_tvalid(rmii_axis_0_M00_AXIS_TVALID));
  eth_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked));
  eth_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  eth_rmii_axis_0_0 rmii_axis_0
       (.ETH_CRSDV(ETH_CRSDV_0_1),
        .ETH_RXD(ETH_RXD_0_1),
        .ETH_RXERR(ETH_RXERR_0_1),
        .ETH_TXD(rmii_axis_0_ETH_TXD),
        .ETH_TXEN(rmii_axis_0_ETH_TXEN),
        .m00_axis_aclk(clk_wiz_0_clk_out1),
        .m00_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m00_axis_tdata(rmii_axis_0_M00_AXIS_TDATA),
        .m00_axis_tlast(rmii_axis_0_M00_AXIS_TLAST),
        .m00_axis_tready(rmii_axis_0_M00_AXIS_TREADY),
        .m00_axis_tvalid(rmii_axis_0_M00_AXIS_TVALID),
        .s00_axis_aclk(clk_wiz_0_clk_out1),
        .s00_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axis_tdata(axis_gpio_0_M00_AXIS_TDATA),
        .s00_axis_tlast(axis_gpio_0_M00_AXIS_TLAST),
        .s00_axis_tready(axis_gpio_0_M00_AXIS_TREADY),
        .s00_axis_tuser(axis_gpio_0_M00_AXIS_TUSER),
        .s00_axis_tvalid(axis_gpio_0_M00_AXIS_TVALID));
  eth_tempSens_0_1 tempSens_0
       (.CLK100MHZ(clk_in1_0_1),
        .SW(SW_0_1),
        .TMP_SCL(tempSens_0_TMP_SCL),
        .TMP_SDA(TMP_SDA),
        .reset(reset_0_1),
        .w_data(tempSens_0_w_data));
endmodule
