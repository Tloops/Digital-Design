`timescale 1ns / 1ps
module Serial_Parallel_Converter(
    input I, clk, rst_n,
    input [1:0] S,
    output Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0
    );
    Shift_Register_74194 sr1(rst_n, clk, I, 1'b0, S, 1'b0, 1'b0, 1'b0, 1'b0, Q7, Q6, Q5, Q4);
    Shift_Register_74194 sr2(rst_n, clk, Q4, 1'b0, S, 1'b0, 1'b0, 1'b0, 1'b0, Q3, Q2, Q1, Q0);
endmodule
