`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 01:23:17 PM
// Design Name: 
// Module Name: display_ver
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


module display_ver(
    input wire SGN_M,
    input wire M1,
    input wire M0,
    input wire SGN_N,
    input wire N1,
    input wire N0,
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g
    );

display U1(
    .SGN_M(SGN_M), .SGN_N(SGN_N),
    .M1(M1), .M0(M0),
    .N1(N1), .N0(N0),
    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g)
    );

endmodule
