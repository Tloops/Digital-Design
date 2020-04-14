// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Nov 18 00:43:11 2019
// Host        : DESKTOP-PEH8PNC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top four_sixteen_util_vector_logic_3_1 -prefix
//               four_sixteen_util_vector_logic_3_1_ four_sixteen_util_vector_logic_1_9_stub.v
// Design      : four_sixteen_util_vector_logic_1_9
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2017.4" *)
module four_sixteen_util_vector_logic_3_1(Op1, Op2, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Op2[0:0],Res[0:0]" */;
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;
endmodule
