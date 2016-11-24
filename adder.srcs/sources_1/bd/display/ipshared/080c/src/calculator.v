//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 14:27:58 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target calculator.bd
//Design      : calculator
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "calculator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=calculator,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "calculator.hwdef" *) 
module calculator
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

  wire M0_1;
  wire M1_1;
  wire N0_1;
  wire N1_1;
  wire SGN_M_1;
  wire SGN_N_1;
  wire complement_0_Y0;
  wire complement_0_Y1;
  wire complement_0_Y2;
  wire complement_0_Y3;
  wire complement_1_Y0;
  wire complement_1_Y1;
  wire complement_1_Y2;
  wire complement_2_Y0;
  wire complement_2_Y1;
  wire complement_2_Y2;
  wire complement_2_Y3;
  wire full_adder_4_bit_0_S0;
  wire full_adder_4_bit_0_S1;
  wire full_adder_4_bit_0_S2;
  wire full_adder_4_bit_0_S3;
  wire [0:0]xlconstant_0_dout;

  assign M0_1 = M0;
  assign M1_1 = M1;
  assign N0_1 = N0;
  assign N1_1 = N1;
  assign S0 = complement_1_Y0;
  assign S1 = complement_1_Y1;
  assign S2 = complement_1_Y2;
  assign SGN_M_1 = SGN_M;
  assign SGN_N_1 = SGN_N;
  assign SGN_S = full_adder_4_bit_0_S3;
  calculator_complement_0_0 complement_0
       (.A0(M0_1),
        .A1(M1_1),
        .A2(xlconstant_0_dout),
        .A3(xlconstant_0_dout),
        .COMP(SGN_M_1),
        .Y0(complement_0_Y0),
        .Y1(complement_0_Y1),
        .Y2(complement_0_Y2),
        .Y3(complement_0_Y3));
  calculator_complement_1_0 complement_1
       (.A0(full_adder_4_bit_0_S0),
        .A1(full_adder_4_bit_0_S1),
        .A2(full_adder_4_bit_0_S2),
        .A3(full_adder_4_bit_0_S3),
        .COMP(full_adder_4_bit_0_S3),
        .Y0(complement_1_Y0),
        .Y1(complement_1_Y1),
        .Y2(complement_1_Y2));
  calculator_complement_2_0 complement_2
       (.A0(N0_1),
        .A1(N1_1),
        .A2(xlconstant_0_dout),
        .A3(xlconstant_0_dout),
        .COMP(SGN_N_1),
        .Y0(complement_2_Y0),
        .Y1(complement_2_Y1),
        .Y2(complement_2_Y2),
        .Y3(complement_2_Y3));
  calculator_full_adder_4_bit_0_0 full_adder_4_bit_0
       (.A0(complement_0_Y0),
        .A1(complement_0_Y1),
        .A2(complement_0_Y2),
        .A3(complement_0_Y3),
        .B0(complement_2_Y0),
        .B1(complement_2_Y1),
        .B2(complement_2_Y2),
        .B3(complement_2_Y3),
        .CI(xlconstant_0_dout),
        .S0(full_adder_4_bit_0_S0),
        .S1(full_adder_4_bit_0_S1),
        .S2(full_adder_4_bit_0_S2),
        .S3(full_adder_4_bit_0_S3));
  calculator_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
