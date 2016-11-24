//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 20:52:57 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (AN0,
    AN1,
    AN2,
    AN3,
    CLK,
    M0,
    M1,
    N0,
    N1,
    SGN_M,
    SGN_M_O,
    SGN_N,
    SGN_N_O,
    Y);
  output AN0;
  output AN1;
  output AN2;
  output AN3;
  input CLK;
  input M0;
  input M1;
  input N0;
  input N1;
  input SGN_M;
  output SGN_M_O;
  input SGN_N;
  output SGN_N_O;
  output [3:0]Y;

  wire AN0;
  wire AN1;
  wire AN2;
  wire AN3;
  wire CLK;
  wire M0;
  wire M1;
  wire N0;
  wire N1;
  wire SGN_M;
  wire SGN_M_O;
  wire SGN_N;
  wire SGN_N_O;
  wire [3:0]Y;

  top top_i
       (.AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .CLK(CLK),
        .M0(M0),
        .M1(M1),
        .N0(N0),
        .N1(N1),
        .SGN_M(SGN_M),
        .SGN_M_O(SGN_M_O),
        .SGN_N(SGN_N),
        .SGN_N_O(SGN_N_O),
        .Y(Y));
endmodule
