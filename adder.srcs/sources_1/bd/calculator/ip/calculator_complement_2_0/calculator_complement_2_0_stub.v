// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 11:56:43 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top calculator_complement_2_0 -prefix
//               calculator_complement_2_0_ calculator_complement_1_0_stub.v
// Design      : calculator_complement_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "complement,Vivado 2016.3" *)
module calculator_complement_2_0(A0, A1, A2, A3, COMP, Y0, Y1, Y2, Y3)
/* synthesis syn_black_box black_box_pad_pin="A0,A1,A2,A3,COMP,Y0,Y1,Y2,Y3" */;
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;
endmodule
