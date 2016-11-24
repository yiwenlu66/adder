//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 11:17:59 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target complement.bd
//Design      : complement
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "complement,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=complement,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "complement.hwdef" *) 
module complement
   (A0,
    A1,
    A2,
    A3,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire full_adder_4_bit_0_S0;
  wire full_adder_4_bit_0_S1;
  wire full_adder_4_bit_0_S2;
  wire full_adder_4_bit_0_S3;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [0:0]xlconstant_4_dout;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_inv_2_y;
  wire xup_inv_3_y;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign Y0 = full_adder_4_bit_0_S0;
  assign Y1 = full_adder_4_bit_0_S1;
  assign Y2 = full_adder_4_bit_0_S2;
  assign Y3 = full_adder_4_bit_0_S3;
  complement_full_adder_4_bit_0_0 full_adder_4_bit_0
       (.A0(xlconstant_0_dout),
        .A1(xlconstant_1_dout),
        .A2(xlconstant_2_dout),
        .A3(xlconstant_3_dout),
        .B0(xup_inv_0_y),
        .B1(xup_inv_1_y),
        .B2(xup_inv_2_y),
        .B3(xup_inv_3_y),
        .CI(xlconstant_4_dout),
        .S0(full_adder_4_bit_0_S0),
        .S1(full_adder_4_bit_0_S1),
        .S2(full_adder_4_bit_0_S2),
        .S3(full_adder_4_bit_0_S3));
  complement_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  complement_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  complement_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  complement_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  complement_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  complement_xup_inv_0_0 xup_inv_0
       (.a(A0_1),
        .y(xup_inv_0_y));
  complement_xup_inv_1_0 xup_inv_1
       (.a(A1_1),
        .y(xup_inv_1_y));
  complement_xup_inv_2_0 xup_inv_2
       (.a(A2_1),
        .y(xup_inv_2_y));
  complement_xup_inv_3_0 xup_inv_3
       (.a(A3_1),
        .y(xup_inv_3_y));
endmodule
