`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 20:26:39
// Design Name: 
// Module Name: Dlatch
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

module Dlatch(input D,En,reset,output Y);
    wire Yn,S,R,s,r,y,yn;
    assign S = D;
    assign R = ~D;
    nand nand1(s, S, ~En);
    nand nand2(r, R, ~En);
    nand nand3(y, Yn, s);
    nand nand4(yn, Y, r);
    or or1(Y, y, reset);
    and and1(Yn, yn, ~reset);
endmodule
