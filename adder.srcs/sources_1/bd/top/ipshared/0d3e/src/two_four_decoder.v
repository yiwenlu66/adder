//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 19:28:10 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target two_four_decoder.bd
//Design      : two_four_decoder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "two_four_decoder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=two_four_decoder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "two_four_decoder.hwdef" *) 
module two_four_decoder
   (A,
    Y0,
    Y1,
    Y2,
    Y3);
  input [1:0]A;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire [0:0]A0_Dout;
  wire [0:0]A1_Dout;
  wire [1:0]A_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_and2_2_y;
  wire xup_and2_3_y;
  wire xup_inv_0_y;
  wire xup_inv_1_y;

  assign A_1 = A[1:0];
  assign Y0 = xup_and2_0_y;
  assign Y1 = xup_and2_1_y;
  assign Y2 = xup_and2_2_y;
  assign Y3 = xup_and2_3_y;
  two_four_decoder_xlslice_0_0 A0
       (.Din(A_1),
        .Dout(A0_Dout));
  two_four_decoder_xlslice_1_0 A1
       (.Din(A_1),
        .Dout(A1_Dout));
  two_four_decoder_xup_and2_0_0 xup_and2_0
       (.a(xup_inv_0_y),
        .b(xup_inv_1_y),
        .y(xup_and2_0_y));
  two_four_decoder_xup_and2_1_0 xup_and2_1
       (.a(xup_inv_1_y),
        .b(A0_Dout),
        .y(xup_and2_1_y));
  two_four_decoder_xup_and2_0_1 xup_and2_2
       (.a(A1_Dout),
        .b(xup_inv_0_y),
        .y(xup_and2_2_y));
  two_four_decoder_xup_and2_0_2 xup_and2_3
       (.a(A0_Dout),
        .b(A1_Dout),
        .y(xup_and2_3_y));
  two_four_decoder_xup_inv_0_0 xup_inv_0
       (.a(A0_Dout),
        .y(xup_inv_0_y));
  two_four_decoder_xup_inv_1_0 xup_inv_1
       (.a(A1_Dout),
        .y(xup_inv_1_y));
endmodule
