`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/16 16:37:19
// Design Name: 
// Module Name: classroom
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


module classroom(
    input[1:0] num,
    output c408,
    output c406,
    output c402
    );
    assign c408 = ~num[1] & ~num[0];
    assign c406 = ~num[1] & num[0];
    assign c402 = num[1];
endmodule
