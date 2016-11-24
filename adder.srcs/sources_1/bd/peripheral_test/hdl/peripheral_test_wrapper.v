//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 15:33:31 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target peripheral_test_wrapper.bd
//Design      : peripheral_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module peripheral_test_wrapper
   (A0,
    A1,
    A2,
    AN0,
    AN1,
    AN2,
    AN3,
    DP,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input A0;
  input A1;
  input A2;
  output [0:0]AN0;
  output [0:0]AN1;
  output [0:0]AN2;
  output [0:0]AN3;
  output [0:0]DP;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;

  wire A0;
  wire A1;
  wire A2;
  wire [0:0]AN0;
  wire [0:0]AN1;
  wire [0:0]AN2;
  wire [0:0]AN3;
  wire [0:0]DP;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;

  peripheral_test peripheral_test_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .DP(DP),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
endmodule
