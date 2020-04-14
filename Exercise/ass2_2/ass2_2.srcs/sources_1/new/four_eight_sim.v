`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 20:02:38
// Design Name: 
// Module Name: four_eight_sim
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


module four_eight_sim( );
    reg I0, I1, I2, I3, en;
    wire Y0,Y1,Y10,Y11,Y12,Y13,Y14,Y15,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9;
    
    four_sixteen_wrapper u(I0, I1, I2, I3, Y0, Y1,Y10,Y11,Y12,Y13,Y14,Y15,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9, en);
    
    initial
    begin
        en = 1;
        {I3, I2, I1, I0} = 4'b0000;
        repeat(15)
            #10 {I3, I2, I1, I0} = {I3, I2, I1, I0} + 1;
        #10 en = 0;
        #10 {I3, I2, I1, I0} = 4'b0000;
        repeat(15)
            #10 {I3, I2, I1, I0} = {I3, I2, I1, I0} + 1;
    end
endmodule
