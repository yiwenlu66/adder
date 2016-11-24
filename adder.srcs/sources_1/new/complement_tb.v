`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 11:14:07 AM
// Design Name: 
// Module Name: complement_tb
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


module complement_tb;

reg COMP;
reg [3:0] A;
wire [3:0] Y;

complement_ver U1(
    .CC(COMP),
    .AA(A),
    .YY(Y)
    );

parameter delay = 200;

initial begin
    A = 4'b0000;
    repeat(16) begin
        COMP = 1'b0;
        #delay;
        COMP = 1'b1;
        #delay;
        A = A + 1;
    end
end

initial $monitor($time, , , "COMP=%b A=%b Y=%b", COMP, A, Y);

endmodule
