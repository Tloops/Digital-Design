-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Nov 18 00:43:11 2019
-- Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top four_sixteen_util_vector_logic_8_0 -prefix
--               four_sixteen_util_vector_logic_8_0_ four_sixteen_util_vector_logic_1_9_stub.vhdl
-- Design      : four_sixteen_util_vector_logic_1_9
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_sixteen_util_vector_logic_8_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end four_sixteen_util_vector_logic_8_0;

architecture stub of four_sixteen_util_vector_logic_8_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Op2[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2017.4";
begin
end;
