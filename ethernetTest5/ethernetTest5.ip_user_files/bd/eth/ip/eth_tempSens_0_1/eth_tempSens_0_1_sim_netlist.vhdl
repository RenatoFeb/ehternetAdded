-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Feb 26 13:00:02 2026
-- Host        : DESKTOP-4RVJPC8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/rfebb/Desktop/Projects/ethernetTest5/ethernetTest5.gen/sources_1/bd/eth/ip/eth_tempSens_0_1/eth_tempSens_0_1_sim_netlist.vhdl
-- Design      : eth_tempSens_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity eth_tempSens_0_1_clkgen_200kHz is
  port (
    w_200kHz : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of eth_tempSens_0_1_clkgen_200kHz : entity is "clkgen_200kHz";
end eth_tempSens_0_1_clkgen_200kHz;

architecture STRUCTURE of eth_tempSens_0_1_clkgen_200kHz is
  signal clk_reg : STD_LOGIC;
  signal clk_reg_i_1_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^w_200khz\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[7]_i_4\ : label is "soft_lutpair3";
begin
  w_200kHz <= \^w_200khz\;
clk_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000008"
    )
        port map (
      I0 => counter(3),
      I1 => counter(6),
      I2 => counter(2),
      I3 => counter(1),
      I4 => \counter[7]_i_3_n_0\,
      I5 => \^w_200khz\,
      O => clk_reg_i_1_n_0
    );
clk_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => clk_reg_i_1_n_0,
      Q => \^w_200khz\,
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => p_1_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => p_1_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      O => p_1_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => counter(3),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      O => p_1_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => counter(4),
      I1 => counter(2),
      I2 => counter(1),
      I3 => counter(0),
      I4 => counter(3),
      O => p_1_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => counter(5),
      I1 => counter(3),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(2),
      I5 => counter(4),
      O => p_1_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => counter(6),
      I1 => counter(5),
      I2 => counter(4),
      I3 => \counter[7]_i_4_n_0\,
      O => p_1_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => counter(3),
      I1 => counter(6),
      I2 => counter(2),
      I3 => counter(1),
      I4 => \counter[7]_i_3_n_0\,
      O => clk_reg
    );
\counter[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => counter(7),
      I1 => \counter[7]_i_4_n_0\,
      I2 => counter(4),
      I3 => counter(5),
      I4 => counter(6),
      O => p_1_in(7)
    );
\counter[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => counter(7),
      I3 => counter(0),
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counter(3),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      O => \counter[7]_i_4_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(0),
      Q => counter(0),
      R => clk_reg
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(1),
      Q => counter(1),
      R => clk_reg
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(2),
      Q => counter(2),
      R => clk_reg
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(3),
      Q => counter(3),
      R => clk_reg
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(4),
      Q => counter(4),
      R => clk_reg
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(5),
      Q => counter(5),
      R => clk_reg
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(6),
      Q => counter(6),
      R => clk_reg
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ,
      CE => '1',
      D => p_1_in(7),
      Q => counter(7),
      R => clk_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity eth_tempSens_0_1_i2c_master is
  port (
    TMP_SCL : out STD_LOGIC;
    o_bit_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    w_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_state_reg_reg[3]_0\ : out STD_LOGIC;
    \o_bit__7\ : out STD_LOGIC;
    TMP_SDA : inout STD_LOGIC;
    CLK : in STD_LOGIC;
    clk_reg_reg_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    o_bit_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of eth_tempSens_0_1_i2c_master : entity is "i2c_master";
end eth_tempSens_0_1_i2c_master;

architecture STRUCTURE of eth_tempSens_0_1_i2c_master is
  signal \FSM_sequential_state_reg[4]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_30_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_31_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_32_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_33_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_34_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_35_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_36_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_37_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_38_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_39_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_40_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_41_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_42_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_43_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_44_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_45_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_46_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_47_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_48_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_49_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_50_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_51_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_52_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_53_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_54_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_55_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_56_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_57_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_58_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_59_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_60_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_61_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_62_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_63_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_64_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_65_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_66_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_67_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_68_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_69_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_70_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_71_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_72_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_73_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_74_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_26_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_27_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_28_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_29_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_2_n_0\ : STD_LOGIC;
  signal \count[10]_i_3_n_0\ : STD_LOGIC;
  signal \count[11]_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_i_2_n_0\ : STD_LOGIC;
  signal \count[11]_i_3_n_0\ : STD_LOGIC;
  signal \count[11]_i_4_n_0\ : STD_LOGIC;
  signal \count[11]_i_5_n_0\ : STD_LOGIC;
  signal \count[11]_i_6_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal o_bit_i_4_n_0 : STD_LOGIC;
  signal o_bit_i_5_n_0 : STD_LOGIC;
  signal o_bit_i_6_n_0 : STD_LOGIC;
  signal o_bit_i_7_n_0 : STD_LOGIC;
  signal \^o_bit_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \tLSB[7]_i_1_n_0\ : STD_LOGIC;
  signal \tLSB[7]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[0]_i_1_n_0\ : STD_LOGIC;
  signal \tMSB[0]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[1]_i_1_n_0\ : STD_LOGIC;
  signal \tMSB[1]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[1]_i_3_n_0\ : STD_LOGIC;
  signal \tMSB[2]_i_1_n_0\ : STD_LOGIC;
  signal \tMSB[2]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[3]_i_1_n_0\ : STD_LOGIC;
  signal \tMSB[3]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[3]_i_3_n_0\ : STD_LOGIC;
  signal \tMSB[3]_i_4_n_0\ : STD_LOGIC;
  signal \tMSB[3]_i_5_n_0\ : STD_LOGIC;
  signal \tMSB[4]_i_1_n_0\ : STD_LOGIC;
  signal \tMSB[4]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[5]_i_1_n_0\ : STD_LOGIC;
  signal \tMSB[5]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[5]_i_3_n_0\ : STD_LOGIC;
  signal \tMSB[6]_i_1_n_0\ : STD_LOGIC;
  signal \tMSB[6]_i_2_n_0\ : STD_LOGIC;
  signal \tMSB[6]_i_3_n_0\ : STD_LOGIC;
  signal \tMSB[6]_i_4_n_0\ : STD_LOGIC;
  signal temp_data_reg : STD_LOGIC;
  signal \NLW_count0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[4]_i_21\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[0]\ : label is "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[1]\ : label is "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[2]\ : label is "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[3]\ : label is "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[4]\ : label is "REC_MSB4:00010,NACK:00100,REC_MSB5:00101,REC_MSB6:00110,SEND_ACK:00111,REC_MSB0:01001,SEND_ADDR5:01010,REC_MSB1:01100,SEND_ADDR6:01101,REC_MSB2:01111,REC_LSB0:01110,REC_LSB1:10000,START:00001,REC_LSB4:10001,REC_MSB7:10100,REC_LSB5:10011,POWER_UP:00000,REC_ACK:10110,REC_LSB2:10101,REC_LSB3:10010,SEND_ADDR1:10111,REC_LSB6:11001,SEND_ADDR2:11010,REC_LSB7:01000,SEND_RW:11011,SEND_ADDR0:11000,SEND_ADDR3:11100,REC_MSB3:00011,SEND_ADDR4:01011";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \count[11]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[11]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[11]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[11]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of o_bit_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of o_bit_i_6 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tMSB[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tMSB[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tMSB[3]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tMSB[6]_i_3\ : label is "soft_lutpair7";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  o_bit_reg_0 <= \^o_bit_reg_0\;
\FSM_sequential_state_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003D15FD"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(1),
      I2 => state_reg(3),
      I3 => state_reg(2),
      I4 => state_reg(0),
      O => \state_reg__0\(0)
    );
\FSM_sequential_state_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"889DDAEA"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => state_reg(0),
      I3 => state_reg(2),
      I4 => state_reg(1),
      O => \state_reg__0\(1)
    );
\FSM_sequential_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40D572A2"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => state_reg(1),
      I3 => state_reg(2),
      I4 => state_reg(0),
      O => \state_reg__0\(2)
    );
\FSM_sequential_state_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC518C4E"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => state_reg(1),
      I3 => state_reg(2),
      I4 => state_reg(0),
      O => \state_reg__0\(3)
    );
\FSM_sequential_state_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAA8C"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => state_reg(2),
      I3 => state_reg(1),
      I4 => state_reg(0),
      O => \state_reg__0\(4)
    );
\FSM_sequential_state_reg[4]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[9]\,
      I2 => \count_reg_n_0_[10]\,
      O => \FSM_sequential_state_reg[4]_i_21_n_0\
    );
\FSM_sequential_state_reg[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_22_n_0\
    );
\FSM_sequential_state_reg[4]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \count_reg_n_0_[10]\,
      I1 => \count_reg_n_0_[11]\,
      O => \FSM_sequential_state_reg[4]_i_23_n_0\
    );
\FSM_sequential_state_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_5_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_6_n_0\,
      I2 => state_reg(3),
      I3 => \FSM_sequential_state_reg_reg[4]_i_7_n_0\,
      I4 => state_reg(2),
      I5 => \FSM_sequential_state_reg_reg[4]_i_8_n_0\,
      O => \FSM_sequential_state_reg[4]_i_3_n_0\
    );
\FSM_sequential_state_reg[4]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_58_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_30_n_0\
    );
\FSM_sequential_state_reg[4]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_59_n_0\,
      I1 => o_bit_i_6_n_0,
      I2 => o_bit_i_7_n_0,
      I3 => \count_reg_n_0_[9]\,
      I4 => \count_reg_n_0_[10]\,
      I5 => \count_reg_n_0_[11]\,
      O => \FSM_sequential_state_reg[4]_i_31_n_0\
    );
\FSM_sequential_state_reg[4]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_60_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_32_n_0\
    );
\FSM_sequential_state_reg[4]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_61_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_33_n_0\
    );
\FSM_sequential_state_reg[4]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_62_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_34_n_0\
    );
\FSM_sequential_state_reg[4]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_22_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_35_n_0\
    );
\FSM_sequential_state_reg[4]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_61_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_36_n_0\
    );
\FSM_sequential_state_reg[4]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_58_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_37_n_0\
    );
\FSM_sequential_state_reg[4]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_63_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_38_n_0\
    );
\FSM_sequential_state_reg[4]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_64_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_39_n_0\
    );
\FSM_sequential_state_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_9_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_10_n_0\,
      I2 => state_reg(3),
      I3 => \FSM_sequential_state_reg_reg[4]_i_11_n_0\,
      I4 => state_reg(2),
      I5 => \FSM_sequential_state_reg_reg[4]_i_12_n_0\,
      O => \FSM_sequential_state_reg[4]_i_4_n_0\
    );
\FSM_sequential_state_reg[4]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_65_n_0\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_40_n_0\
    );
\FSM_sequential_state_reg[4]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_66_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_41_n_0\
    );
\FSM_sequential_state_reg[4]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_67_n_0\,
      I1 => o_bit_i_6_n_0,
      I2 => o_bit_i_7_n_0,
      I3 => \count_reg_n_0_[9]\,
      I4 => \count_reg_n_0_[10]\,
      I5 => \count_reg_n_0_[11]\,
      O => \FSM_sequential_state_reg[4]_i_42_n_0\
    );
\FSM_sequential_state_reg[4]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_68_n_0\,
      I1 => o_bit_i_6_n_0,
      I2 => o_bit_i_7_n_0,
      I3 => \count_reg_n_0_[9]\,
      I4 => \count_reg_n_0_[10]\,
      I5 => \count_reg_n_0_[11]\,
      O => \FSM_sequential_state_reg[4]_i_43_n_0\
    );
\FSM_sequential_state_reg[4]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_68_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_44_n_0\
    );
\FSM_sequential_state_reg[4]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_59_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_45_n_0\
    );
\FSM_sequential_state_reg[4]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_69_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_46_n_0\
    );
\FSM_sequential_state_reg[4]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_69_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_47_n_0\
    );
\FSM_sequential_state_reg[4]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_66_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_48_n_0\
    );
\FSM_sequential_state_reg[4]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_70_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_49_n_0\
    );
\FSM_sequential_state_reg[4]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_60_n_0\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_50_n_0\
    );
\FSM_sequential_state_reg[4]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_70_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_51_n_0\
    );
\FSM_sequential_state_reg[4]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_71_n_0\,
      I3 => \count_reg_n_0_[7]\,
      I4 => \count_reg_n_0_[8]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_52_n_0\
    );
\FSM_sequential_state_reg[4]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_62_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_53_n_0\
    );
\FSM_sequential_state_reg[4]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_71_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_54_n_0\
    );
\FSM_sequential_state_reg[4]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_72_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_55_n_0\
    );
\FSM_sequential_state_reg[4]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_73_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_56_n_0\
    );
\FSM_sequential_state_reg[4]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_74_n_0\,
      I2 => \count_reg_n_0_[6]\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_57_n_0\
    );
\FSM_sequential_state_reg[4]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => \FSM_sequential_state_reg[4]_i_58_n_0\
    );
\FSM_sequential_state_reg[4]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_59_n_0\
    );
\FSM_sequential_state_reg[4]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_60_n_0\
    );
\FSM_sequential_state_reg[4]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_61_n_0\
    );
\FSM_sequential_state_reg[4]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => \FSM_sequential_state_reg[4]_i_62_n_0\
    );
\FSM_sequential_state_reg[4]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_63_n_0\
    );
\FSM_sequential_state_reg[4]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_64_n_0\
    );
\FSM_sequential_state_reg[4]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_65_n_0\
    );
\FSM_sequential_state_reg[4]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_66_n_0\
    );
\FSM_sequential_state_reg[4]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_67_n_0\
    );
\FSM_sequential_state_reg[4]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => \FSM_sequential_state_reg[4]_i_68_n_0\
    );
\FSM_sequential_state_reg[4]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_69_n_0\
    );
\FSM_sequential_state_reg[4]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_70_n_0\
    );
\FSM_sequential_state_reg[4]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_71_n_0\
    );
\FSM_sequential_state_reg[4]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => \FSM_sequential_state_reg[4]_i_72_n_0\
    );
\FSM_sequential_state_reg[4]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_73_n_0\
    );
\FSM_sequential_state_reg[4]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[5]\,
      I5 => \count_reg_n_0_[4]\,
      O => \FSM_sequential_state_reg[4]_i_74_n_0\
    );
\FSM_sequential_state_reg[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \FSM_sequential_state_reg[4]_i_21_n_0\,
      I1 => \count_reg_n_0_[6]\,
      I2 => \FSM_sequential_state_reg[4]_i_22_n_0\,
      I3 => \count_reg_n_0_[8]\,
      I4 => \count_reg_n_0_[7]\,
      I5 => \FSM_sequential_state_reg[4]_i_23_n_0\,
      O => \FSM_sequential_state_reg[4]_i_9_n_0\
    );
\FSM_sequential_state_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_state_reg_reg[4]_i_1_n_0\,
      D => \state_reg__0\(0),
      PRE => reset,
      Q => state_reg(0)
    );
\FSM_sequential_state_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_state_reg_reg[4]_i_1_n_0\,
      CLR => reset,
      D => \state_reg__0\(1),
      Q => state_reg(1)
    );
\FSM_sequential_state_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_state_reg_reg[4]_i_1_n_0\,
      CLR => reset,
      D => \state_reg__0\(2),
      Q => state_reg(2)
    );
\FSM_sequential_state_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_state_reg_reg[4]_i_1_n_0\,
      CLR => reset,
      D => \state_reg__0\(3),
      Q => state_reg(3)
    );
\FSM_sequential_state_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_sequential_state_reg_reg[4]_i_1_n_0\,
      CLR => reset,
      D => \state_reg__0\(4),
      Q => state_reg(4)
    );
\FSM_sequential_state_reg_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_3_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_4_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_1_n_0\,
      S => state_reg(4)
    );
\FSM_sequential_state_reg_reg[4]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_24_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_25_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_10_n_0\,
      S => state_reg(1)
    );
\FSM_sequential_state_reg_reg[4]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_26_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_27_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_11_n_0\,
      S => state_reg(1)
    );
\FSM_sequential_state_reg_reg[4]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_28_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_29_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_12_n_0\,
      S => state_reg(1)
    );
\FSM_sequential_state_reg_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_30_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_31_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_13_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_32_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_33_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_14_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_34_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_35_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_15_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_36_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_37_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_16_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_38_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_39_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_17_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_40_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_41_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_18_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_42_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_43_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_19_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_44_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_45_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_20_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_46_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_47_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_24_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_48_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_49_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_25_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_50_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_51_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_26_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_52_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_53_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_27_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_54_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_55_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_28_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_reg[4]_i_56_n_0\,
      I1 => \FSM_sequential_state_reg[4]_i_57_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_29_n_0\,
      S => state_reg(0)
    );
\FSM_sequential_state_reg_reg[4]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_13_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_14_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_5_n_0\,
      S => state_reg(1)
    );
\FSM_sequential_state_reg_reg[4]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_15_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_16_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_6_n_0\,
      S => state_reg(1)
    );
\FSM_sequential_state_reg_reg[4]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_17_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_18_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_7_n_0\,
      S => state_reg(1)
    );
\FSM_sequential_state_reg_reg[4]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \FSM_sequential_state_reg_reg[4]_i_19_n_0\,
      I1 => \FSM_sequential_state_reg_reg[4]_i_20_n_0\,
      O => \FSM_sequential_state_reg_reg[4]_i_8_n_0\,
      S => state_reg(1)
    );
TMP_SDA_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06A1F40300000000"
    )
        port map (
      I0 => state_reg(0),
      I1 => state_reg(4),
      I2 => state_reg(1),
      I3 => state_reg(3),
      I4 => state_reg(2),
      I5 => \^o_bit_reg_0\,
      O => TMP_SDA
    );
clk_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => clk_reg_reg_0,
      Q => TMP_SCL
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => \count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \count_reg_n_0_[4]\,
      S(2) => \count_reg_n_0_[3]\,
      S(1) => \count_reg_n_0_[2]\,
      S(0) => \count_reg_n_0_[1]\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \count_reg_n_0_[8]\,
      S(2) => \count_reg_n_0_[7]\,
      S(1) => \count_reg_n_0_[6]\,
      S(0) => \count_reg_n_0_[5]\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2) => \count_reg_n_0_[11]\,
      S(1) => \count_reg_n_0_[10]\,
      S(0) => \count_reg_n_0_[9]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => \count[11]_i_4_n_0\,
      I5 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(10),
      I5 => \count[10]_i_2_n_0\,
      O => \count[10]_i_1_n_0\
    );
\count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \count_reg_n_0_[11]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \count_reg_n_0_[10]\,
      I3 => \count_reg_n_0_[9]\,
      I4 => \count[10]_i_3_n_0\,
      I5 => \count[11]_i_6_n_0\,
      O => \count[10]_i_2_n_0\
    );
\count[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      O => \count[10]_i_3_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(11),
      I5 => \count[11]_i_4_n_0\,
      O => \count[11]_i_1_n_0\
    );
\count[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(2),
      O => \count[11]_i_2_n_0\
    );
\count[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      I2 => state_reg(2),
      O => \count[11]_i_3_n_0\
    );
\count[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[8]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[11]\,
      I4 => \count[11]_i_5_n_0\,
      I5 => \count[11]_i_6_n_0\,
      O => \count[11]_i_4_n_0\
    );
\count[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[9]\,
      I3 => \count_reg_n_0_[10]\,
      O => \count[11]_i_5_n_0\
    );
\count[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \count_reg_n_0_[6]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[4]\,
      I3 => \count_reg_n_0_[5]\,
      O => \count[11]_i_6_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(1),
      I5 => \count[11]_i_4_n_0\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(2),
      I5 => \count[11]_i_4_n_0\,
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(3),
      I5 => \count[11]_i_4_n_0\,
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(4),
      I5 => \count[10]_i_2_n_0\,
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(5),
      I5 => \count[11]_i_4_n_0\,
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(6),
      I5 => \count[10]_i_2_n_0\,
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(7),
      I5 => \count[10]_i_2_n_0\,
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(8),
      I5 => \count[10]_i_2_n_0\,
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFF0000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(3),
      I2 => \count[11]_i_2_n_0\,
      I3 => \count[11]_i_3_n_0\,
      I4 => data0(9),
      I5 => \count[10]_i_2_n_0\,
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\
    );
\count_reg[10]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count[10]_i_1_n_0\,
      PRE => reset,
      Q => \count_reg_n_0_[10]\
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \count[11]_i_1_n_0\,
      Q => \count_reg_n_0_[11]\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \count[3]_i_1_n_0\,
      Q => \count_reg_n_0_[3]\
    );
\count_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count[4]_i_1_n_0\,
      PRE => reset,
      Q => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \count[5]_i_1_n_0\,
      Q => \count_reg_n_0_[5]\
    );
\count_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count[6]_i_1_n_0\,
      PRE => reset,
      Q => \count_reg_n_0_[6]\
    );
\count_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count[7]_i_1_n_0\,
      PRE => reset,
      Q => \count_reg_n_0_[7]\
    );
\count_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count[8]_i_1_n_0\,
      PRE => reset,
      Q => \count_reg_n_0_[8]\
    );
\count_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \count[9]_i_1_n_0\,
      PRE => reset,
      Q => \count_reg_n_0_[9]\
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \counter[0]_i_1__0_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"23CC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68F0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \counter[3]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \counter[0]_i_1__0_n_0\,
      Q => \^q\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \counter[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \counter[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => reset,
      D => \counter[3]_i_1_n_0\,
      Q => \^q\(3)
    );
o_bit_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"747FCCCC"
    )
        port map (
      I0 => state_reg(3),
      I1 => state_reg(2),
      I2 => state_reg(0),
      I3 => state_reg(1),
      I4 => state_reg(4),
      O => \FSM_sequential_state_reg_reg[3]_0\
    );
o_bit_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1860B1E01860B0E0"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(4),
      I2 => state_reg(3),
      I3 => state_reg(0),
      I4 => state_reg(2),
      I5 => o_bit_i_4_n_0,
      O => \o_bit__7\
    );
o_bit_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => o_bit_i_5_n_0,
      I1 => o_bit_i_6_n_0,
      I2 => o_bit_i_7_n_0,
      I3 => \count_reg_n_0_[9]\,
      I4 => \count_reg_n_0_[10]\,
      I5 => \count_reg_n_0_[11]\,
      O => o_bit_i_4_n_0
    );
o_bit_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \count_reg_n_0_[3]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[4]\,
      I5 => \count_reg_n_0_[5]\,
      O => o_bit_i_5_n_0
    );
o_bit_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \count_reg_n_0_[8]\,
      I1 => \count_reg_n_0_[7]\,
      I2 => \count_reg_n_0_[6]\,
      O => o_bit_i_6_n_0
    );
o_bit_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[7]\,
      I1 => \count_reg_n_0_[8]\,
      O => o_bit_i_7_n_0
    );
o_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => o_bit_reg_1,
      Q => \^o_bit_reg_0\,
      R => '0'
    );
\tLSB[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(2),
      I2 => TMP_SDA,
      I3 => \tLSB[7]_i_2_n_0\,
      I4 => p_0_in(0),
      O => \tLSB[7]_i_1_n_0\
    );
\tLSB[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => reset,
      I1 => state_reg(4),
      I2 => state_reg(1),
      I3 => state_reg(3),
      I4 => state_reg(0),
      I5 => state_reg(2),
      O => \tLSB[7]_i_2_n_0\
    );
\tLSB_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tLSB[7]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\tMSB[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state_reg(1),
      I1 => TMP_SDA,
      I2 => state_reg(2),
      I3 => \tMSB[0]_i_2_n_0\,
      I4 => p_0_in(1),
      O => \tMSB[0]_i_1_n_0\
    );
\tMSB[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => reset,
      I1 => state_reg(4),
      I2 => state_reg(3),
      I3 => state_reg(0),
      I4 => state_reg(1),
      I5 => state_reg(2),
      O => \tMSB[0]_i_2_n_0\
    );
\tMSB[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => state_reg(3),
      I1 => \tMSB[5]_i_2_n_0\,
      I2 => \tMSB[1]_i_2_n_0\,
      I3 => \tMSB[6]_i_3_n_0\,
      I4 => \tMSB[1]_i_3_n_0\,
      I5 => p_0_in(2),
      O => \tMSB[1]_i_1_n_0\
    );
\tMSB[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_reg(2),
      I1 => state_reg(4),
      O => \tMSB[1]_i_2_n_0\
    );
\tMSB[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => reset,
      I1 => state_reg(4),
      I2 => state_reg(3),
      I3 => state_reg(2),
      I4 => state_reg(1),
      I5 => state_reg(0),
      O => \tMSB[1]_i_3_n_0\
    );
\tMSB[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \tMSB[2]_i_2_n_0\,
      I1 => \tMSB[3]_i_3_n_0\,
      I2 => \tMSB[3]_i_4_n_0\,
      I3 => state_reg(3),
      I4 => state_reg(2),
      I5 => p_0_in(3),
      O => \tMSB[2]_i_1_n_0\
    );
\tMSB[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => state_reg(3),
      I1 => \tMSB[6]_i_2_n_0\,
      I2 => state_reg(4),
      I3 => state_reg(2),
      O => \tMSB[2]_i_2_n_0\
    );
\tMSB[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF00000800"
    )
        port map (
      I0 => \tMSB[3]_i_2_n_0\,
      I1 => \tMSB[6]_i_3_n_0\,
      I2 => \tMSB[3]_i_3_n_0\,
      I3 => \tMSB[3]_i_4_n_0\,
      I4 => \tMSB[3]_i_5_n_0\,
      I5 => p_0_in(4),
      O => \tMSB[3]_i_1_n_0\
    );
\tMSB[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg(0),
      I1 => TMP_SDA,
      O => \tMSB[3]_i_2_n_0\
    );
\tMSB[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_reg(4),
      I1 => reset,
      O => \tMSB[3]_i_3_n_0\
    );
\tMSB[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      O => \tMSB[3]_i_4_n_0\
    );
\tMSB[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_reg(3),
      I1 => state_reg(2),
      O => \tMSB[3]_i_5_n_0\
    );
\tMSB[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000000"
    )
        port map (
      I0 => state_reg(0),
      I1 => TMP_SDA,
      I2 => state_reg(2),
      I3 => state_reg(1),
      I4 => \tMSB[4]_i_2_n_0\,
      I5 => p_0_in(5),
      O => \tMSB[4]_i_1_n_0\
    );
\tMSB[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => reset,
      I1 => state_reg(4),
      I2 => state_reg(0),
      I3 => state_reg(1),
      I4 => state_reg(3),
      I5 => state_reg(2),
      O => \tMSB[4]_i_2_n_0\
    );
\tMSB[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => state_reg(4),
      I1 => \tMSB[5]_i_2_n_0\,
      I2 => state_reg(3),
      I3 => \tMSB[6]_i_3_n_0\,
      I4 => \tMSB[5]_i_3_n_0\,
      I5 => p_0_in(6),
      O => \tMSB[5]_i_1_n_0\
    );
\tMSB[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state_reg(1),
      I1 => TMP_SDA,
      O => \tMSB[5]_i_2_n_0\
    );
\tMSB[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => reset,
      I1 => state_reg(4),
      I2 => state_reg(2),
      I3 => state_reg(0),
      I4 => state_reg(3),
      I5 => state_reg(1),
      O => \tMSB[5]_i_3_n_0\
    );
\tMSB[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => state_reg(4),
      I1 => \tMSB[6]_i_2_n_0\,
      I2 => state_reg(3),
      I3 => \tMSB[6]_i_3_n_0\,
      I4 => \tMSB[6]_i_4_n_0\,
      I5 => p_0_in(7),
      O => \tMSB[6]_i_1_n_0\
    );
\tMSB[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg(1),
      I1 => TMP_SDA,
      O => \tMSB[6]_i_2_n_0\
    );
\tMSB[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(2),
      O => \tMSB[6]_i_3_n_0\
    );
\tMSB[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => reset,
      I1 => state_reg(4),
      I2 => state_reg(2),
      I3 => state_reg(1),
      I4 => state_reg(3),
      I5 => state_reg(0),
      O => \tMSB[6]_i_4_n_0\
    );
\tMSB_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tMSB[0]_i_1_n_0\,
      Q => p_0_in(1),
      R => '0'
    );
\tMSB_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tMSB[1]_i_1_n_0\,
      Q => p_0_in(2),
      R => '0'
    );
\tMSB_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tMSB[2]_i_1_n_0\,
      Q => p_0_in(3),
      R => '0'
    );
\tMSB_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tMSB[3]_i_1_n_0\,
      Q => p_0_in(4),
      R => '0'
    );
\tMSB_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tMSB[4]_i_1_n_0\,
      Q => p_0_in(5),
      R => '0'
    );
\tMSB_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tMSB[5]_i_1_n_0\,
      Q => p_0_in(6),
      R => '0'
    );
\tMSB_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \tMSB[6]_i_1_n_0\,
      Q => p_0_in(7),
      R => '0'
    );
\temp_data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => state_reg(2),
      I1 => state_reg(0),
      I2 => state_reg(1),
      I3 => state_reg(3),
      I4 => state_reg(4),
      O => temp_data_reg
    );
\temp_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(0),
      Q => w_data(0),
      R => '0'
    );
\temp_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(1),
      Q => w_data(1),
      R => '0'
    );
\temp_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(2),
      Q => w_data(2),
      R => '0'
    );
\temp_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(3),
      Q => w_data(3),
      R => '0'
    );
\temp_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(4),
      Q => w_data(4),
      R => '0'
    );
\temp_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(5),
      Q => w_data(5),
      R => '0'
    );
\temp_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(6),
      Q => w_data(6),
      R => '0'
    );
\temp_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp_data_reg,
      D => p_0_in(7),
      Q => w_data(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity eth_tempSens_0_1_tempSens is
  port (
    w_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    TMP_SCL : out STD_LOGIC;
    TMP_SDA : inout STD_LOGIC;
    reset : in STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of eth_tempSens_0_1_tempSens : entity is "tempSens";
end eth_tempSens_0_1_tempSens;

architecture STRUCTURE of eth_tempSens_0_1_tempSens is
  signal \^tmp_scl\ : STD_LOGIC;
  signal \clk_reg_i_1__0_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal master_n_1 : STD_LOGIC;
  signal master_n_14 : STD_LOGIC;
  signal \o_bit__7\ : STD_LOGIC;
  signal o_bit_i_1_n_0 : STD_LOGIC;
  signal w_200kHz : STD_LOGIC;
begin
  TMP_SCL <= \^tmp_scl\;
cgen: entity work.eth_tempSens_0_1_clkgen_200kHz
     port map (
      CLK100MHZ => CLK100MHZ,
      w_200kHz => w_200kHz
    );
\clk_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(3),
      I3 => counter(0),
      I4 => \^tmp_scl\,
      O => \clk_reg_i_1__0_n_0\
    );
master: entity work.eth_tempSens_0_1_i2c_master
     port map (
      CLK => w_200kHz,
      \FSM_sequential_state_reg_reg[3]_0\ => master_n_14,
      Q(3 downto 0) => counter(3 downto 0),
      TMP_SCL => \^tmp_scl\,
      TMP_SDA => TMP_SDA,
      clk_reg_reg_0 => \clk_reg_i_1__0_n_0\,
      \o_bit__7\ => \o_bit__7\,
      o_bit_reg_0 => master_n_1,
      o_bit_reg_1 => o_bit_i_1_n_0,
      reset => reset,
      w_data(7 downto 0) => w_data(7 downto 0)
    );
o_bit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => master_n_14,
      I1 => \o_bit__7\,
      I2 => reset,
      I3 => master_n_1,
      O => o_bit_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity eth_tempSens_0_1 is
  port (
    CLK100MHZ : in STD_LOGIC;
    reset : in STD_LOGIC;
    TMP_SDA : inout STD_LOGIC;
    TMP_SCL : out STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    w_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of eth_tempSens_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of eth_tempSens_0_1 : entity is "eth_tempSens_0_1,tempSens,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of eth_tempSens_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of eth_tempSens_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of eth_tempSens_0_1 : entity is "tempSens,Vivado 2024.1";
end eth_tempSens_0_1;

architecture STRUCTURE of eth_tempSens_0_1 is
  signal \^sw\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^w_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^sw\(7 downto 0) <= SW(7 downto 0);
  w_data(15 downto 8) <= \^sw\(7 downto 0);
  w_data(7 downto 0) <= \^w_data\(7 downto 0);
inst: entity work.eth_tempSens_0_1_tempSens
     port map (
      CLK100MHZ => CLK100MHZ,
      TMP_SCL => TMP_SCL,
      TMP_SDA => TMP_SDA,
      reset => reset,
      w_data(7 downto 0) => \^w_data\(7 downto 0)
    );
end STRUCTURE;
