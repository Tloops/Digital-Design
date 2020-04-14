`timescale 1ns / 1ps
module counter(
    input clk, rst_n,
    output Q2, Q1, Q0
    );
    wire j1 = ~(Q2 & Q1);
    wire j2 = Q0;
    wire k2 = Q2 | Q0;
    wire j3 = Q1 & Q0;
    wire k3 = ~Q0 & Q1;
    JK_flipflop jk1(clk, j1, 1'b1, rst_n, Q0);
    JK_flipflop jk2(clk, j2, k2, rst_n, Q1);
    JK_flipflop jk3(clk, j3, k3, rst_n, Q2);
endmodule
