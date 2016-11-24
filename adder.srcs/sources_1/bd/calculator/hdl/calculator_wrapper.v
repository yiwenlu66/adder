//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 12:54:44 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target calculator_wrapper.bd
//Design      : calculator_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module calculator_wrapper
   (M0,
    M1,
    N0,
    N1,
    S0,
    S1,
    S2,
    SGN_M,
    SGN_N,
    SGN_S);
  input M0;
  input M1;
  input N0;
  input N1;
  output S0;
  output S1;
  output S2;
  input SGN_M;
  input SGN_N;
  output SGN_S;

  wire M0;
  wire M1;
  wire N0;
  wire N1;
  wire S0;
  wire S1;
  wire S2;
  wire SGN_M;
  wire SGN_N;
  wire SGN_S;

  calculator calculator_i
       (.M0(M0),
        .M1(M1),
        .N0(N0),
        .N1(N1),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .SGN_M(SGN_M),
        .SGN_N(SGN_N),
        .SGN_S(SGN_S));
endmodule
