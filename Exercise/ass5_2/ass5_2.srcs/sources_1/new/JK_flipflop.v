`timescale 1ns / 1ps
module JK_flipflop(
    input clk, J, K, rst_n,
    output reg Q
    );
    always @(posedge clk)
    begin
        if(~rst_n)
            Q = 1'b0;
        else if({J, K} == 2'b10)
            Q = 1'b1;
        else if({J, K} == 2'b01)
            Q = 1'b0;
        else if({J, K} == 2'b11)
            Q = ~Q;
    end
endmodule
