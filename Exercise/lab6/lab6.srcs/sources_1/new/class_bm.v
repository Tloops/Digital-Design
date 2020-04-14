`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/16 18:02:19
// Design Name: 
// Module Name: class_bm
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


module class_bm(
    input[1:0] num,
    output c1,
    output c2,
    output c3
    );
    reg c1, c2, c3;
    
   always @*
   begin
        casex(num)
            2'b00:
                {c1, c2, c3} = 3'b100;
            2'b01:
                {c1, c2, c3} = 3'b010;
            2'b1x:
                {c1, c2, c3} = 3'b001;
        endcase
   end
    
endmodule
