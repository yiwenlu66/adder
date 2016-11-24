// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 11:27:05 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top calculator_full_adder_4_bit_0_0 -prefix
//               calculator_full_adder_4_bit_0_0_ complement_full_adder_4_bit_0_0_sim_netlist.v
// Design      : complement_full_adder_4_bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module calculator_full_adder_4_bit_0_0
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    CI,
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
  input CI;
  output CO;
  output S0;
  output S1;
  output S2;
  output S3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire CI;
  wire CO;
  wire S0;
  wire S1;
  wire S2;
  wire S3;

  (* HW_HANDOFF = "full_adder_4_bit.hwdef" *) 
  calculator_full_adder_4_bit_0_0_full_adder_4_bit inst
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .CI(CI),
        .CO(CO),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit
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
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit__xdcDup__1
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
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0__4 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0__4 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0__4 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0__4 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0__4 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0__4 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit__xdcDup__2
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
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0__5 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0__5 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0__5 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0__5 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0__5 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0__5 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit__xdcDup__3
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
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0__6 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0__6 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0__6 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0__6 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0__6 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0__6 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0
   (a,
    y);
  input a;
  output y;

  wire a;
  wire y;

  LUT1 #(
    .INIT(2'h1)) 
    y_INST_0
       (.I0(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0__4
   (a,
    y);
  input a;
  output y;

  wire a;
  wire y;

  LUT1 #(
    .INIT(2'h1)) 
    y_INST_0
       (.I0(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0__5
   (a,
    y);
  input a;
  output y;

  wire a;
  wire y;

  LUT1 #(
    .INIT(2'h1)) 
    y_INST_0
       (.I0(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_inv_0_0__6
   (a,
    y);
  input a;
  output y;

  wire a;
  wire y;

  LUT1 #(
    .INIT(2'h1)) 
    y_INST_0
       (.I0(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0__4
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0__5
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_0_0__6
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0__4
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0__5
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_1_0__6
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_2_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0__4
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_2_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0__5
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_2_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_nand2_2_0__6
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h9)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0__4
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h9)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0__5
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h9)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xnor2_0_0__6
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h9)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h6)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0__4
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h6)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0__5
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h6)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_1_bit_xup_xor2_0_0__6
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;
  wire b;
  wire y;

  LUT2 #(
    .INIT(4'h6)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) 
module calculator_full_adder_4_bit_0_0_full_adder_4_bit
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    CI,
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
  input CI;
  output CO;
  output S0;
  output S1;
  output S2;
  output S3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire CI;
  wire CO;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire full_adder_1_bit_0_CO;
  wire full_adder_1_bit_1_CO;
  wire full_adder_1_bit_2_CO;

  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_0 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_1 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_2 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_3 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
        .S(S3));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_0
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

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit__xdcDup__1 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_1
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

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit__xdcDup__2 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_2
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

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit__xdcDup__3 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module calculator_full_adder_4_bit_0_0_full_adder_4_bit_full_adder_1_bit_0_3
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

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  calculator_full_adder_4_bit_0_0_full_adder_1_bit inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
