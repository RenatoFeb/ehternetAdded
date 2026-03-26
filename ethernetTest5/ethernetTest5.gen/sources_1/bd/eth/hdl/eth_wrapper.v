//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Feb 26 13:16:05 2026
//Host        : DESKTOP-4RVJPC8 running 64-bit major release  (build 9200)
//Command     : generate_target eth_wrapper.bd
//Design      : eth_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module eth_wrapper
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
  input CLK100MHZ;
  input ETH_CRSDV;
  output ETH_REFCLK;
  input [1:0]ETH_RXD;
  input ETH_RXERR;
  output [1:0]ETH_TXD;
  output ETH_TXEN;
  output [15:0]LED;
  input RESET_N;
  input [7:0]SW;
  output TMP_SCL;
  inout TMP_SDA;
  input reset;

  wire CLK100MHZ;
  wire ETH_CRSDV;
  wire ETH_REFCLK;
  wire [1:0]ETH_RXD;
  wire ETH_RXERR;
  wire [1:0]ETH_TXD;
  wire ETH_TXEN;
  wire [15:0]LED;
  wire RESET_N;
  wire [7:0]SW;
  wire TMP_SCL;
  wire TMP_SDA;
  wire reset;

  eth eth_i
       (.CLK100MHZ(CLK100MHZ),
        .ETH_CRSDV(ETH_CRSDV),
        .ETH_REFCLK(ETH_REFCLK),
        .ETH_RXD(ETH_RXD),
        .ETH_RXERR(ETH_RXERR),
        .ETH_TXD(ETH_TXD),
        .ETH_TXEN(ETH_TXEN),
        .LED(LED),
        .RESET_N(RESET_N),
        .SW(SW),
        .TMP_SCL(TMP_SCL),
        .TMP_SDA(TMP_SDA),
        .reset(reset));
endmodule
