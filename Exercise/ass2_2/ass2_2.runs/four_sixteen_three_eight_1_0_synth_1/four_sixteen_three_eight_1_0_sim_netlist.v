// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Nov 18 00:43:14 2019
// Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ four_sixteen_three_eight_1_0_sim_netlist.v
// Design      : four_sixteen_three_eight_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "four_sixteen_three_eight_1_0,three_eight,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "three_eight,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (I0,
    I1,
    I2,
    en,
    Y0,
    Y1,
    Y2,
    Y3,
    Y4,
    Y5,
    Y6,
    Y7);
  input I0;
  input I1;
  input I2;
  input en;
  output Y0;
  output Y1;
  output Y2;
  output Y3;
  output Y4;
  output Y5;
  output Y6;
  output Y7;

  wire I0;
  wire I1;
  wire I2;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire Y4;
  wire Y5;
  wire Y6;
  wire Y7;
  wire en;

  LUT4 #(
    .INIT(16'h0002)) 
    Y0_INST_0
       (.I0(en),
        .I1(I2),
        .I2(I0),
        .I3(I1),
        .O(Y0));
  LUT4 #(
    .INIT(16'h0200)) 
    Y1_INST_0
       (.I0(en),
        .I1(I1),
        .I2(I2),
        .I3(I0),
        .O(Y1));
  LUT4 #(
    .INIT(16'h0200)) 
    Y2_INST_0
       (.I0(en),
        .I1(I2),
        .I2(I0),
        .I3(I1),
        .O(Y2));
  LUT4 #(
    .INIT(16'h0080)) 
    Y3_INST_0
       (.I0(en),
        .I1(I1),
        .I2(I0),
        .I3(I2),
        .O(Y3));
  LUT4 #(
    .INIT(16'h0200)) 
    Y4_INST_0
       (.I0(en),
        .I1(I1),
        .I2(I0),
        .I3(I2),
        .O(Y4));
  LUT4 #(
    .INIT(16'h0080)) 
    Y5_INST_0
       (.I0(en),
        .I1(I2),
        .I2(I0),
        .I3(I1),
        .O(Y5));
  LUT4 #(
    .INIT(16'h0080)) 
    Y6_INST_0
       (.I0(en),
        .I1(I1),
        .I2(I2),
        .I3(I0),
        .O(Y6));
  LUT4 #(
    .INIT(16'h8000)) 
    Y7_INST_0
       (.I0(en),
        .I1(I2),
        .I2(I0),
        .I3(I1),
        .O(Y7));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
