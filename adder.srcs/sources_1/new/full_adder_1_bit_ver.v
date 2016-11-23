`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/23/2016 09:24:17 PM
// Design Name: 
// Module Name: full_adder_1_bit_ver
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


module full_adder_1_bit_ver(
    input wire AA,
    input wire BB,
    input wire CICI,
    output wire SS,
    output wire COCO
    );
    
full_adder_1_bit U1(
    .A(AA), .B(BB), .CI(CICI),
    .S(SS), .CO(COCO)
    );
    
endmodule
