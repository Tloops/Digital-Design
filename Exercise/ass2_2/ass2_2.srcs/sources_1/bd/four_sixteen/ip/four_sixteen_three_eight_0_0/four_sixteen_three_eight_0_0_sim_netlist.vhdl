-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Nov 18 00:43:12 2019
-- Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/10341/ass2_2/ass2_2.srcs/sources_1/bd/four_sixteen/ip/four_sixteen_three_eight_0_0/four_sixteen_three_eight_0_0_sim_netlist.vhdl
-- Design      : four_sixteen_three_eight_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity four_sixteen_three_eight_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of four_sixteen_three_eight_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of four_sixteen_three_eight_0_0 : entity is "four_sixteen_three_eight_0_0,three_eight,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of four_sixteen_three_eight_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of four_sixteen_three_eight_0_0 : entity is "three_eight,Vivado 2017.4";
end four_sixteen_three_eight_0_0;

architecture STRUCTURE of four_sixteen_three_eight_0_0 is
begin
Y0_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => en,
      I1 => I2,
      I2 => I0,
      I3 => I1,
      O => Y0
    );
Y1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => en,
      I1 => I1,
      I2 => I2,
      I3 => I0,
      O => Y1
    );
Y2_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => en,
      I1 => I2,
      I2 => I0,
      I3 => I1,
      O => Y2
    );
Y3_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => en,
      I1 => I1,
      I2 => I0,
      I3 => I2,
      O => Y3
    );
Y4_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => en,
      I1 => I1,
      I2 => I0,
      I3 => I2,
      O => Y4
    );
Y5_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => en,
      I1 => I2,
      I2 => I0,
      I3 => I1,
      O => Y5
    );
Y6_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => en,
      I1 => I1,
      I2 => I2,
      I3 => I0,
      O => Y6
    );
Y7_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => en,
      I1 => I2,
      I2 => I0,
      I3 => I1,
      O => Y7
    );
end STRUCTURE;
