`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/07 15:16:01
// Design Name: 
// Module Name: demorgan_sd
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


module demorgan_sd(x,y,q1,q2,q3,q4);
    input x,y;
    output q1,q2,q3,q4;
    wire mid1, mid2, mid3, mid4, mid4, mid5, mid6;
    
    or or1(mid1, x, y);
    not not1(q1, mid1);
    
    not not2(mid2, x);
    not not3(mid3, y);
    and and1(q2, mid2, mid3);
    
    and and2(mid4, x, y);
    not not4(q3, mid4);
    
    not not5(mid5, x);
    not not6(mid6, y);
    or or2(q4, mid5, mid6);
endmodule
