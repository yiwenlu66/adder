`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 02:48:47 PM
// Design Name: 
// Module Name: peripheral_test_tb
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


module peripheral_test_tb;

reg [2:0] A;
wire a, b, c, d, e, f, g, AN0, AN1, AN2, AN3, DP;

peripheral_test_ver U1(
    .A2(A[2]), .A1(A[1]), .A0(A[0]),
    .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g),
    .AN0(AN0), .AN1(AN1), .AN2(AN2), .AN3(AN3), .DP(DP)
    );

parameter delay = 200;

initial begin
    A = 3'b000;
    repeat (8) begin
        #delay;
        A = A + 1;
    end
end

endmodule
