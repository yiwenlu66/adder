`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 02:46:02 PM
// Design Name: 
// Module Name: peripheral_test_ver
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


module peripheral_test_ver(
    input wire A2,
    input wire A1,
    input wire A0,
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g,
    output wire AN0,
    output wire AN1,
    output wire AN2,
    output wire AN3,
    output wire DP
    );

seven_seg U1(
    .A2(A2), .A1(A1), .A0(A0), .EN(1),
    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g)
    );

assign AN0 = 0;
assign AN1 = 1;
assign AN2 = 1;
assign AN3 = 1;
assign DP = 1;

endmodule
