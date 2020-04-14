`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 12:49:05
// Design Name: 
// Module Name: Tfilpflop
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

module Tfilpflop(T,clk,reset,q,qn);
    input T,clk,reset;
    output q,qn;
    wire J,K;
    assign J = T;
    assign K = T;
    wire D,j1,k1;
    and and1(k1, ~K, q);
    and and2(j1, J, qn);
    or or1(D, j1, k1);
    wire Y,Qn,Q;
    Dlatch master(D, clk, reset, Y);
    Dlatch slave(Y, ~clk, reset, Q);
    assign Qn = ~Q;
    or or2(q, Q, reset);
    and and3(qn, Qn, ~reset);
endmodule
