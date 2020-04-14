`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/03 10:30:02
// Design Name: 
// Module Name: fsm
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

module fsm(
    input [4:0] x_in,
    input clk,rst,
    output [1:0]y_out
    );
    reg [1:0]y_out,next_y;
    parameter A=2'b00,B=2'b01,C=2'b10;
    always @(posedge clk, negedge rst) begin
        if(~rst)
            y_out <= A;
        else
            y_out <= next_y;
    end
    always @(x_in) begin
        if(y_out == A || y_out == B) begin
            case(x_in)
                5'b11110:   next_y = B;
                5'b11101:   next_y = B;
                5'b11011:   next_y = B;
                5'b10111:   next_y = B;
                5'b01111:   next_y = B;
                5'b11000:   next_y = B;
                5'b10100:   next_y = B;
                5'b10010:   next_y = B;
                5'b10001:   next_y = B;
                5'b01100:   next_y = B;
                5'b01010:   next_y = B;
                5'b01001:   next_y = B;
                5'b00110:   next_y = B;
                5'b00101:   next_y = B;
                5'b00011:   next_y = B;
                5'b00000:   next_y = B;
                default:    next_y = C;
            endcase
        end
        else begin
            case(x_in)
                5'b11110:   next_y = C;
                5'b11101:   next_y = C;
                5'b11011:   next_y = C;
                5'b10111:   next_y = C;
                5'b01111:   next_y = C;
                5'b11000:   next_y = C;
                5'b10100:   next_y = C;
                5'b10010:   next_y = C;
                5'b10001:   next_y = C;
                5'b01100:   next_y = C;
                5'b01010:   next_y = C;
                5'b01001:   next_y = C;
                5'b00110:   next_y = C;
                5'b00101:   next_y = C;
                5'b00011:   next_y = C;
                5'b00000:   next_y = C;
                default:    next_y = B;
            endcase
        end
    end
endmodule
