`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 01:35:23 PM
// Design Name: 
// Module Name: display_tb
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


module display_tb;

reg SGN_M, M1, M0, SGN_N, N1, N0;
wire a, b, c, d, e, f, g;

display_ver U1(
    .SGN_M(SGN_M), .M1(M1), .M0(M0),
    .SGN_N(SGN_N), .N1(N1), .N0(N0),
    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g)
    );

initial begin
    SGN_M = 0; M1 = 0; M0 = 0;
    SGN_N = 0; N1 = 0; N0 = 1;
end

endmodule
