// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 10:41:52 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top full_adder_1_bit_xup_nand2_2_0 -prefix
//               full_adder_1_bit_xup_nand2_2_0_ full_adder_1_bit_xup_nand2_0_0_stub.v
// Design      : full_adder_1_bit_xup_nand2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *)
module full_adder_1_bit_xup_nand2_2_0(a, b, y)
/* synthesis syn_black_box black_box_pad_pin="a,b,y" */;
  input a;
  input b;
  output y;
endmodule
