//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 01:24:32 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target full_adder_4_bit.bd
//Design      : full_adder_4_bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "full_adder_4_bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=full_adder_4_bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "full_adder_4_bit.hwdef" *) 
module full_adder_4_bit
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    CO,
    S0,
    S1,
    S2,
    S3);
  input A0;
  input A1;
  input A2;
  input A3;
  input B0;
  input B1;
  input B2;
  input B3;
  output CO;
  output S0;
  output S1;
  output S2;
  output S3;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire B0_1;
  wire B1_1;
  wire B2_1;
  wire B3_1;
  wire full_adder_1_bit_0_CO;
  wire full_adder_1_bit_0_S;
  wire full_adder_1_bit_1_CO;
  wire full_adder_1_bit_1_S;
  wire full_adder_1_bit_2_CO;
  wire full_adder_1_bit_2_S;
  wire full_adder_1_bit_3_CO;
  wire full_adder_1_bit_3_S;
  wire [0:0]xlconstant_0_dout;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign B0_1 = B0;
  assign B1_1 = B1;
  assign B2_1 = B2;
  assign B3_1 = B3;
  assign CO = full_adder_1_bit_3_CO;
  assign S0 = full_adder_1_bit_0_S;
  assign S1 = full_adder_1_bit_1_S;
  assign S2 = full_adder_1_bit_2_S;
  assign S3 = full_adder_1_bit_3_S;
  full_adder_4_bit_full_adder_1_bit_0_0 full_adder_1_bit_0
       (.A(A0_1),
        .B(B0_1),
        .CI(xlconstant_0_dout),
        .CO(full_adder_1_bit_0_CO),
        .S(full_adder_1_bit_0_S));
  full_adder_4_bit_full_adder_1_bit_0_1 full_adder_1_bit_1
       (.A(A1_1),
        .B(B1_1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(full_adder_1_bit_1_S));
  full_adder_4_bit_full_adder_1_bit_0_2 full_adder_1_bit_2
       (.A(A2_1),
        .B(B2_1),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(full_adder_1_bit_2_S));
  full_adder_4_bit_full_adder_1_bit_0_3 full_adder_1_bit_3
       (.A(A3_1),
        .B(B3_1),
        .CI(full_adder_1_bit_2_CO),
        .CO(full_adder_1_bit_3_CO),
        .S(full_adder_1_bit_3_S));
  full_adder_4_bit_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
