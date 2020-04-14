`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 22:47:41
// Design Name: 
// Module Name: ABCD_to_seven
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ABCD_to_seven(
    input A, B, C, D,
    output wire[7:0] seg_out,
    output [7:0] seg_en
    );
    wire [15:0] M;
    decoder_4_16 d(D, C, B, A, M);
    assign seg_en = 8'h00;
    assign seg_out[0] = ~(M[0] | M[2] | M[3] | M[5] | M[6] | M[7] | M[8] | M[9]);
    assign seg_out[1] = ~(M[0] | M[1] | M[2] | M[3] | M[4] | M[7] | M[8] | M[9]);
    assign seg_out[2] = ~(M[0] | M[1] | M[3] | M[4] | M[5] | M[6] | M[7] | M[8] | M[9]);
    assign seg_out[3] = ~(M[0] | M[2] | M[3] | M[5] | M[6] | M[8] | M[9]);
    assign seg_out[4] = ~(M[0] | M[2] | M[6] | M[8]);
    assign seg_out[5] = ~(M[0] | M[4] | M[5] | M[6] | M[8] | M[9]);
    assign seg_out[6] = ~(M[2] | M[3] | M[4] | M[5] | M[6] | M[8] | M[9]);
    assign seg_out[7] = 1;
endmodule
