`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 18:57:25
// Design Name: 
// Module Name: three_eight
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


module three_eight(
    input I0,
    input I1,
    input I2,
    input en,
    output reg Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
    );
    always @*
    begin
        if(en)
        case({I2, I1, I0})
            3'b000: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0000_0001;
            3'b001: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0000_0010;
            3'b010: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0000_0100;
            3'b011: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0000_1000;
            3'b100: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0001_0000;
            3'b101: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0010_0000;
            3'b110: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0100_0000;
            3'b111: {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b1000_0000;
        endcase
        else
            {Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0} = 8'b0000_0000;
    end
endmodule
