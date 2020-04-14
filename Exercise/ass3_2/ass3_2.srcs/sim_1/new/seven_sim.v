`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 23:12:20
// Design Name: 
// Module Name: seven_sim
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

module seven_sim( );
    reg A, B, C, D;
    wire [7:0] Y;
    wire [7:0] en;
    
    ABCD_to_seven u_df(
        .A(A), .B(B), .C(C), .D(D), .seg_out(Y), .seg_en(en));
    
    initial
    begin
        {A, B, C, D} = 4'b0000;
        repeat(15)
        begin
            #10 {A, B, C, D} = {A, B, C, D} + 1;
        end
        #10 $finish;
    end
endmodule
