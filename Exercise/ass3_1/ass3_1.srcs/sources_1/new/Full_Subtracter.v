`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 21:02:35
// Design Name: 
// Module Name: Full_Subtracter
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

module Full_Subtracter(
    input A, B, Bin,
    output Bout, D
    );
    four_one_MUX mux1(B, A, Bin, 1, 0, Bin, Bout);
    four_one_MUX mux2(B, A, Bin, ~Bin, ~Bin, Bin, D);
endmodule
