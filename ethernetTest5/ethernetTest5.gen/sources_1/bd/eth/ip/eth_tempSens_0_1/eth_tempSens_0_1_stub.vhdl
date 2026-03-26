-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Feb 26 13:00:02 2026
-- Host        : DESKTOP-4RVJPC8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/rfebb/Desktop/Projects/ethernetTest5/ethernetTest5.gen/sources_1/bd/eth/ip/eth_tempSens_0_1/eth_tempSens_0_1_stub.vhdl
-- Design      : eth_tempSens_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eth_tempSens_0_1 is
  Port ( 
    CLK100MHZ : in STD_LOGIC;
    reset : in STD_LOGIC;
    TMP_SDA : inout STD_LOGIC;
    TMP_SCL : out STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    w_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end eth_tempSens_0_1;

architecture stub of eth_tempSens_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK100MHZ,reset,TMP_SDA,TMP_SCL,SW[7:0],w_data[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tempSens,Vivado 2024.1";
begin
end;
