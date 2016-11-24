//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 14:29:40 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target display_wrapper.bd
//Design      : display_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module display_wrapper
   (M0,
    M1,
    N0,
    N1,
    SGN_M,
    SGN_N,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input M0;
  input M1;
  input N0;
  input N1;
  input SGN_M;
  input SGN_N;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;

  wire M0;
  wire M1;
  wire N0;
  wire N1;
  wire SGN_M;
  wire SGN_N;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;

  display display_i
       (.M0(M0),
        .M1(M1),
        .N0(N0),
        .N1(N1),
        .SGN_M(SGN_M),
        .SGN_N(SGN_N),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
endmodule
