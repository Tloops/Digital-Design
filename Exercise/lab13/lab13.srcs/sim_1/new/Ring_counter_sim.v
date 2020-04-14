`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/04 17:01:16
// Design Name: 
// Module Name: Ring_counter_sim
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

module Ring_counter_sim();
    reg MR_n, CP, PE_n, J, K_n;
    reg D3, D2, D1, D0;
    wire Q3, Q2, Q1, Q0;
    wire Q0_n;
    Ring_counter rc(MR_n, CP, PE_n, J, K_n, D3, D2, D1, D0, Q3, Q2, Q1, Q0, Q0_n);
    
    initial begin
        MR_n = 1'b0;
        PE_n = 1'b0;
        {D3, D2, D1, D0} = 4'b1000;
        #100 $finish;
    end
    
    initial begin
        CP = 1'b0;
        forever #5 CP = ~CP;
    end
    
    initial fork
        #1 MR_n = 1'b1;
        #10 PE_n = 1'b1;
    join
endmodule
