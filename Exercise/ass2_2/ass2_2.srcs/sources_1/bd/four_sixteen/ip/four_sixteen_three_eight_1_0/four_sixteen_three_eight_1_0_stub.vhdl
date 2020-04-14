-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Nov 18 00:43:14 2019
-- Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/10341/ass2_2/ass2_2.srcs/sources_1/bd/four_sixteen/ip/four_sixteen_three_eight_1_0/four_sixteen_three_eight_1_0_stub.vhdl
-- Design      : four_sixteen_three_eight_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_sixteen_three_eight_1_0 is
  Port ( 
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    en : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC;
    Y4 : out STD_LOGIC;
    Y5 : out STD_LOGIC;
    Y6 : out STD_LOGIC;
    Y7 : out STD_LOGIC
  );

end four_sixteen_three_eight_1_0;

architecture stub of four_sixteen_three_eight_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I0,I1,I2,en,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "three_eight,Vivado 2017.4";
begin
end;
