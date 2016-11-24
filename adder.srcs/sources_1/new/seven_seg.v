`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 04:42:41 PM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(
    input A2, A1, A0,
    output a, b, c, d, e, f, g
    );

wire [2:0] A;
reg [6:0] segments;

assign A = {A2, A1, A0};

always @(*)
case (A)
    3'b000: segments = 7'b0000001;
    3'b001: segments = 7'b1001111;
    3'b010: segments = 7'b0010010;
    3'b011: segments = 7'b0000110;
    3'b100: segments = 7'b1001100;
    3'b101: segments = 7'b0100100;
    3'b110: segments = 7'b0100000;
    3'b111: segments = 7'b0001111;
    default: segments = 7'b0000000;
endcase

assign {a, b, c, d, e, f, g} = segments;

endmodule
