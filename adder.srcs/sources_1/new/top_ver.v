`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 06:49:51 PM
// Design Name: 
// Module Name: top_ver
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


module top_ver(
    input wire SGN_M, M1, M0,
    input wire SGN_N, N1, N0,
    input wire CLK,
    output wire [3:0] Y,
    output wire AN3, AN2, AN1, AN0
    );

top U1(
    .SGN_M(SGN_M), .M1(M1), .M0(M0),
    .SGN_N(SGN_N), .N1(N1), .N0(N0),
    .CLK(CLK),
    .Y(Y),
    .AN3(AN3), .AN2(AN2), .AN1(AN1), .AN0(AN0)
    );

endmodule
