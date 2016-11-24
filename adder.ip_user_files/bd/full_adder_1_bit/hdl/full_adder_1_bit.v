//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 10:41:19 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target full_adder_1_bit.bd
//Design      : full_adder_1_bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "full_adder_1_bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=full_adder_1_bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
module full_adder_1_bit
   (A,
    B,
    CI,
    CO,
    S);
  input A;
  input B;
  input CI;
  output CO;
  output S;

  wire A_1;
  wire B_1;
  wire CI_1;
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_nand2_1_y;
  wire xup_nand2_2_y;
  wire xup_xnor2_0_y;
  wire xup_xor2_0_y;

  assign A_1 = A;
  assign B_1 = B;
  assign CI_1 = CI;
  assign CO = xup_nand2_1_y;
  assign S = xup_xnor2_0_y;
  full_adder_1_bit_xup_inv_0_0 xup_inv_0
       (.a(CI_1),
        .y(xup_inv_0_y));
  full_adder_1_bit_xup_nand2_0_0 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI_1),
        .y(xup_nand2_0_y));
  full_adder_1_bit_xup_nand2_1_0 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(xup_nand2_1_y));
  full_adder_1_bit_xup_nand2_2_0 xup_nand2_2
       (.a(A_1),
        .b(B_1),
        .y(xup_nand2_2_y));
  full_adder_1_bit_xup_xnor2_0_0 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(xup_xnor2_0_y));
  full_adder_1_bit_xup_xor2_0_0 xup_xor2_0
       (.a(A_1),
        .b(B_1),
        .y(xup_xor2_0_y));
endmodule
