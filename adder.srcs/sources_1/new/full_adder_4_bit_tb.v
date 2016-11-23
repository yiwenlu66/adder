`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 12:24:37 AM
// Design Name: 
// Module Name: full_adder_4_bit_tb
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


module full_adder_4_bit_tb;

reg [3:0] A;
reg [3:0] B;
wire [3:0] S;

full_adder_4_bit_ver U1(
    .AA(A), .BB(B),
    .SS(S)
    );

parameter delay = 200;

initial begin
A = 4'b0000;
B = 4'b0000;
    repeat(16) begin
        repeat(16) begin
            #delay;
            B = B + 1;
        end
        A = A + 1;
    end
end

initial $monitor($time, , , "A=%b B=%b S=%b", A, B, S);

endmodule
