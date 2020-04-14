`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 14:26:24
// Design Name: 
// Module Name: lab7_sim
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


module lab7_sim( );
    reg [3:0] sw;
    wire [7:0] en;
    wire [7:0] out;
    lab7_7_segment_tube u_df(
        .sw(sw), .seg_en(en), .seg_out(out));
        
    initial
    begin
        sw = 4'b0000;
        repeat(15)
        begin
            #10 sw = sw + 1;
        end
    end
    
endmodule
