`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/07 11:56:12
// Design Name: 
// Module Name: demorgan_df_sim
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


module demorgan_df_sim( );
    reg simx, simy;
    wire simq1, simq2, simq3, simq4;
    demorgan_df u_df(
    .x(simx), .y(simy), .q1(simq1), .q2(simq2), .q3(simq3), .q4(simq4));
    
    initial
    begin
        simx = 0;
        simy = 0;
       #10
        simx = 1;
        simy = 0;
       #10
        simx = 0;
        simy = 1;
       #10
        simx = 1;
        simy = 1;
       #10
        $finish;
    end
endmodule
