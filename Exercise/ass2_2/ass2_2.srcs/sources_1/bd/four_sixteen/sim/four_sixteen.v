//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Nov 18 00:28:39 2019
//Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
//Command     : generate_target four_sixteen.bd
//Design      : four_sixteen
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "four_sixteen,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=four_sixteen,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "four_sixteen.hwdef" *) 
module four_sixteen
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.I0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.I0, LAYERED_METADATA undef" *) input I0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.I1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.I1, LAYERED_METADATA undef" *) input I1;
  input I2;
  input I3;
  output [0:0]Y0;
  output [0:0]Y1;
  output [0:0]Y10;
  output [0:0]Y11;
  output [0:0]Y12;
  output [0:0]Y13;
  output [0:0]Y14;
  output [0:0]Y15;
  output [0:0]Y2;
  output [0:0]Y3;
  output [0:0]Y4;
  output [0:0]Y5;
  output [0:0]Y6;
  output [0:0]Y7;
  output [0:0]Y8;
  output [0:0]Y9;
  input en;

  wire I0_1;
  wire I1_1;
  wire I2_1;
  wire I3_1;
  wire en_1;
  wire three_eight_0_Y0;
  wire three_eight_0_Y1;
  wire three_eight_0_Y2;
  wire three_eight_0_Y3;
  wire three_eight_0_Y4;
  wire three_eight_0_Y5;
  wire three_eight_0_Y6;
  wire three_eight_0_Y7;
  wire three_eight_1_Y0;
  wire three_eight_1_Y1;
  wire three_eight_1_Y2;
  wire three_eight_1_Y3;
  wire three_eight_1_Y4;
  wire three_eight_1_Y5;
  wire three_eight_1_Y6;
  wire three_eight_1_Y7;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign I0_1 = I0;
  assign I1_1 = I1;
  assign I2_1 = I2;
  assign I3_1 = I3;
  assign Y0[0] = util_vector_logic_1_Res;
  assign Y1[0] = util_vector_logic_2_Res;
  assign Y10[0] = util_vector_logic_11_Res;
  assign Y11[0] = util_vector_logic_13_Res;
  assign Y12[0] = util_vector_logic_16_Res;
  assign Y13[0] = util_vector_logic_15_Res;
  assign Y14[0] = util_vector_logic_14_Res;
  assign Y15[0] = util_vector_logic_12_Res;
  assign Y2[0] = util_vector_logic_3_Res;
  assign Y3[0] = util_vector_logic_4_Res;
  assign Y4[0] = util_vector_logic_5_Res;
  assign Y5[0] = util_vector_logic_6_Res;
  assign Y6[0] = util_vector_logic_7_Res;
  assign Y7[0] = util_vector_logic_8_Res;
  assign Y8[0] = util_vector_logic_9_Res;
  assign Y9[0] = util_vector_logic_10_Res;
  assign en_1 = en;
  four_sixteen_three_eight_0_0 three_eight_0
       (.I0(I0_1),
        .I1(I1_1),
        .I2(I2_1),
        .Y0(three_eight_0_Y0),
        .Y1(three_eight_0_Y1),
        .Y2(three_eight_0_Y2),
        .Y3(three_eight_0_Y3),
        .Y4(three_eight_0_Y4),
        .Y5(three_eight_0_Y5),
        .Y6(three_eight_0_Y6),
        .Y7(three_eight_0_Y7),
        .en(util_vector_logic_0_Res));
  four_sixteen_three_eight_1_0 three_eight_1
       (.I0(I0_1),
        .I1(I1_1),
        .I2(I2_1),
        .Y0(three_eight_1_Y0),
        .Y1(three_eight_1_Y1),
        .Y2(three_eight_1_Y2),
        .Y3(three_eight_1_Y3),
        .Y4(three_eight_1_Y4),
        .Y5(three_eight_1_Y5),
        .Y6(three_eight_1_Y6),
        .Y7(three_eight_1_Y7),
        .en(I3_1));
  four_sixteen_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(I3_1),
        .Res(util_vector_logic_0_Res));
  four_sixteen_util_vector_logic_1_6 util_vector_logic_1
       (.Op1(three_eight_0_Y0),
        .Op2(en_1),
        .Res(util_vector_logic_1_Res));
  four_sixteen_util_vector_logic_2_2 util_vector_logic_10
       (.Op1(three_eight_1_Y1),
        .Op2(en_1),
        .Res(util_vector_logic_10_Res));
  four_sixteen_util_vector_logic_3_1 util_vector_logic_11
       (.Op1(three_eight_1_Y2),
        .Op2(en_1),
        .Res(util_vector_logic_11_Res));
  four_sixteen_util_vector_logic_4_1 util_vector_logic_12
       (.Op1(three_eight_1_Y7),
        .Op2(en_1),
        .Res(util_vector_logic_12_Res));
  four_sixteen_util_vector_logic_5_0 util_vector_logic_13
       (.Op1(three_eight_1_Y3),
        .Op2(en_1),
        .Res(util_vector_logic_13_Res));
  four_sixteen_util_vector_logic_6_0 util_vector_logic_14
       (.Op1(three_eight_1_Y6),
        .Op2(en_1),
        .Res(util_vector_logic_14_Res));
  four_sixteen_util_vector_logic_7_0 util_vector_logic_15
       (.Op1(three_eight_1_Y5),
        .Op2(en_1),
        .Res(util_vector_logic_15_Res));
  four_sixteen_util_vector_logic_8_0 util_vector_logic_16
       (.Op1(three_eight_1_Y4),
        .Op2(en_1),
        .Res(util_vector_logic_16_Res));
  four_sixteen_util_vector_logic_1_7 util_vector_logic_2
       (.Op1(three_eight_0_Y1),
        .Op2(en_1),
        .Res(util_vector_logic_2_Res));
  four_sixteen_util_vector_logic_1_8 util_vector_logic_3
       (.Op1(three_eight_0_Y2),
        .Op2(en_1),
        .Res(util_vector_logic_3_Res));
  four_sixteen_util_vector_logic_1_9 util_vector_logic_4
       (.Op1(three_eight_0_Y3),
        .Op2(en_1),
        .Res(util_vector_logic_4_Res));
  four_sixteen_util_vector_logic_1_10 util_vector_logic_5
       (.Op1(three_eight_0_Y4),
        .Op2(en_1),
        .Res(util_vector_logic_5_Res));
  four_sixteen_util_vector_logic_2_1 util_vector_logic_6
       (.Op1(three_eight_0_Y5),
        .Op2(en_1),
        .Res(util_vector_logic_6_Res));
  four_sixteen_util_vector_logic_3_0 util_vector_logic_7
       (.Op1(three_eight_0_Y6),
        .Op2(en_1),
        .Res(util_vector_logic_7_Res));
  four_sixteen_util_vector_logic_4_0 util_vector_logic_8
       (.Op1(three_eight_0_Y7),
        .Op2(en_1),
        .Res(util_vector_logic_8_Res));
  four_sixteen_util_vector_logic_1_11 util_vector_logic_9
       (.Op1(three_eight_1_Y0),
        .Op2(en_1),
        .Res(util_vector_logic_9_Res));
endmodule
