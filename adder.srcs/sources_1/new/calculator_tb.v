`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Yiwen Lu
// 
// Create Date: 11/24/2016 11:49:13 AM
// Design Name: 
// Module Name: calculator_tb
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


module calculator_tb;

reg SGN_M;
reg [1:0] M;
reg SGN_N;
reg [1:0] N;
wire SGN_S;
wire [2:0] S;

calculator_ver U1(
    .SM(SGN_M), .MM(M),
    .SN(SGN_N), .NN(N),
    .SSS(SGN_S), .SS(S)
    );

parameter delay = 200;

initial begin

    // both positive
    SGN_M = 0; SGN_N = 0;
    M = 2'b00; N = 2'b00;
    repeat(4) begin
        repeat(4) begin
            #delay;
            N = N + 1;
        end
        M = M + 1;
    end

    // both negative
    SGN_M = 1; SGN_N = 1;
    M = 2'b00; N = 2'b00;
    repeat(4) begin
        repeat(4) begin
            #delay;
            N = N + 1;
        end
        M = M + 1;
    end

    // M positive, N negative
    SGN_M = 0; SGN_N = 1;
    M = 2'b00; N = 2'b00;
    repeat(4) begin
        repeat(4) begin
            #delay;
            N = N + 1;
        end
        M = M + 1;
    end

end

endmodule
