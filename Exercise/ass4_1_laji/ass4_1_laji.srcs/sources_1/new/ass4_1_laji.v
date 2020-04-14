`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 22:25:56
// Design Name: 
// Module Name: ass4_1_laji
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

module ass4_1_laji(
    input x,y,z,
    output reg q,
    output reg qn
    );
    always@*
    begin
        casex({x,y,z})
            3'bx1x: 
            begin
                q = 1'b1;
                qn = 1'b0;
            end
            3'b100:
            begin
                q = 1'b1;
                qn = 1'b0;
            end
            3'b101:
            begin
                q = 1'b0;
                qn = 1'b1;
            end
        endcase
    end
endmodule
