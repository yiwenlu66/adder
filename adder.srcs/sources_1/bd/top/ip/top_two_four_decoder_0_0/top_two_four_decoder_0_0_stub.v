// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 19:33:45 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/peter/adder/adder.srcs/sources_1/bd/top/ip/top_two_four_decoder_0_0/top_two_four_decoder_0_0_stub.v
// Design      : top_two_four_decoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "two_four_decoder,Vivado 2016.3" *)
module top_two_four_decoder_0_0(A, Y0, Y1, Y2, Y3)
/* synthesis syn_black_box black_box_pad_pin="A[1:0],Y0,Y1,Y2,Y3" */;
  input [1:0]A;
  output Y0;
  output Y1;
  output Y2;
  output Y3;
endmodule
