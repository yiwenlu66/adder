`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/23/2016 10:07:20 PM
// Design Name: 
// Module Name: full_adder_4_bit_ver
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


module full_adder_4_bit_ver(
    input wire [3:0] AA,
    input wire [3:0] BB,
    output wire [3:0] SS
    );

full_adder_4_bit U1(
    .A0(AA[0]), .A1(AA[1]), .A2(AA[2]), .A3(AA[3]),
    .B0(BB[0]), .B1(BB[1]), .B2(BB[2]), .B3(BB[3]),
    .S0(SS[0]), .S1(SS[1]), .S2(SS[2]), .S3(SS[3])
    );

endmodule
