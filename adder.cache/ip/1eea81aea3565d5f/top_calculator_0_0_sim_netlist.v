// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 19:33:13 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_calculator_0_0_sim_netlist.v
// Design      : top_calculator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "calculator.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator
   (M0,
    M1,
    N0,
    N1,
    S0,
    S1,
    S2,
    SGN_M,
    SGN_N,
    SGN_S);
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

  wire M0;
  wire M1;
  wire N0;
  wire N1;
  wire S0;
  wire S1;
  wire S2;
  wire SGN_M;
  wire SGN_N;
  wire SGN_S;
  wire complement_0_Y0;
  wire complement_0_Y1;
  wire complement_0_Y2;
  wire complement_0_Y3;
  wire complement_2_Y0;
  wire complement_2_Y1;
  wire complement_2_Y2;
  wire complement_2_Y3;
  wire full_adder_4_bit_0_S0;
  wire full_adder_4_bit_0_S1;
  wire full_adder_4_bit_0_S2;
  wire xlconstant_0_dout;
  wire NLW_complement_1_Y3_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "calculator_complement_0_0,complement,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_complement_0_0 complement_0
       (.A0(M0),
        .A1(M1),
        .A2(xlconstant_0_dout),
        .A3(xlconstant_0_dout),
        .COMP(SGN_M),
        .Y0(complement_0_Y0),
        .Y1(complement_0_Y1),
        .Y2(complement_0_Y2),
        .Y3(complement_0_Y3));
  (* CHECK_LICENSE_TYPE = "calculator_complement_1_0,complement,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_complement_1_0 complement_1
       (.A0(full_adder_4_bit_0_S0),
        .A1(full_adder_4_bit_0_S1),
        .A2(full_adder_4_bit_0_S2),
        .A3(SGN_S),
        .COMP(SGN_S),
        .Y0(S0),
        .Y1(S1),
        .Y2(S2),
        .Y3(NLW_complement_1_Y3_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "calculator_complement_2_0,complement,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_complement_2_0 complement_2
       (.A0(N0),
        .A1(N1),
        .A2(xlconstant_0_dout),
        .A3(xlconstant_0_dout),
        .COMP(SGN_N),
        .Y0(complement_2_Y0),
        .Y1(complement_2_Y1),
        .Y2(complement_2_Y2),
        .Y3(complement_2_Y3));
  (* CHECK_LICENSE_TYPE = "calculator_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_full_adder_4_bit_0_0 full_adder_4_bit_0
       (.A0(complement_0_Y0),
        .A1(complement_0_Y1),
        .A2(complement_0_Y2),
        .A3(complement_0_Y3),
        .B0(complement_2_Y0),
        .B1(complement_2_Y1),
        .B2(complement_2_Y2),
        .B3(complement_2_Y3),
        .CI(xlconstant_0_dout),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(full_adder_4_bit_0_S0),
        .S1(full_adder_4_bit_0_S1),
        .S2(full_adder_4_bit_0_S2),
        .S3(SGN_S));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_complement_0_0,complement,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_complement_0_0
   (A0,
    A1,
    A2,
    A3,
    COMP,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  (* HW_HANDOFF = "complement.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement__xdcDup__1 inst
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .COMP(COMP),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_complement_1_0,complement,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_complement_1_0
   (A0,
    A1,
    A2,
    A3,
    COMP,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  (* HW_HANDOFF = "complement.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement__xdcDup__2 inst
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .COMP(COMP),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_complement_2_0,complement,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_complement_2_0
   (A0,
    A1,
    A2,
    A3,
    COMP,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  (* HW_HANDOFF = "complement.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement inst
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .COMP(COMP),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_full_adder_4_bit_0_0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit inst
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

(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator_xlconstant_0_0
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* HW_HANDOFF = "complement.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement
   (A0,
    A1,
    A2,
    A3,
    COMP,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire xlconstant_1_dout;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;
  wire xup_xor2_2_y;
  wire xup_xor2_3_y;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_full_adder_4_bit_0_0 full_adder_4_bit_0
       (.A0(COMP),
        .A1(xlconstant_1_dout),
        .A2(xlconstant_1_dout),
        .A3(xlconstant_1_dout),
        .B0(xup_xor2_0_y),
        .B1(xup_xor2_1_y),
        .B2(xup_xor2_2_y),
        .B3(xup_xor2_3_y),
        .CI(xlconstant_1_dout),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(Y0),
        .S1(Y1),
        .S2(Y2),
        .S3(Y3));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_0_0 xup_xor2_0
       (.a(A0),
        .b(COMP),
        .y(xup_xor2_0_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_1_0 xup_xor2_1
       (.a(A1),
        .b(COMP),
        .y(xup_xor2_1_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_2_0 xup_xor2_2
       (.a(A2),
        .b(COMP),
        .y(xup_xor2_2_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_3_0 xup_xor2_3
       (.a(A3),
        .b(COMP),
        .y(xup_xor2_3_y));
endmodule

(* HW_HANDOFF = "complement.hwdef" *) (* ORIG_REF_NAME = "complement" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement__xdcDup__1
   (A0,
    A1,
    A2,
    A3,
    COMP,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire xlconstant_1_dout;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;
  wire xup_xor2_2_y;
  wire xup_xor2_3_y;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_full_adder_4_bit_0_0__xdcDup__1 full_adder_4_bit_0
       (.A0(COMP),
        .A1(xlconstant_1_dout),
        .A2(xlconstant_1_dout),
        .A3(xlconstant_1_dout),
        .B0(xup_xor2_0_y),
        .B1(xup_xor2_1_y),
        .B2(xup_xor2_2_y),
        .B3(xup_xor2_3_y),
        .CI(xlconstant_1_dout),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(Y0),
        .S1(Y1),
        .S2(Y2),
        .S3(Y3));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xlconstant_1_0__3 xlconstant_1
       (.dout(xlconstant_1_dout));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_0_0__3 xup_xor2_0
       (.a(A0),
        .b(COMP),
        .y(xup_xor2_0_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_1_0__3 xup_xor2_1
       (.a(A1),
        .b(COMP),
        .y(xup_xor2_1_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_2_0__3 xup_xor2_2
       (.a(A2),
        .b(COMP),
        .y(xup_xor2_2_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_3_0__3 xup_xor2_3
       (.a(A3),
        .b(COMP),
        .y(xup_xor2_3_y));
endmodule

(* HW_HANDOFF = "complement.hwdef" *) (* ORIG_REF_NAME = "complement" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement__xdcDup__2
   (A0,
    A1,
    A2,
    A3,
    COMP,
    Y0,
    Y1,
    Y2,
    Y3);
  input A0;
  input A1;
  input A2;
  input A3;
  input COMP;
  output Y0;
  output Y1;
  output Y2;
  output Y3;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire xlconstant_1_dout;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;
  wire xup_xor2_2_y;
  wire xup_xor2_3_y;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_full_adder_4_bit_0_0__xdcDup__2 full_adder_4_bit_0
       (.A0(COMP),
        .A1(xlconstant_1_dout),
        .A2(xlconstant_1_dout),
        .A3(xlconstant_1_dout),
        .B0(xup_xor2_0_y),
        .B1(xup_xor2_1_y),
        .B2(xup_xor2_2_y),
        .B3(xup_xor2_3_y),
        .CI(xlconstant_1_dout),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(Y0),
        .S1(Y1),
        .S2(Y2),
        .S3(Y3));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xlconstant_1_0__4 xlconstant_1
       (.dout(xlconstant_1_dout));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_0_0__4 xup_xor2_0
       (.a(A0),
        .b(COMP),
        .y(xup_xor2_0_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_1_0__4 xup_xor2_1
       (.a(A1),
        .b(COMP),
        .y(xup_xor2_1_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_2_0__4 xup_xor2_2
       (.a(A2),
        .b(COMP),
        .y(xup_xor2_2_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_3_0__4 xup_xor2_3
       (.a(A3),
        .b(COMP),
        .y(xup_xor2_3_y));
endmodule

(* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_full_adder_4_bit_0_0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit__xdcDup__3 inst
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

(* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_full_adder_4_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_full_adder_4_bit_0_0__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit__xdcDup__1 inst
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

(* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_full_adder_4_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_full_adder_4_bit_0_0__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit__xdcDup__2 inst
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

(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xlconstant_1_0
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xlconstant_1_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xlconstant_1_0__3
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xlconstant_1_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xlconstant_1_0__4
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_0_0
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_0_0__3
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_0_0__4
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_1_0
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_1_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_1_0__3
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_1_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_1_0__4
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_2_0
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_2_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_2_0__3
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_2_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_2_0__4
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_3_0
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_3_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_3_0__3
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

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_3_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_complement_xup_xor2_3_0__4
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

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__16 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__16 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__16 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__16 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__16 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__16 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__25 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__25 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__25 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__25 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__25 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__25 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__11
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__26 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__26 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__26 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__26 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__26 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__26 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__27 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__27 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__27 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__27 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__27 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__27 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__13
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__28 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__28 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__28 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__28 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__28 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__28 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__29 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__29 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__29 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__29 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__29 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__29 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__15
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__30 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__30 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__30 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__30 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__30 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__30 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__17 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__17 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__17 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__17 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__17 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__17 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__18 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__18 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__18 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__18 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__18 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__18 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__4
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__19 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__19 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__19 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__19 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__19 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__19 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__5
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__20 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__20 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__20 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__20 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__20 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__20 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__6
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__21 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__21 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__21 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__21 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__21 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__21 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__7
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__22 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__22 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__22 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__22 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__22 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__22 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__8
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__23 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__23 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__23 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__23 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__23 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__23 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__9
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__24 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__24 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__24 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__24 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__24 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__24 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_inv_0_0__30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_0_0__30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_1_0__30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_nand2_2_0__30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xnor2_0_0__30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__20
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit_xup_xor2_0_0__30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
        .S(S3));
endmodule

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_4_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__1 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__1 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__1 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__1 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
        .S(S3));
endmodule

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_4_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__2 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__2 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__2 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__2 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
        .S(S3));
endmodule

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_4_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit__xdcDup__3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__3 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__3 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__3 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__3 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
        .S(S3));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__13 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__1 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__5 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__9 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__14 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_1" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__2 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_1" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__6 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_1" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__10 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__15 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_2" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__3 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_2" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__7 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_2" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__11 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_3" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__4 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_3" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__8 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_3" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1_bit__xdcDup__12 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "top_calculator_0_0,calculator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "calculator,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (M0,
    M1,
    N0,
    N1,
    S0,
    S1,
    S2,
    SGN_M,
    SGN_N,
    SGN_S);
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

  wire M0;
  wire M1;
  wire N0;
  wire N1;
  wire S0;
  wire S1;
  wire S2;
  wire SGN_M;
  wire SGN_N;
  wire SGN_S;

  (* HW_HANDOFF = "calculator.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_calculator inst
       (.M0(M0),
        .M1(M1),
        .N0(N0),
        .N1(N1),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .SGN_M(SGN_M),
        .SGN_N(SGN_N),
        .SGN_S(SGN_S));
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
