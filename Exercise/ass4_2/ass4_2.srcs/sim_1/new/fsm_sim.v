`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 10:52:13
// Design Name: 
// Module Name: fsm_sim
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

module fsm_sim();
    reg clk,rst;
    reg [4:0] x_in;
    wire [1:0] y_out;
    fsm f1(x_in, clk, rst, y_out);
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial fork
        #1 rst = 1'b1;
    join
    
    initial begin
        x_in = 5'b00000;
        repeat(31)
            #5 x_in = x_in + 1;
        #5 $finish;
    end
endmodule
