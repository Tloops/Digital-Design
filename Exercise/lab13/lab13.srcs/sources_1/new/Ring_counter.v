`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/04 16:51:28
// Design Name: 
// Module Name: Ring_counter
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


module Ring_counter(
    input MR_n, CP, PE_n,
    input D3, D2, D1, D0,
    output reg Q3, Q2, Q1, Q0
    );
    always @(posedge CP, negedge MR_n)
        if(!MR_n)
            {Q3, Q2, Q1, Q0} <= 4'b0000;
        else
            if(!PE_n)
                {Q3, Q2, Q1, Q0} <= {D3, D2, D1, D0};
            else
                {Q3, Q2, Q1, Q0} <= {Q0, Q3, Q2, Q1};
endmodule
