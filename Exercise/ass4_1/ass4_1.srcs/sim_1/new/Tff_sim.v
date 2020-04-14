`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 14:25:58
// Design Name: 
// Module Name: Tff_sim
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

module Tff_sim( );
    reg T, clk, reset;
    wire q, qn;
    Tfilpflop tff(T,clk,reset,q,qn);
    initial #40 $finish;
    
    initial
    begin
        reset = 1'b1;
        clk = 1'b0;
        forever #2 clk = ~clk;
    end
    
    initial fork
        T = 1'b0;
        #1 reset = 1'b0;
        #5 T = 1'b1;
        #20 T = 1'b0;
        #30 T = 1'b1;
    join
endmodule
