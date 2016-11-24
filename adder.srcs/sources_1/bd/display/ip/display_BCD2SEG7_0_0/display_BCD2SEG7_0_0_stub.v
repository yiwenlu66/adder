// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 13:29:51 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top display_BCD2SEG7_0_0 -prefix
//               display_BCD2SEG7_0_0_ display_BCD2SEG7_0_0_stub.v
// Design      : display_BCD2SEG7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BCD2SEG7,Vivado 2016.3" *)
module display_BCD2SEG7_0_0(LT_n, RBI_n, BCD_D, BCD_C, BCD_B, BCD_A, a, b, c, d, e, f, g, 
  BI_RBO_n)
/* synthesis syn_black_box black_box_pad_pin="LT_n,RBI_n,BCD_D,BCD_C,BCD_B,BCD_A,a,b,c,d,e,f,g,BI_RBO_n" */;
  input LT_n;
  input RBI_n;
  input BCD_D;
  input BCD_C;
  input BCD_B;
  input BCD_A;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  inout BI_RBO_n;
endmodule
