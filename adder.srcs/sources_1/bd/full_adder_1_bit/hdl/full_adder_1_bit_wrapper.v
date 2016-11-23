//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Wed Nov 23 21:48:39 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target full_adder_1_bit_wrapper.bd
//Design      : full_adder_1_bit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module full_adder_1_bit_wrapper
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  full_adder_1_bit full_adder_1_bit_i
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule
