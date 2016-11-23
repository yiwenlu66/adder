`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/23/2016 09:33:08 PM
// Design Name: 
// Module Name: full_adder_1_bit_tb
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


module full_adder_1_bit_tb;
    reg A, B, CI;
    wire S, CO;

full_adder_1_bit_ver U1 (
    .AA(A), .BB(B), .CICI(CI),
    .SS(S), .COCO(CO)
    );

parameter delay = 100;

initial begin
    A = 1'b0; B = 1'b0; CI = 1'b0;
    #delay A = 1'b0; B = 1'b0; CI = 1'b1;
    #delay A = 1'b0; B = 1'b1; CI = 1'b0;
    #delay A = 1'b0; B = 1'b1; CI = 1'b1;
    #delay A = 1'b1; B = 1'b0; CI = 1'b0;
    #delay A = 1'b1; B = 1'b0; CI = 1'b1;
    #delay A = 1'b1; B = 1'b1; CI = 1'b0;
    #delay A = 1'b1; B = 1'b1; CI = 1'b1;
end

initial $monitor($time, , , "A=%b B=%b CI=%b S=%b CO=%b", A, B, CI, S, CO);

endmodule
