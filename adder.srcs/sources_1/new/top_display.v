`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 07:55:58 PM
// Design Name: 
// Module Name: top_display
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


module top_display(
    input wire SGN_M, M1, M0,
    input wire SGN_N, N1, N0,
    input wire CLK,
    output wire a, b, c, d, e, f, g, DP,
    output wire AN3, AN2, AN1, AN0,
    output wire SGN_M_O, SGN_N_O
    );

wire [3:0] Y;

top_ver U1(
    .SGN_M(SGN_M), .M0(M0), .M1(M1),
    .SGN_N(SGN_N), .N0(N0), .N1(N1),
    .CLK(CLK),
    .Y(Y),
    .AN3(AN3), .AN2(AN2), .AN1(AN1), .AN0(AN0),
    .SGN_M_O(SGN_M_O), .SGN_N_O(SGN_N_O)
    );

seven_seg U2(
    .EN(Y[3]), .A2(Y[2]), .A1(Y[1]), .A0(Y[0]),
    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g)
    );

assign DP = 1;

endmodule
