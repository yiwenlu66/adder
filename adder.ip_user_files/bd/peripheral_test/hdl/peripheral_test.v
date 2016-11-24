//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 15:33:31 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target peripheral_test.bd
//Design      : peripheral_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "peripheral_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=peripheral_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "peripheral_test.hwdef" *) 
module peripheral_test
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

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire BCD2SEG7_0_a;
  wire BCD2SEG7_0_b;
  wire BCD2SEG7_0_c;
  wire BCD2SEG7_0_d;
  wire BCD2SEG7_0_e;
  wire BCD2SEG7_0_f;
  wire BCD2SEG7_0_g;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign AN0[0] = xlconstant_1_dout;
  assign AN1[0] = xlconstant_0_dout;
  assign AN2[0] = xlconstant_0_dout;
  assign AN3[0] = xlconstant_0_dout;
  assign DP[0] = xlconstant_0_dout;
  assign a = BCD2SEG7_0_a;
  assign b = BCD2SEG7_0_b;
  assign c = BCD2SEG7_0_c;
  assign d = BCD2SEG7_0_d;
  assign e = BCD2SEG7_0_e;
  assign f = BCD2SEG7_0_f;
  assign g = BCD2SEG7_0_g;
  peripheral_test_BCD2SEG7_0_0 BCD2SEG7_0
       (.BCD_A(A0_1),
        .BCD_B(A1_1),
        .BCD_C(A2_1),
        .BCD_D(xlconstant_1_dout),
        .LT_n(xlconstant_0_dout),
        .RBI_n(xlconstant_0_dout),
        .a(BCD2SEG7_0_a),
        .b(BCD2SEG7_0_b),
        .c(BCD2SEG7_0_c),
        .d(BCD2SEG7_0_d),
        .e(BCD2SEG7_0_e),
        .f(BCD2SEG7_0_f),
        .g(BCD2SEG7_0_g));
  peripheral_test_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  peripheral_test_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
