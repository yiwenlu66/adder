//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 11:26:27 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target complement_wrapper.bd
//Design      : complement_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module complement_wrapper
   (A0,
    A1,
    A2,
    A3,
    COMP,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  complement complement_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .COMP(COMP),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule
