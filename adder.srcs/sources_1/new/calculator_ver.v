`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 11:45:12 AM
// Design Name: 
// Module Name: calculator_ver
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


module calculator_ver(
    input wire SM,
    input wire [1:0] MM,
    input wire SN,
    input wire [1:0] NN,
    output wire SSS,
    output wire [2:0] SS
    );

calculator U1(
    .SGN_M(SM), .M1(MM[1]), .M0(MM[0]),
    .SGN_N(SN), .N1(NN[1]), .N0(NN[0]),
    .SGN_S(SSS), .S2(SS[2]), .S1(SS[1]), .S0(SS[0])
    );

endmodule
