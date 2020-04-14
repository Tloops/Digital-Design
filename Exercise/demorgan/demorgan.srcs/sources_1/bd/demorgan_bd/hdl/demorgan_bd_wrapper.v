//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Oct  7 13:32:26 2019
//Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
//Command     : generate_target demorgan_bd_wrapper.bd
//Design      : demorgan_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module demorgan_bd_wrapper
   (q1,
    q2,
    q3,
    q4,
    x,
    y);
  output [0:0]q1;
  output [0:0]q2;
  output [0:0]q3;
  output [0:0]q4;
  input x;
  input y;

  wire [0:0]q1;
  wire [0:0]q2;
  wire [0:0]q3;
  wire [0:0]q4;
  wire x;
  wire y;

  demorgan_bd demorgan_bd_i
       (.q1(q1),
        .q2(q2),
        .q3(q3),
        .q4(q4),
        .x(x),
        .y(y));
endmodule
