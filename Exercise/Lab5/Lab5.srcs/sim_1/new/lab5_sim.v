`include "four_xor.v"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/09 16:50:12
// Design Name: 
// Module Name: lab5_sim
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


module lab5_sim( );
    reg simx, simy, simz, simp;
    wire result;
//    lab5 u_lab5(
//    .x(simx), .y(simy), .z(simz), .p(simp), .ans(result));

    four_xor udp (result, simx, simy, simz, simp);
    
    initial
    begin
        {simx, simy, simz, simp} = 4'b0000;
        repeat(16)
        begin
            #10 {simx, simy, simz, simp} = {simx, simy, simz, simp} + 1;
            $monitor($time,"{simx, simy, simz, simp} : %d", {simx, simy, simz, simp});
        end
        $finish(1);
    end
    
endmodule
