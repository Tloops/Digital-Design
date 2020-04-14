`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/16 17:28:25
// Design Name: 
// Module Name: c_sim
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


module c_sim( );
    reg[1:0] simnum;
    wire simc408, simc406, simc402;
    classroom u_df(
        .num(simnum), .c408(simc408), .c406(simc406), .c402(simc402)
    );
    
    initial
    begin
        simnum = 0;
    #10
        simnum = 1;
    #10
        simnum = 2;
    #10
        simnum = 3;
    #10
        $finish;
    end
        
endmodule
