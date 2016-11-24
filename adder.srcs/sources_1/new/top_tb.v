`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 06:52:18 PM
// Design Name: 
// Module Name: top_tb
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
//  Remove the clock divider when running this testbench!
//////////////////////////////////////////////////////////////////////////////////


module top_tb;

reg SGN_M, M1, M0;
reg SGN_N, N1, N0;
reg CLK;
wire [3:0] Y;
wire AN3, AN2, AN1, AN0;

top_ver U1(
    .SGN_M(SGN_M), .M1(M1), .M0(M0),
    .SGN_N(SGN_N), .N1(N1), .N0(N0),
    .CLK(CLK),
    .Y(Y),
    .AN3(AN3), .AN2(AN2), .AN1(AN1), .AN0(AN0)
    );

parameter delay = 200;

initial begin
    SGN_M = 0; M1 = 0; M0 = 1;  // M = 1
    SGN_N = 1; N1 = 1; N0 = 1;  // N = -3
    CLK = 0;
    repeat(100) begin
        #delay; CLK = CLK + 1;
    end
end

endmodule
