`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/06 15:25:26
// Design Name: 
// Module Name: Lab2_addition
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


module Lab2_Addition(
    input [1:0] addend,
    input augend,
    output [1:0] addend_led,
    output augend_led,
    output [2:0] sum_led
    );
    assign addend_led = addend;
    assign augend_led = augend;
    assign sum_led = addend + augend;
endmodule

