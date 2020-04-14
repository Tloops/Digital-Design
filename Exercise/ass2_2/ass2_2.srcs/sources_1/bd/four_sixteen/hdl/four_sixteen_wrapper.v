//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Nov 18 00:28:39 2019
//Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
//Command     : generate_target four_sixteen_wrapper.bd
//Design      : four_sixteen_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module four_sixteen_wrapper
   (I0,
    I1,
    I2,
    I3,
    Y0,
    Y1,
    Y10,
    Y11,
    Y12,
    Y13,
    Y14,
    Y15,
    Y2,
    Y3,
    Y4,
    Y5,
    Y6,
    Y7,
    Y8,
    Y9,
    en);
  input I0;
  input I1;
  input I2;
  input I3;
  output Y0;
  output Y1;
  output Y10;
  output Y11;
  output Y12;
  output Y13;
  output Y14;
  output Y15;
  output Y2;
  output Y3;
  output Y4;
  output Y5;
  output Y6;
  output Y7;
  output Y8;
  output Y9;
  input en;

  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire [0:0]Y0;
  wire [0:0]Y1;
  wire [0:0]Y10;
  wire [0:0]Y11;
  wire [0:0]Y12;
  wire [0:0]Y13;
  wire [0:0]Y14;
  wire [0:0]Y15;
  wire [0:0]Y2;
  wire [0:0]Y3;
  wire [0:0]Y4;
  wire [0:0]Y5;
  wire [0:0]Y6;
  wire [0:0]Y7;
  wire [0:0]Y8;
  wire [0:0]Y9;
  wire en;

  four_sixteen four_sixteen_i
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .Y0(Y0),
        .Y1(Y1),
        .Y10(Y10),
        .Y11(Y11),
        .Y12(Y12),
        .Y13(Y13),
        .Y14(Y14),
        .Y15(Y15),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5),
        .Y6(Y6),
        .Y7(Y7),
        .Y8(Y8),
        .Y9(Y9),
        .en(en));
endmodule
