`timescale 1ns / 1ps
module counter_sim();
    reg clk, rst_n;
    wire Q2, Q1, Q0;
    counter c(clk, rst_n, Q2, Q1, Q0);
    initial
    begin
        rst_n = 0;
        clk = 0;
        forever #2 clk = ~clk;
    end
    
    initial
    fork
        #3 rst_n = 1;
        #40 $finish;
    join
endmodule
