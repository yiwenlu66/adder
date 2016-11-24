// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 19:32:59 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/peter/adder/adder.srcs/sources_1/bd/top/ip/top_xup_4_to_1_mux_vector_0_0_1/top_xup_4_to_1_mux_vector_0_0_stub.v
// Design      : top_xup_4_to_1_mux_vector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_4_to_1_mux_vector,Vivado 2016.3" *)
module top_xup_4_to_1_mux_vector_0_0(a, b, c, d, sel, y)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],b[3:0],c[3:0],d[3:0],sel[1:0],y[3:0]" */;
  input [3:0]a;
  input [3:0]b;
  input [3:0]c;
  input [3:0]d;
  input [1:0]sel;
  output [3:0]y;
endmodule
