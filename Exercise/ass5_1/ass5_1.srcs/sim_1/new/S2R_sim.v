`timescale 1ns / 1ps
module S2R_sim( );
    reg I, clk, rst_n;
    reg [1:0] S;
    wire Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0;
    Serial_Parallel_Converter u_SPC(I, clk, rst_n, S, Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0);
    
    initial
    begin
        clk = 0;
        S = 2'b01;
        forever #2 clk = ~clk;
    end
    
    initial
    fork
        rst_n = 0;
        I = 1;
        #1 rst_n = 1;
        #20 I = 0;
        #30 I = 1;
        #40 $finish;
    join
endmodule
