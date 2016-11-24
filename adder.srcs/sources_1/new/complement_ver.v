`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 11:10:42 AM
// Design Name: 
// Module Name: complement_ver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  COMP=0 to get the original code, COMP=1 to get the 2's complement
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module complement_ver(
    input wire CC,
    input wire [3:0] AA,
    output wire [3:0] YY
    );
    
complement U1(
    .COMP(CC),
    .A0(AA[0]), .A1(AA[1]), .A2(AA[2]), .A3(AA[3]),
    .Y0(YY[0]), .Y1(YY[1]), .Y2(YY[2]), .Y3(YY[3])
    );

endmodule
