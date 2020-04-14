`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/07 11:45:56
// Design Name: 
// Module Name: demorgan_df
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


module demorgan_df(
    input x,
    input y,
    output x_led,
    output y_led,
    output q1,
    output q2,
    output q3,
    output q4
    );
    assign x_led = x;
    assign y_led = y;
    assign q1 = ~(x | y);
    assign q2 = ~x & ~y;
    assign q3 = ~(x & y);
    assign q4 = ~x | ~y;
endmodule
