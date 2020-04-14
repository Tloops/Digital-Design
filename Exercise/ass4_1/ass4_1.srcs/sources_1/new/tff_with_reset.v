`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 15:15:01
// Design Name: 
// Module Name: tff_with_reset
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

module tff_with_reset(
    input T,clk,reset,
    output reg q,
    output qn
    );
    always@(posedge clk)
    begin
        //Tfilpflop tff(T,clk, reset, q, qn);
    end
endmodule
