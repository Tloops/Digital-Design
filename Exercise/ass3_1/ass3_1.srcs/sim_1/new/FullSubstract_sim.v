`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 21:17:47
// Design Name: 
// Module Name: FullSubstract_sim
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


module FullSubstract_sim( );
    reg A, B, Bin;
    wire Bout, D;
    
    Full_Subtracter u_df(
        .A(A), .B(B), .Bin(Bin), .Bout(Bout), .D(D));
    
    initial
    begin
        {A, B, Bin} = 3'b000;
        repeat(7)
        begin
            #10 {A, B, Bin} = {A, B, Bin} + 1;
        end
        #10 $finish(1);
    end
endmodule
