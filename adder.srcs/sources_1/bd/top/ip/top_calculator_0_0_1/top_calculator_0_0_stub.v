// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 19:33:13 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/peter/adder/adder.srcs/sources_1/bd/top/ip/top_calculator_0_0_1/top_calculator_0_0_stub.v
// Design      : top_calculator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "calculator,Vivado 2016.3" *)
module top_calculator_0_0(M0, M1, N0, N1, S0, S1, S2, SGN_M, SGN_N, SGN_S)
/* synthesis syn_black_box black_box_pad_pin="M0,M1,N0,N1,S0,S1,S2,SGN_M,SGN_N,SGN_S" */;
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
endmodule
