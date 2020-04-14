`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/06 15:28:57
// Design Name: 
// Module Name: add_sim
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


module add_sim( );
     reg [1:0] simadd;
     reg simaug;
     wire [1:0] simadd1;
     wire simaug2;
     wire [2:0] simsum;
     Lab2_Addition u_df(
        .addend(simadd), .augend(simaug), .addend_led(simadd1), .augend_led(simaug2), .sum_led(simsum));
     
     initial
     begin
        simadd = 0;
        simaug = 0;
       #10
        simadd = 1;
        simaug = 0;
       #10
        simadd = 2;
        simaug = 0;
       #10
        simadd = 3;
        simaug = 0;
       #10
        simadd = 0;
        simaug = 1;
       #10
        simadd = 1;
        simaug = 1;
       #10
        simadd = 2;
        simaug = 1;
       #10
        simadd = 3;
        simaug = 1;
     end
endmodule
