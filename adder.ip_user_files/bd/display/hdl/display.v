//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 14:29:40 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target display.bd
//Design      : display
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "display,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=display,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "display.hwdef" *) 
module display
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

  wire BCD2SEG7_0_a;
  wire BCD2SEG7_0_b;
  wire BCD2SEG7_0_c;
  wire BCD2SEG7_0_d;
  wire BCD2SEG7_0_e;
  wire BCD2SEG7_0_f;
  wire BCD2SEG7_0_g;
  wire M0_1;
  wire M1_1;
  wire N0_1;
  wire N1_1;
  wire SGN_M_1;
  wire SGN_N_1;
  wire calculator_0_S0;
  wire calculator_0_S1;
  wire calculator_0_S2;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign M0_1 = M0;
  assign M1_1 = M1;
  assign N0_1 = N0;
  assign N1_1 = N1;
  assign SGN_M_1 = SGN_M;
  assign SGN_N_1 = SGN_N;
  assign a = BCD2SEG7_0_a;
  assign b = BCD2SEG7_0_b;
  assign c = BCD2SEG7_0_c;
  assign d = BCD2SEG7_0_d;
  assign e = BCD2SEG7_0_e;
  assign f = BCD2SEG7_0_f;
  assign g = BCD2SEG7_0_g;
  display_BCD2SEG7_0_0 BCD2SEG7_0
       (.BCD_A(calculator_0_S0),
        .BCD_B(calculator_0_S1),
        .BCD_C(calculator_0_S2),
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
  display_calculator_0_0 calculator_0
       (.M0(M0_1),
        .M1(M1_1),
        .N0(N0_1),
        .N1(N1_1),
        .S0(calculator_0_S0),
        .S1(calculator_0_S1),
        .S2(calculator_0_S2),
        .SGN_M(SGN_M_1),
        .SGN_N(SGN_N_1));
  display_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  display_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
