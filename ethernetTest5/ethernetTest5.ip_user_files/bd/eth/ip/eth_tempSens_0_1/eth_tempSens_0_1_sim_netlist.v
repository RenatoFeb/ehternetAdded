// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Feb 26 13:00:02 2026
// Host        : DESKTOP-4RVJPC8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/rfebb/Desktop/Projects/ethernetTest5/ethernetTest5.gen/sources_1/bd/eth/ip/eth_tempSens_0_1/eth_tempSens_0_1_sim_netlist.v
// Design      : eth_tempSens_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "eth_tempSens_0_1,tempSens,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tempSens,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module eth_tempSens_0_1
   (CLK100MHZ,
    reset,
    TMP_SDA,
    TMP_SCL,
    SW,
    w_data);
  input CLK100MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  inout TMP_SDA;
  output TMP_SCL;
  input [7:0]SW;
  output [15:0]w_data;

  wire CLK100MHZ;
  wire [7:0]SW;
  wire TMP_SCL;
  wire TMP_SDA;
  wire reset;
  wire [7:0]\^w_data ;

  assign w_data[15:8] = SW;
  assign w_data[7:0] = \^w_data [7:0];
  eth_tempSens_0_1_tempSens inst
       (.CLK100MHZ(CLK100MHZ),
        .TMP_SCL(TMP_SCL),
        .TMP_SDA(TMP_SDA),
        .reset(reset),
        .w_data(\^w_data ));
endmodule

(* ORIG_REF_NAME = "clkgen_200kHz" *) 
module eth_tempSens_0_1_clkgen_200kHz
   (w_200kHz,
    CLK100MHZ);
  output w_200kHz;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire clk_reg;
  wire clk_reg_i_1_n_0;
  wire [7:0]counter;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire [7:0]p_1_in;
  wire w_200kHz;

  LUT6 #(
    .INIT(64'hFFFFFFF700000008)) 
    clk_reg_i_1
       (.I0(counter[3]),
        .I1(counter[6]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\counter[7]_i_3_n_0 ),
        .I5(w_200kHz),
        .O(clk_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    clk_reg_reg
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(clk_reg_i_1_n_0),
        .Q(w_200kHz),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[4]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[6]_i_1 
       (.I0(counter[6]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(\counter[7]_i_4_n_0 ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \counter[7]_i_1 
       (.I0(counter[3]),
        .I1(counter[6]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(\counter[7]_i_3_n_0 ),
        .O(clk_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[7]_i_2 
       (.I0(counter[7]),
        .I1(\counter[7]_i_4_n_0 ),
        .I2(counter[4]),
        .I3(counter[5]),
        .I4(counter[6]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[7]_i_3 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[7]),
        .I3(counter[0]),
        .O(\counter[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[7]_i_4 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(\counter[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(clk_reg));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(clk_reg));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(clk_reg));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(clk_reg));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(clk_reg));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(clk_reg));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(clk_reg));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(clk_reg));
endmodule

(* ORIG_REF_NAME = "i2c_master" *) 
module eth_tempSens_0_1_i2c_master
   (TMP_SCL,
    o_bit_reg_0,
    Q,
    w_data,
    \FSM_sequential_state_reg_reg[3]_0 ,
    o_bit__7,
    TMP_SDA,
    CLK,
    clk_reg_reg_0,
    reset,
    o_bit_reg_1);
  output TMP_SCL;
  output o_bit_reg_0;
  output [3:0]Q;
  output [7:0]w_data;
  output \FSM_sequential_state_reg_reg[3]_0 ;
  output o_bit__7;
  inout TMP_SDA;
  input CLK;
  input clk_reg_reg_0;
  input reset;
  input o_bit_reg_1;

  wire CLK;
  wire \FSM_sequential_state_reg[4]_i_21_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_22_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_23_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_30_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_31_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_32_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_33_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_34_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_35_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_36_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_37_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_38_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_39_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_40_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_41_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_42_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_43_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_44_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_45_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_46_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_47_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_48_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_49_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_50_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_51_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_52_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_53_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_54_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_55_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_56_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_57_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_58_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_59_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_60_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_61_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_62_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_63_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_64_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_65_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_66_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_67_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_68_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_69_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_70_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_71_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_72_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_73_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_74_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_9_n_0 ;
  wire \FSM_sequential_state_reg_reg[3]_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_10_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_11_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_12_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_13_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_14_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_15_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_16_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_17_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_18_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_19_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_20_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_24_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_25_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_26_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_27_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_28_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_29_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_5_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_6_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_7_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_8_n_0 ;
  wire [3:0]Q;
  wire TMP_SCL;
  wire TMP_SDA;
  wire clk_reg_reg_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[10]_i_2_n_0 ;
  wire \count[10]_i_3_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[11]_i_2_n_0 ;
  wire \count[11]_i_3_n_0 ;
  wire \count[11]_i_4_n_0 ;
  wire \count[11]_i_5_n_0 ;
  wire \count[11]_i_6_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire [11:1]data0;
  wire o_bit__7;
  wire o_bit_i_4_n_0;
  wire o_bit_i_5_n_0;
  wire o_bit_i_6_n_0;
  wire o_bit_i_7_n_0;
  wire o_bit_reg_0;
  wire o_bit_reg_1;
  wire [7:0]p_0_in;
  wire reset;
  wire [4:0]state_reg;
  wire [4:0]state_reg__0;
  wire \tLSB[7]_i_1_n_0 ;
  wire \tLSB[7]_i_2_n_0 ;
  wire \tMSB[0]_i_1_n_0 ;
  wire \tMSB[0]_i_2_n_0 ;
  wire \tMSB[1]_i_1_n_0 ;
  wire \tMSB[1]_i_2_n_0 ;
  wire \tMSB[1]_i_3_n_0 ;
  wire \tMSB[2]_i_1_n_0 ;
  wire \tMSB[2]_i_2_n_0 ;
  wire \tMSB[3]_i_1_n_0 ;
  wire \tMSB[3]_i_2_n_0 ;
  wire \tMSB[3]_i_3_n_0 ;
  wire \tMSB[3]_i_4_n_0 ;
  wire \tMSB[3]_i_5_n_0 ;
  wire \tMSB[4]_i_1_n_0 ;
  wire \tMSB[4]_i_2_n_0 ;
  wire \tMSB[5]_i_1_n_0 ;
  wire \tMSB[5]_i_2_n_0 ;
  wire \tMSB[5]_i_3_n_0 ;
  wire \tMSB[6]_i_1_n_0 ;
  wire \tMSB[6]_i_2_n_0 ;
  wire \tMSB[6]_i_3_n_0 ;
  wire \tMSB[6]_i_4_n_0 ;
  wire temp_data_reg;
  wire [7:0]w_data;
  wire [3:2]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h003D15FD)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .O(state_reg__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h889DDAEA)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .O(state_reg__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40D572A2)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .O(state_reg__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFC518C4E)) 
    \FSM_sequential_state_reg[3]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .O(state_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAEAAAA8C)) 
    \FSM_sequential_state_reg[4]_i_2 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(state_reg__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \FSM_sequential_state_reg[4]_i_21 
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[9] ),
        .I2(\count_reg_n_0_[10] ),
        .O(\FSM_sequential_state_reg[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_sequential_state_reg[4]_i_22 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_reg[4]_i_23 
       (.I0(\count_reg_n_0_[10] ),
        .I1(\count_reg_n_0_[11] ),
        .O(\FSM_sequential_state_reg[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_sequential_state_reg[4]_i_3 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_5_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_6_n_0 ),
        .I2(state_reg[3]),
        .I3(\FSM_sequential_state_reg_reg[4]_i_7_n_0 ),
        .I4(state_reg[2]),
        .I5(\FSM_sequential_state_reg_reg[4]_i_8_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state_reg[4]_i_30 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_58_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_sequential_state_reg[4]_i_31 
       (.I0(\FSM_sequential_state_reg[4]_i_59_n_0 ),
        .I1(o_bit_i_6_n_0),
        .I2(o_bit_i_7_n_0),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count_reg_n_0_[10] ),
        .I5(\count_reg_n_0_[11] ),
        .O(\FSM_sequential_state_reg[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_sequential_state_reg[4]_i_32 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_60_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state_reg[4]_i_33 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_61_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state_reg[4]_i_34 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_62_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state_reg[4]_i_35 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_22_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state_reg[4]_i_36 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_61_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state_reg[4]_i_37 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_58_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_sequential_state_reg[4]_i_38 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_63_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state_reg[4]_i_39 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_64_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_sequential_state_reg[4]_i_4 
       (.I0(\FSM_sequential_state_reg[4]_i_9_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_10_n_0 ),
        .I2(state_reg[3]),
        .I3(\FSM_sequential_state_reg_reg[4]_i_11_n_0 ),
        .I4(state_reg[2]),
        .I5(\FSM_sequential_state_reg_reg[4]_i_12_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state_reg[4]_i_40 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_65_n_0 ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state_reg[4]_i_41 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_66_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_sequential_state_reg[4]_i_42 
       (.I0(\FSM_sequential_state_reg[4]_i_67_n_0 ),
        .I1(o_bit_i_6_n_0),
        .I2(o_bit_i_7_n_0),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count_reg_n_0_[10] ),
        .I5(\count_reg_n_0_[11] ),
        .O(\FSM_sequential_state_reg[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_sequential_state_reg[4]_i_43 
       (.I0(\FSM_sequential_state_reg[4]_i_68_n_0 ),
        .I1(o_bit_i_6_n_0),
        .I2(o_bit_i_7_n_0),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count_reg_n_0_[10] ),
        .I5(\count_reg_n_0_[11] ),
        .O(\FSM_sequential_state_reg[4]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state_reg[4]_i_44 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_68_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state_reg[4]_i_45 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_59_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_sequential_state_reg[4]_i_46 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_69_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state_reg[4]_i_47 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_69_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_sequential_state_reg[4]_i_48 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_66_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_sequential_state_reg[4]_i_49 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_70_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state_reg[4]_i_50 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_60_n_0 ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \FSM_sequential_state_reg[4]_i_51 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_70_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_sequential_state_reg[4]_i_52 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_71_n_0 ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[8] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_sequential_state_reg[4]_i_53 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_62_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_sequential_state_reg[4]_i_54 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_71_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \FSM_sequential_state_reg[4]_i_55 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_72_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \FSM_sequential_state_reg[4]_i_56 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_73_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_sequential_state_reg[4]_i_57 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_74_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \FSM_sequential_state_reg[4]_i_58 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\FSM_sequential_state_reg[4]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \FSM_sequential_state_reg[4]_i_59 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \FSM_sequential_state_reg[4]_i_60 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_sequential_state_reg[4]_i_61 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \FSM_sequential_state_reg[4]_i_62 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\FSM_sequential_state_reg[4]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state_reg[4]_i_63 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \FSM_sequential_state_reg[4]_i_64 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \FSM_sequential_state_reg[4]_i_65 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_sequential_state_reg[4]_i_66 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_state_reg[4]_i_67 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_sequential_state_reg[4]_i_68 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\FSM_sequential_state_reg[4]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \FSM_sequential_state_reg[4]_i_69 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \FSM_sequential_state_reg[4]_i_70 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \FSM_sequential_state_reg[4]_i_71 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \FSM_sequential_state_reg[4]_i_72 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\FSM_sequential_state_reg[4]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \FSM_sequential_state_reg[4]_i_73 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_sequential_state_reg[4]_i_74 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\FSM_sequential_state_reg[4]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state_reg[4]_i_9 
       (.I0(\FSM_sequential_state_reg[4]_i_21_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\FSM_sequential_state_reg[4]_i_22_n_0 ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\count_reg_n_0_[7] ),
        .I5(\FSM_sequential_state_reg[4]_i_23_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[4]_i_1_n_0 ),
        .D(state_reg__0[0]),
        .PRE(reset),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state_reg__0[1]),
        .Q(state_reg[1]));
  (* FSM_ENCODED_STATES = "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state_reg__0[2]),
        .Q(state_reg[2]));
  (* FSM_ENCODED_STATES = "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state_reg__0[3]),
        .Q(state_reg[3]));
  (* FSM_ENCODED_STATES = "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[4] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state_reg__0[4]),
        .Q(state_reg[4]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_1 
       (.I0(\FSM_sequential_state_reg[4]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_1_n_0 ),
        .S(state_reg[4]));
  MUXF8 \FSM_sequential_state_reg_reg[4]_i_10 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_24_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_25_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_10_n_0 ),
        .S(state_reg[1]));
  MUXF8 \FSM_sequential_state_reg_reg[4]_i_11 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_26_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_27_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_11_n_0 ),
        .S(state_reg[1]));
  MUXF8 \FSM_sequential_state_reg_reg[4]_i_12 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_28_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_29_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_12_n_0 ),
        .S(state_reg[1]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_13 
       (.I0(\FSM_sequential_state_reg[4]_i_30_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_31_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_13_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_14 
       (.I0(\FSM_sequential_state_reg[4]_i_32_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_33_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_14_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_15 
       (.I0(\FSM_sequential_state_reg[4]_i_34_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_35_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_15_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_16 
       (.I0(\FSM_sequential_state_reg[4]_i_36_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_37_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_16_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_17 
       (.I0(\FSM_sequential_state_reg[4]_i_38_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_39_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_17_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_18 
       (.I0(\FSM_sequential_state_reg[4]_i_40_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_41_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_18_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_19 
       (.I0(\FSM_sequential_state_reg[4]_i_42_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_43_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_19_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_20 
       (.I0(\FSM_sequential_state_reg[4]_i_44_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_45_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_20_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_24 
       (.I0(\FSM_sequential_state_reg[4]_i_46_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_47_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_24_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_25 
       (.I0(\FSM_sequential_state_reg[4]_i_48_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_49_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_25_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_26 
       (.I0(\FSM_sequential_state_reg[4]_i_50_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_51_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_26_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_27 
       (.I0(\FSM_sequential_state_reg[4]_i_52_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_53_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_27_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_28 
       (.I0(\FSM_sequential_state_reg[4]_i_54_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_55_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_28_n_0 ),
        .S(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_29 
       (.I0(\FSM_sequential_state_reg[4]_i_56_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_57_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_29_n_0 ),
        .S(state_reg[0]));
  MUXF8 \FSM_sequential_state_reg_reg[4]_i_5 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_13_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_14_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_5_n_0 ),
        .S(state_reg[1]));
  MUXF8 \FSM_sequential_state_reg_reg[4]_i_6 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_15_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_16_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_6_n_0 ),
        .S(state_reg[1]));
  MUXF8 \FSM_sequential_state_reg_reg[4]_i_7 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_17_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_18_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_7_n_0 ),
        .S(state_reg[1]));
  MUXF8 \FSM_sequential_state_reg_reg[4]_i_8 
       (.I0(\FSM_sequential_state_reg_reg[4]_i_19_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[4]_i_20_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_8_n_0 ),
        .S(state_reg[1]));
  LUT6 #(
    .INIT(64'h06A1F40300000000)) 
    TMP_SDA_INST_0
       (.I0(state_reg[0]),
        .I1(state_reg[4]),
        .I2(state_reg[1]),
        .I3(state_reg[3]),
        .I4(state_reg[2]),
        .I5(o_bit_reg_0),
        .O(TMP_SDA));
  FDCE #(
    .INIT(1'b1)) 
    clk_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_reg_reg_0),
        .Q(TMP_SCL));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({NLW_count0_carry__1_CO_UNCONNECTED[3:2],count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__1_O_UNCONNECTED[3],data0[11:9]}),
        .S({1'b0,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \count[0]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(\count[11]_i_4_n_0 ),
        .I5(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFF0000)) 
    \count[10]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[10]),
        .I5(\count[10]_i_2_n_0 ),
        .O(\count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \count[10]_i_2 
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[10] ),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count[10]_i_3_n_0 ),
        .I5(\count[11]_i_6_n_0 ),
        .O(\count[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[10]_i_3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \count[11]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[11]),
        .I5(\count[11]_i_4_n_0 ),
        .O(\count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count[11]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .O(\count[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \count[11]_i_3 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(state_reg[2]),
        .O(\count[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \count[11]_i_4 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[8] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[11] ),
        .I4(\count[11]_i_5_n_0 ),
        .I5(\count[11]_i_6_n_0 ),
        .O(\count[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \count[11]_i_5 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[10] ),
        .O(\count[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[11]_i_6 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[5] ),
        .O(\count[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \count[1]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[1]),
        .I5(\count[11]_i_4_n_0 ),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \count[2]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[2]),
        .I5(\count[11]_i_4_n_0 ),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \count[3]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[3]),
        .I5(\count[11]_i_4_n_0 ),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFF0000)) 
    \count[4]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[4]),
        .I5(\count[10]_i_2_n_0 ),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \count[5]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[5]),
        .I5(\count[11]_i_4_n_0 ),
        .O(\count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFF0000)) 
    \count[6]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[6]),
        .I5(\count[10]_i_2_n_0 ),
        .O(\count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFF0000)) 
    \count[7]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[7]),
        .I5(\count[10]_i_2_n_0 ),
        .O(\count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFF0000)) 
    \count[8]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[8]),
        .I5(\count[10]_i_2_n_0 ),
        .O(\count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFF0000)) 
    \count[9]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(\count[11]_i_2_n_0 ),
        .I3(\count[11]_i_3_n_0 ),
        .I4(data0[9]),
        .I5(\count[10]_i_2_n_0 ),
        .O(\count[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[10]_i_1_n_0 ),
        .PRE(reset),
        .Q(\count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\count[11]_i_1_n_0 ),
        .Q(\count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[4]_i_1_n_0 ),
        .PRE(reset),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\count[5]_i_1_n_0 ),
        .Q(\count_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[6]_i_1_n_0 ),
        .PRE(reset),
        .Q(\count_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[7]_i_1_n_0 ),
        .PRE(reset),
        .Q(\count_reg_n_0_[7] ));
  FDPE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[8]_i_1_n_0 ),
        .PRE(reset),
        .Q(\count_reg_n_0_[8] ));
  FDPE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[9]_i_1_n_0 ),
        .PRE(reset),
        .Q(\count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(Q[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h23CC)) 
    \counter[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h68F0)) 
    \counter[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\counter[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter[3]_i_1_n_0 ),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h747FCCCC)) 
    o_bit_i_2
       (.I0(state_reg[3]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[4]),
        .O(\FSM_sequential_state_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h1860B1E01860B0E0)) 
    o_bit_i_3
       (.I0(state_reg[1]),
        .I1(state_reg[4]),
        .I2(state_reg[3]),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .I5(o_bit_i_4_n_0),
        .O(o_bit__7));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    o_bit_i_4
       (.I0(o_bit_i_5_n_0),
        .I1(o_bit_i_6_n_0),
        .I2(o_bit_i_7_n_0),
        .I3(\count_reg_n_0_[9] ),
        .I4(\count_reg_n_0_[10] ),
        .I5(\count_reg_n_0_[11] ),
        .O(o_bit_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    o_bit_i_5
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[5] ),
        .O(o_bit_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    o_bit_i_6
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[6] ),
        .O(o_bit_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    o_bit_i_7
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[8] ),
        .O(o_bit_i_7_n_0));
  FDRE #(
    .INIT(1'b1)) 
    o_bit_reg
       (.C(CLK),
        .CE(1'b1),
        .D(o_bit_reg_1),
        .Q(o_bit_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \tLSB[7]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[2]),
        .I2(TMP_SDA),
        .I3(\tLSB[7]_i_2_n_0 ),
        .I4(p_0_in[0]),
        .O(\tLSB[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \tLSB[7]_i_2 
       (.I0(reset),
        .I1(state_reg[4]),
        .I2(state_reg[1]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(\tLSB[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tLSB_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tLSB[7]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \tMSB[0]_i_1 
       (.I0(state_reg[1]),
        .I1(TMP_SDA),
        .I2(state_reg[2]),
        .I3(\tMSB[0]_i_2_n_0 ),
        .I4(p_0_in[1]),
        .O(\tMSB[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tMSB[0]_i_2 
       (.I0(reset),
        .I1(state_reg[4]),
        .I2(state_reg[3]),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(state_reg[2]),
        .O(\tMSB[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \tMSB[1]_i_1 
       (.I0(state_reg[3]),
        .I1(\tMSB[5]_i_2_n_0 ),
        .I2(\tMSB[1]_i_2_n_0 ),
        .I3(\tMSB[6]_i_3_n_0 ),
        .I4(\tMSB[1]_i_3_n_0 ),
        .I5(p_0_in[2]),
        .O(\tMSB[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tMSB[1]_i_2 
       (.I0(state_reg[2]),
        .I1(state_reg[4]),
        .O(\tMSB[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tMSB[1]_i_3 
       (.I0(reset),
        .I1(state_reg[4]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
        .O(\tMSB[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \tMSB[2]_i_1 
       (.I0(\tMSB[2]_i_2_n_0 ),
        .I1(\tMSB[3]_i_3_n_0 ),
        .I2(\tMSB[3]_i_4_n_0 ),
        .I3(state_reg[3]),
        .I4(state_reg[2]),
        .I5(p_0_in[3]),
        .O(\tMSB[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \tMSB[2]_i_2 
       (.I0(state_reg[3]),
        .I1(\tMSB[6]_i_2_n_0 ),
        .I2(state_reg[4]),
        .I3(state_reg[2]),
        .O(\tMSB[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8FF00000800)) 
    \tMSB[3]_i_1 
       (.I0(\tMSB[3]_i_2_n_0 ),
        .I1(\tMSB[6]_i_3_n_0 ),
        .I2(\tMSB[3]_i_3_n_0 ),
        .I3(\tMSB[3]_i_4_n_0 ),
        .I4(\tMSB[3]_i_5_n_0 ),
        .I5(p_0_in[4]),
        .O(\tMSB[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tMSB[3]_i_2 
       (.I0(state_reg[0]),
        .I1(TMP_SDA),
        .O(\tMSB[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tMSB[3]_i_3 
       (.I0(state_reg[4]),
        .I1(reset),
        .O(\tMSB[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tMSB[3]_i_4 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(\tMSB[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tMSB[3]_i_5 
       (.I0(state_reg[3]),
        .I1(state_reg[2]),
        .O(\tMSB[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \tMSB[4]_i_1 
       (.I0(state_reg[0]),
        .I1(TMP_SDA),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(\tMSB[4]_i_2_n_0 ),
        .I5(p_0_in[5]),
        .O(\tMSB[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \tMSB[4]_i_2 
       (.I0(reset),
        .I1(state_reg[4]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[2]),
        .O(\tMSB[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \tMSB[5]_i_1 
       (.I0(state_reg[4]),
        .I1(\tMSB[5]_i_2_n_0 ),
        .I2(state_reg[3]),
        .I3(\tMSB[6]_i_3_n_0 ),
        .I4(\tMSB[5]_i_3_n_0 ),
        .I5(p_0_in[6]),
        .O(\tMSB[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \tMSB[5]_i_2 
       (.I0(state_reg[1]),
        .I1(TMP_SDA),
        .O(\tMSB[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tMSB[5]_i_3 
       (.I0(reset),
        .I1(state_reg[4]),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(state_reg[3]),
        .I5(state_reg[1]),
        .O(\tMSB[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \tMSB[6]_i_1 
       (.I0(state_reg[4]),
        .I1(\tMSB[6]_i_2_n_0 ),
        .I2(state_reg[3]),
        .I3(\tMSB[6]_i_3_n_0 ),
        .I4(\tMSB[6]_i_4_n_0 ),
        .I5(p_0_in[7]),
        .O(\tMSB[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tMSB[6]_i_2 
       (.I0(state_reg[1]),
        .I1(TMP_SDA),
        .O(\tMSB[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tMSB[6]_i_3 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .O(\tMSB[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \tMSB[6]_i_4 
       (.I0(reset),
        .I1(state_reg[4]),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[0]),
        .O(\tMSB[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tMSB_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tMSB[0]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tMSB_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tMSB[1]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tMSB_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tMSB[2]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tMSB_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tMSB[3]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tMSB_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tMSB[4]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tMSB_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tMSB[5]_i_1_n_0 ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tMSB_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tMSB[6]_i_1_n_0 ),
        .Q(p_0_in[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \temp_data_reg[7]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[3]),
        .I4(state_reg[4]),
        .O(temp_data_reg));
  FDRE \temp_data_reg_reg[0] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[0]),
        .Q(w_data[0]),
        .R(1'b0));
  FDRE \temp_data_reg_reg[1] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[1]),
        .Q(w_data[1]),
        .R(1'b0));
  FDRE \temp_data_reg_reg[2] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[2]),
        .Q(w_data[2]),
        .R(1'b0));
  FDRE \temp_data_reg_reg[3] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[3]),
        .Q(w_data[3]),
        .R(1'b0));
  FDRE \temp_data_reg_reg[4] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[4]),
        .Q(w_data[4]),
        .R(1'b0));
  FDRE \temp_data_reg_reg[5] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[5]),
        .Q(w_data[5]),
        .R(1'b0));
  FDRE \temp_data_reg_reg[6] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[6]),
        .Q(w_data[6]),
        .R(1'b0));
  FDRE \temp_data_reg_reg[7] 
       (.C(CLK),
        .CE(temp_data_reg),
        .D(p_0_in[7]),
        .Q(w_data[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tempSens" *) 
module eth_tempSens_0_1_tempSens
   (w_data,
    TMP_SCL,
    TMP_SDA,
    reset,
    CLK100MHZ);
  output [7:0]w_data;
  output TMP_SCL;
  inout TMP_SDA;
  input reset;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire TMP_SCL;
  wire TMP_SDA;
  wire clk_reg_i_1__0_n_0;
  wire [3:0]counter;
  wire master_n_1;
  wire master_n_14;
  wire o_bit__7;
  wire o_bit_i_1_n_0;
  wire reset;
  wire w_200kHz;
  wire [7:0]w_data;

  eth_tempSens_0_1_clkgen_200kHz cgen
       (.CLK100MHZ(CLK100MHZ),
        .w_200kHz(w_200kHz));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    clk_reg_i_1__0
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[3]),
        .I3(counter[0]),
        .I4(TMP_SCL),
        .O(clk_reg_i_1__0_n_0));
  eth_tempSens_0_1_i2c_master master
       (.CLK(w_200kHz),
        .\FSM_sequential_state_reg_reg[3]_0 (master_n_14),
        .Q(counter),
        .TMP_SCL(TMP_SCL),
        .TMP_SDA(TMP_SDA),
        .clk_reg_reg_0(clk_reg_i_1__0_n_0),
        .o_bit__7(o_bit__7),
        .o_bit_reg_0(master_n_1),
        .o_bit_reg_1(o_bit_i_1_n_0),
        .reset(reset),
        .w_data(w_data));
  LUT4 #(
    .INIT(16'hFB08)) 
    o_bit_i_1
       (.I0(master_n_14),
        .I1(o_bit__7),
        .I2(reset),
        .I3(master_n_1),
        .O(o_bit_i_1_n_0));
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
