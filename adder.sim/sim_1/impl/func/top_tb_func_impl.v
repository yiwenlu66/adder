// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 20:22:15 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/peter/adder/adder.sim/sim_1/impl/func/top_tb_func_impl.v
// Design      : top_display
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "top.hwdef" *) 
module top
   (AN0,
    AN1,
    AN2,
    AN3,
    CLK,
    M0,
    M1,
    N0,
    N1,
    SGN_M,
    SGN_N,
    Y);
  output AN0;
  output AN1;
  output AN2;
  output AN3;
  input CLK;
  input M0;
  input M1;
  input N0;
  input N1;
  input SGN_M;
  input SGN_N;
  output [3:0]Y;

  wire AN0;
  wire AN1;
  wire AN2;
  wire AN3;
  wire CLK;
  wire M0;
  wire M1;
  wire N0;
  wire N1;
  wire SGN_M;
  wire SGN_N;
  wire [3:0]Y;
  wire calculator_0_S0;
  wire calculator_0_S1;
  wire calculator_0_S2;
  wire calculator_0_SGN_S;
  wire [3:0]concat_N_dout;
  wire [1:0]counter_Q;
  wire [3:0]xlconcat_0_dout;
  wire [3:0]xlconcat_1_dout;
  wire [3:0]xlconcat_2_dout;
  wire [3:2]NLW_MUX_a_UNCONNECTED;
  wire [3:2]NLW_MUX_b_UNCONNECTED;
  wire [2:0]NLW_MUX_c_UNCONNECTED;
  wire [3:3]NLW_MUX_d_UNCONNECTED;
  wire [0:0]NLW_concat_M_In2_UNCONNECTED;
  wire [0:0]NLW_concat_M_In3_UNCONNECTED;
  wire [3:2]NLW_concat_M_dout_UNCONNECTED;
  wire [0:0]NLW_concat_N_In2_UNCONNECTED;
  wire [0:0]NLW_concat_N_In3_UNCONNECTED;
  wire [3:2]NLW_concat_N_dout_UNCONNECTED;
  wire [0:0]NLW_concat_S_In3_UNCONNECTED;
  wire [3:3]NLW_concat_S_dout_UNCONNECTED;
  wire [0:0]NLW_concat_SGN_S_In0_UNCONNECTED;
  wire [0:0]NLW_concat_SGN_S_In1_UNCONNECTED;
  wire [0:0]NLW_concat_SGN_S_In2_UNCONNECTED;
  wire [2:0]NLW_concat_SGN_S_dout_UNCONNECTED;

  (* X_CORE_INFO = "xup_4_to_1_mux_vector,Vivado 2016.3" *) 
  top_xup_4_to_1_mux_vector_0_0 MUX
       (.a({NLW_MUX_a_UNCONNECTED[3:2],xlconcat_2_dout[1:0]}),
        .b({NLW_MUX_b_UNCONNECTED[3:2],concat_N_dout[1:0]}),
        .c({xlconcat_1_dout[3],NLW_MUX_c_UNCONNECTED[2:0]}),
        .d({NLW_MUX_d_UNCONNECTED[3],xlconcat_0_dout[2:0]}),
        .sel(counter_Q),
        .y(Y));
  (* X_CORE_INFO = "calculator,Vivado 2016.3" *) 
  top_calculator_0_0 calculator
       (.M0(M0),
        .M1(M1),
        .N0(N0),
        .N1(N1),
        .S0(calculator_0_S0),
        .S1(calculator_0_S1),
        .S2(calculator_0_S2),
        .SGN_M(SGN_M),
        .SGN_N(SGN_N),
        .SGN_S(calculator_0_SGN_S));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_2_0 concat_M
       (.In0(M0),
        .In1(M1),
        .In2(NLW_concat_M_In2_UNCONNECTED[0]),
        .In3(NLW_concat_M_In3_UNCONNECTED[0]),
        .dout({NLW_concat_M_dout_UNCONNECTED[3:2],xlconcat_2_dout[1:0]}));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_0_1 concat_N
       (.In0(N0),
        .In1(N1),
        .In2(NLW_concat_N_In2_UNCONNECTED[0]),
        .In3(NLW_concat_N_In3_UNCONNECTED[0]),
        .dout({NLW_concat_N_dout_UNCONNECTED[3:2],concat_N_dout[1:0]}));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_0_0 concat_S
       (.In0(calculator_0_S0),
        .In1(calculator_0_S1),
        .In2(calculator_0_S2),
        .In3(NLW_concat_S_In3_UNCONNECTED[0]),
        .dout({NLW_concat_S_dout_UNCONNECTED[3],xlconcat_0_dout[2:0]}));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_1_0 concat_SGN_S
       (.In0(NLW_concat_SGN_S_In0_UNCONNECTED[0]),
        .In1(NLW_concat_SGN_S_In1_UNCONNECTED[0]),
        .In2(NLW_concat_SGN_S_In2_UNCONNECTED[0]),
        .In3(calculator_0_SGN_S),
        .dout({xlconcat_1_dout[3],NLW_concat_SGN_S_dout_UNCONNECTED[2:0]}));
  (* X_CORE_INFO = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
  top_c_counter_binary_0_0 counter
       (.CLK(CLK),
        .Q(counter_Q));
  (* X_CORE_INFO = "two_four_decoder,Vivado 2016.3" *) 
  top_two_four_decoder_0_0 two_four_decoder_0
       (.A(counter_Q),
        .Y0(AN3),
        .Y1(AN2),
        .Y2(AN1),
        .Y3(AN0));
endmodule

(* CHECK_LICENSE_TYPE = "top_c_counter_binary_0_0,c_counter_binary_v12_0_10,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
module top_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [1:0]Q;

  wire CLK;
  wire [1:0]Q;
  wire NLW_U0_CE_UNCONNECTED;
  wire NLW_U0_LOAD_UNCONNECTED;
  wire NLW_U0_SCLR_UNCONNECTED;
  wire NLW_U0_SINIT_UNCONNECTED;
  wire NLW_U0_SSET_UNCONNECTED;
  wire NLW_U0_THRESH0_UNCONNECTED;
  wire NLW_U0_UP_UNCONNECTED;
  wire [1:0]NLW_U0_L_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "2" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  top_c_counter_binary_0_0_c_counter_binary_v12_0_10 U0
       (.CE(NLW_U0_CE_UNCONNECTED),
        .CLK(CLK),
        .L(NLW_U0_L_UNCONNECTED[1:0]),
        .LOAD(NLW_U0_LOAD_UNCONNECTED),
        .Q(Q),
        .SCLR(NLW_U0_SCLR_UNCONNECTED),
        .SINIT(NLW_U0_SINIT_UNCONNECTED),
        .SSET(NLW_U0_SSET_UNCONNECTED),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(NLW_U0_UP_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "top_calculator_0_0,calculator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "calculator,Vivado 2016.3" *) 
module top_calculator_0_0
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
  top_calculator_0_0_calculator inst
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

(* HW_HANDOFF = "calculator.hwdef" *) (* ORIG_REF_NAME = "calculator" *) 
module top_calculator_0_0_calculator
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
  wire NLW_complement_0_A2_UNCONNECTED;
  wire NLW_complement_0_A3_UNCONNECTED;
  wire NLW_complement_1_A3_UNCONNECTED;
  wire NLW_complement_1_Y3_UNCONNECTED;
  wire NLW_complement_2_A2_UNCONNECTED;
  wire NLW_complement_2_A3_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "calculator_complement_0_0,complement,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
  top_calculator_0_0_calculator_complement_0_0 complement_0
       (.A0(M0),
        .A1(M1),
        .A2(NLW_complement_0_A2_UNCONNECTED),
        .A3(NLW_complement_0_A3_UNCONNECTED),
        .COMP(SGN_M),
        .Y0(complement_0_Y0),
        .Y1(complement_0_Y1),
        .Y2(complement_0_Y2),
        .Y3(complement_0_Y3));
  (* CHECK_LICENSE_TYPE = "calculator_complement_1_0,complement,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
  top_calculator_0_0_calculator_complement_1_0 complement_1
       (.A0(full_adder_4_bit_0_S0),
        .A1(full_adder_4_bit_0_S1),
        .A2(full_adder_4_bit_0_S2),
        .A3(NLW_complement_1_A3_UNCONNECTED),
        .COMP(SGN_S),
        .Y0(S0),
        .Y1(S1),
        .Y2(S2),
        .Y3(NLW_complement_1_Y3_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "calculator_complement_2_0,complement,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
  top_calculator_0_0_calculator_complement_2_0 complement_2
       (.A0(N0),
        .A1(N1),
        .A2(NLW_complement_2_A2_UNCONNECTED),
        .A3(NLW_complement_2_A3_UNCONNECTED),
        .COMP(SGN_N),
        .Y0(complement_2_Y0),
        .Y1(complement_2_Y1),
        .Y2(complement_2_Y2),
        .Y3(complement_2_Y3));
  (* CHECK_LICENSE_TYPE = "calculator_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  top_calculator_0_0_calculator_full_adder_4_bit_0_0 full_adder_4_bit_0
       (.A0(complement_0_Y0),
        .A1(complement_0_Y1),
        .A2(complement_0_Y2),
        .A3(complement_0_Y3),
        .B0(complement_2_Y0),
        .B1(complement_2_Y1),
        .B2(complement_2_Y2),
        .B3(complement_2_Y3),
        .CI(NLW_full_adder_4_bit_0_CI_UNCONNECTED),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(full_adder_4_bit_0_S0),
        .S1(full_adder_4_bit_0_S1),
        .S2(full_adder_4_bit_0_S2),
        .S3(SGN_S));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_complement_0_0,complement,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "calculator_complement_0_0" *) 
(* X_CORE_INFO = "complement,Vivado 2016.3" *) 
module top_calculator_0_0_calculator_complement_0_0
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
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire NLW_inst_A2_UNCONNECTED;
  wire NLW_inst_A3_UNCONNECTED;

  (* HW_HANDOFF = "complement.hwdef" *) 
  top_calculator_0_0_complement__xdcDup__1 inst
       (.A0(A0),
        .A1(A1),
        .A2(NLW_inst_A2_UNCONNECTED),
        .A3(NLW_inst_A3_UNCONNECTED),
        .COMP(COMP),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_complement_1_0,complement,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "calculator_complement_1_0" *) 
(* X_CORE_INFO = "complement,Vivado 2016.3" *) 
module top_calculator_0_0_calculator_complement_1_0
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
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire NLW_inst_A3_UNCONNECTED;
  wire NLW_inst_Y3_UNCONNECTED;

  (* HW_HANDOFF = "complement.hwdef" *) 
  top_calculator_0_0_complement__xdcDup__2 inst
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(NLW_inst_A3_UNCONNECTED),
        .COMP(COMP),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(NLW_inst_Y3_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_complement_2_0,complement,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "calculator_complement_2_0" *) 
(* X_CORE_INFO = "complement,Vivado 2016.3" *) 
module top_calculator_0_0_calculator_complement_2_0
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
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire NLW_inst_A2_UNCONNECTED;
  wire NLW_inst_A3_UNCONNECTED;

  (* HW_HANDOFF = "complement.hwdef" *) 
  top_calculator_0_0_complement inst
       (.A0(A0),
        .A1(A1),
        .A2(NLW_inst_A2_UNCONNECTED),
        .A3(NLW_inst_A3_UNCONNECTED),
        .COMP(COMP),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule

(* CHECK_LICENSE_TYPE = "calculator_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "calculator_full_adder_4_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module top_calculator_0_0_calculator_full_adder_4_bit_0_0
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
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire NLW_inst_CI_UNCONNECTED;
  wire NLW_inst_CO_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_4_bit.hwdef" *) 
  top_calculator_0_0_full_adder_4_bit inst
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule

(* HW_HANDOFF = "complement.hwdef" *) (* ORIG_REF_NAME = "complement" *) 
module top_calculator_0_0_complement
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
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;
  wire xup_xor2_2_y;
  wire xup_xor2_3_y;
  wire NLW_full_adder_4_bit_0_A1_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_A2_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_A3_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;
  wire NLW_xup_xor2_2_a_UNCONNECTED;
  wire NLW_xup_xor2_3_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  top_calculator_0_0_complement_full_adder_4_bit_0_0 full_adder_4_bit_0
       (.A0(COMP),
        .A1(NLW_full_adder_4_bit_0_A1_UNCONNECTED),
        .A2(NLW_full_adder_4_bit_0_A2_UNCONNECTED),
        .A3(NLW_full_adder_4_bit_0_A3_UNCONNECTED),
        .B0(xup_xor2_0_y),
        .B1(xup_xor2_1_y),
        .B2(xup_xor2_2_y),
        .B3(xup_xor2_3_y),
        .CI(NLW_full_adder_4_bit_0_CI_UNCONNECTED),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(Y0),
        .S1(Y1),
        .S2(Y2),
        .S3(Y3));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_0_0 xup_xor2_0
       (.a(A0),
        .b(COMP),
        .y(xup_xor2_0_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_1_0 xup_xor2_1
       (.a(A1),
        .b(COMP),
        .y(xup_xor2_1_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_2_0 xup_xor2_2
       (.a(NLW_xup_xor2_2_a_UNCONNECTED),
        .b(COMP),
        .y(xup_xor2_2_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_3_0 xup_xor2_3
       (.a(NLW_xup_xor2_3_a_UNCONNECTED),
        .b(COMP),
        .y(xup_xor2_3_y));
endmodule

(* HW_HANDOFF = "complement.hwdef" *) (* ORIG_REF_NAME = "complement" *) 
module top_calculator_0_0_complement__xdcDup__1
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
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;
  wire xup_xor2_2_y;
  wire xup_xor2_3_y;
  wire NLW_full_adder_4_bit_0_A1_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_A2_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_A3_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;
  wire NLW_xup_xor2_2_a_UNCONNECTED;
  wire NLW_xup_xor2_3_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  top_calculator_0_0_complement_full_adder_4_bit_0_0__xdcDup__1 full_adder_4_bit_0
       (.A0(COMP),
        .A1(NLW_full_adder_4_bit_0_A1_UNCONNECTED),
        .A2(NLW_full_adder_4_bit_0_A2_UNCONNECTED),
        .A3(NLW_full_adder_4_bit_0_A3_UNCONNECTED),
        .B0(xup_xor2_0_y),
        .B1(xup_xor2_1_y),
        .B2(xup_xor2_2_y),
        .B3(xup_xor2_3_y),
        .CI(NLW_full_adder_4_bit_0_CI_UNCONNECTED),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(Y0),
        .S1(Y1),
        .S2(Y2),
        .S3(Y3));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_0_0__3 xup_xor2_0
       (.a(A0),
        .b(COMP),
        .y(xup_xor2_0_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_1_0__3 xup_xor2_1
       (.a(A1),
        .b(COMP),
        .y(xup_xor2_1_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_2_0__3 xup_xor2_2
       (.a(NLW_xup_xor2_2_a_UNCONNECTED),
        .b(COMP),
        .y(xup_xor2_2_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_3_0__3 xup_xor2_3
       (.a(NLW_xup_xor2_3_a_UNCONNECTED),
        .b(COMP),
        .y(xup_xor2_3_y));
endmodule

(* HW_HANDOFF = "complement.hwdef" *) (* ORIG_REF_NAME = "complement" *) 
module top_calculator_0_0_complement__xdcDup__2
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
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;
  wire xup_xor2_2_y;
  wire NLW_full_adder_4_bit_0_A1_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_A2_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_A3_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_B3_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_S3_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
  top_calculator_0_0_complement_full_adder_4_bit_0_0__xdcDup__2 full_adder_4_bit_0
       (.A0(COMP),
        .A1(NLW_full_adder_4_bit_0_A1_UNCONNECTED),
        .A2(NLW_full_adder_4_bit_0_A2_UNCONNECTED),
        .A3(NLW_full_adder_4_bit_0_A3_UNCONNECTED),
        .B0(xup_xor2_0_y),
        .B1(xup_xor2_1_y),
        .B2(xup_xor2_2_y),
        .B3(NLW_full_adder_4_bit_0_B3_UNCONNECTED),
        .CI(NLW_full_adder_4_bit_0_CI_UNCONNECTED),
        .CO(NLW_full_adder_4_bit_0_CO_UNCONNECTED),
        .S0(Y0),
        .S1(Y1),
        .S2(Y2),
        .S3(NLW_full_adder_4_bit_0_S3_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_0_0__4 xup_xor2_0
       (.a(A0),
        .b(COMP),
        .y(xup_xor2_0_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_1_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_1_0__4 xup_xor2_1
       (.a(A1),
        .b(COMP),
        .y(xup_xor2_1_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_2_0__4 xup_xor2_2
       (.a(A2),
        .b(COMP),
        .y(xup_xor2_2_y));
endmodule

(* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_full_adder_4_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module top_calculator_0_0_complement_full_adder_4_bit_0_0
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
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire NLW_inst_A1_UNCONNECTED;
  wire NLW_inst_A2_UNCONNECTED;
  wire NLW_inst_A3_UNCONNECTED;
  wire NLW_inst_CI_UNCONNECTED;
  wire NLW_inst_CO_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_4_bit.hwdef" *) 
  top_calculator_0_0_full_adder_4_bit__xdcDup__3 inst
       (.A0(A0),
        .A1(NLW_inst_A1_UNCONNECTED),
        .A2(NLW_inst_A2_UNCONNECTED),
        .A3(NLW_inst_A3_UNCONNECTED),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule

(* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_full_adder_4_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module top_calculator_0_0_complement_full_adder_4_bit_0_0__xdcDup__1
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
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire NLW_inst_A1_UNCONNECTED;
  wire NLW_inst_A2_UNCONNECTED;
  wire NLW_inst_A3_UNCONNECTED;
  wire NLW_inst_CI_UNCONNECTED;
  wire NLW_inst_CO_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_4_bit.hwdef" *) 
  top_calculator_0_0_full_adder_4_bit__xdcDup__1 inst
       (.A0(A0),
        .A1(NLW_inst_A1_UNCONNECTED),
        .A2(NLW_inst_A2_UNCONNECTED),
        .A3(NLW_inst_A3_UNCONNECTED),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule

(* CHECK_LICENSE_TYPE = "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_full_adder_4_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_4_bit,Vivado 2016.3" *) 
module top_calculator_0_0_complement_full_adder_4_bit_0_0__xdcDup__2
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
  wire B0;
  wire B1;
  wire B2;
  wire S0;
  wire S1;
  wire S2;
  wire NLW_inst_A1_UNCONNECTED;
  wire NLW_inst_A2_UNCONNECTED;
  wire NLW_inst_A3_UNCONNECTED;
  wire NLW_inst_B3_UNCONNECTED;
  wire NLW_inst_CI_UNCONNECTED;
  wire NLW_inst_CO_UNCONNECTED;
  wire NLW_inst_S3_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_4_bit.hwdef" *) 
  top_calculator_0_0_full_adder_4_bit__xdcDup__2 inst
       (.A0(A0),
        .A1(NLW_inst_A1_UNCONNECTED),
        .A2(NLW_inst_A2_UNCONNECTED),
        .A3(NLW_inst_A3_UNCONNECTED),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(NLW_inst_B3_UNCONNECTED),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(NLW_inst_S3_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_complement_xup_xor2_0_0
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
module top_calculator_0_0_complement_xup_xor2_0_0__3
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
module top_calculator_0_0_complement_xup_xor2_0_0__4
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
module top_calculator_0_0_complement_xup_xor2_1_0
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
module top_calculator_0_0_complement_xup_xor2_1_0__3
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
module top_calculator_0_0_complement_xup_xor2_1_0__4
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
module top_calculator_0_0_complement_xup_xor2_2_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_2_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_complement_xup_xor2_2_0__3
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_2_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_2_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_complement_xup_xor2_2_0__4
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
module top_calculator_0_0_complement_xup_xor2_3_0
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xup_xor2_3_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_complement_xup_xor2_3_0__3
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit
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
  wire S;
  wire xup_inv_0_y;
  wire xup_xor2_0_y;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__1
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
  wire CO;
  wire S;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_a_UNCONNECTED;
  wire NLW_xup_xnor2_0_b_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__16 xup_nand2_1
       (.a(NLW_xup_nand2_1_a_UNCONNECTED),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__16 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__16 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(NLW_xup_xnor2_0_b_UNCONNECTED),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__16 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__10
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_b_UNCONNECTED;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__25 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__25 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__25 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(NLW_xup_nand2_1_b_UNCONNECTED),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__25 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__25 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__11
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_b_UNCONNECTED;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__26 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__26 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__26 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(NLW_xup_nand2_1_b_UNCONNECTED),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__26 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__26 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__12
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

  wire B;
  wire CI;
  wire S;
  wire xup_inv_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__27 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__27 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__27 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__13
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
  wire CO;
  wire S;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_a_UNCONNECTED;
  wire NLW_xup_xnor2_0_b_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__28 xup_nand2_1
       (.a(NLW_xup_nand2_1_a_UNCONNECTED),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__28 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__28 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(NLW_xup_xnor2_0_b_UNCONNECTED),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__28 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__14
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__29 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__29 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__29 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__29 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__29 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__29 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__15
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__30 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__30 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__30 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__30 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__30 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__30 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__2
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_b_UNCONNECTED;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__17 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__17 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__17 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(NLW_xup_nand2_1_b_UNCONNECTED),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__17 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__17 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__3
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_b_UNCONNECTED;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__18 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__18 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__18 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(NLW_xup_nand2_1_b_UNCONNECTED),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__18 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__18 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__4
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

  wire B;
  wire CI;
  wire S;
  wire xup_inv_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__19 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__19 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__19 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__5
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
  wire CO;
  wire S;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_a_UNCONNECTED;
  wire NLW_xup_xnor2_0_b_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__20 xup_nand2_1
       (.a(NLW_xup_nand2_1_a_UNCONNECTED),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__20 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__20 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(NLW_xup_xnor2_0_b_UNCONNECTED),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__20 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__6
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_b_UNCONNECTED;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__21 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__21 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__21 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(NLW_xup_nand2_1_b_UNCONNECTED),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__21 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__21 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__7
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

  wire B;
  wire CI;
  wire S;
  wire xup_inv_0_y;
  wire xup_xor2_0_y;
  wire NLW_xup_xor2_0_a_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__22 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__22 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__22 xup_xor2_0
       (.a(NLW_xup_xor2_0_a_UNCONNECTED),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__9
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
  wire CO;
  wire S;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;
  wire NLW_xup_nand2_1_a_UNCONNECTED;
  wire NLW_xup_xnor2_0_b_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__24 xup_nand2_1
       (.a(NLW_xup_nand2_1_a_UNCONNECTED),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__24 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__24 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(NLW_xup_xnor2_0_b_UNCONNECTED),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__24 xup_xor2_0
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__17
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__18
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__19
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__21
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__22
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__25
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__26
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__27
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__29
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__30
   (a,
    y);
  input a;
  output y;

  wire y;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__17
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
    .INIT(4'hD)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__18
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
    .INIT(4'hD)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__21
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
    .INIT(4'hD)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__25
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
    .INIT(4'hD)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__26
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
    .INIT(4'hD)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__29
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
    .INIT(4'hD)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__30
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
    .INIT(4'hD)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__16
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__17
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__18
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__20
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__21
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__24
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__25
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__26
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__28
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__29
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
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__30
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
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_2_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__16
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__20
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__24
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__28
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__29
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__30
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

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__16
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__17
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__18
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__19
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__20
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__21
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__22
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__24
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__25
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__26
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__27
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__28
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xnor2_0_0" *) 
(* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__29
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__30
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

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__16
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__17
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__18
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__19
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__20
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__21
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__22
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__24
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__25
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__26
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__27
   (a,
    b,
    y);
  input a;
  input b;
  output y;

  wire b;

  assign y = b;
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_xor2_0_0" *) 
(* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__28
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__29
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__30
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

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_4_bit" *) 
module top_calculator_0_0_full_adder_4_bit
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
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire full_adder_1_bit_0_CO;
  wire full_adder_1_bit_1_CO;
  wire full_adder_1_bit_2_CO;
  wire NLW_full_adder_1_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_1_bit_3_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(NLW_full_adder_1_bit_0_CI_UNCONNECTED),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(NLW_full_adder_1_bit_3_CO_UNCONNECTED),
        .S(S3));
endmodule

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_4_bit" *) 
module top_calculator_0_0_full_adder_4_bit__xdcDup__1
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
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire full_adder_1_bit_0_CO;
  wire full_adder_1_bit_1_CO;
  wire full_adder_1_bit_2_CO;
  wire NLW_full_adder_1_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_1_bit_1_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_2_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_3_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_3_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__1 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(NLW_full_adder_1_bit_0_CI_UNCONNECTED),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__1 full_adder_1_bit_1
       (.A(NLW_full_adder_1_bit_1_A_UNCONNECTED),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__1 full_adder_1_bit_2
       (.A(NLW_full_adder_1_bit_2_A_UNCONNECTED),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__1 full_adder_1_bit_3
       (.A(NLW_full_adder_1_bit_3_A_UNCONNECTED),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(NLW_full_adder_1_bit_3_CO_UNCONNECTED),
        .S(S3));
endmodule

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_4_bit" *) 
module top_calculator_0_0_full_adder_4_bit__xdcDup__2
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
  wire B0;
  wire B1;
  wire B2;
  wire S0;
  wire S1;
  wire S2;
  wire full_adder_1_bit_0_CO;
  wire full_adder_1_bit_1_CO;
  wire NLW_full_adder_1_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_1_bit_1_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_2_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_2_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__2 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(NLW_full_adder_1_bit_0_CI_UNCONNECTED),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__2 full_adder_1_bit_1
       (.A(NLW_full_adder_1_bit_1_A_UNCONNECTED),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__2 full_adder_1_bit_2
       (.A(NLW_full_adder_1_bit_2_A_UNCONNECTED),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(NLW_full_adder_1_bit_2_CO_UNCONNECTED),
        .S(S2));
endmodule

(* HW_HANDOFF = "full_adder_4_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_4_bit" *) 
module top_calculator_0_0_full_adder_4_bit__xdcDup__3
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
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire full_adder_1_bit_0_CO;
  wire full_adder_1_bit_1_CO;
  wire full_adder_1_bit_2_CO;
  wire NLW_full_adder_1_bit_0_CI_UNCONNECTED;
  wire NLW_full_adder_1_bit_1_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_2_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_3_A_UNCONNECTED;
  wire NLW_full_adder_1_bit_3_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__3 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(NLW_full_adder_1_bit_0_CI_UNCONNECTED),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__3 full_adder_1_bit_1
       (.A(NLW_full_adder_1_bit_1_A_UNCONNECTED),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__3 full_adder_1_bit_2
       (.A(NLW_full_adder_1_bit_2_A_UNCONNECTED),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__3 full_adder_1_bit_3
       (.A(NLW_full_adder_1_bit_3_A_UNCONNECTED),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(NLW_full_adder_1_bit_3_CO_UNCONNECTED),
        .S(S3));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0
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
  wire CO;
  wire S;
  wire NLW_inst_CI_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__13 inst
       (.A(A),
        .B(B),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__1
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
  wire CO;
  wire S;
  wire NLW_inst_CI_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__1 inst
       (.A(A),
        .B(B),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__2
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
  wire CO;
  wire S;
  wire NLW_inst_CI_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__5 inst
       (.A(A),
        .B(B),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_0" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__3
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
  wire CO;
  wire S;
  wire NLW_inst_CI_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__9 inst
       (.A(A),
        .B(B),
        .CI(NLW_inst_CI_UNCONNECTED),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_1" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1
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
  top_calculator_0_0_full_adder_1_bit__xdcDup__14 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_1" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__1
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire NLW_inst_A_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__2 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_1" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__2
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire NLW_inst_A_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__6 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_1" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__3
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire NLW_inst_A_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__10 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_2" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2
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
  top_calculator_0_0_full_adder_1_bit__xdcDup__15 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_2" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__1
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire NLW_inst_A_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__3 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_2" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__2
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

  wire B;
  wire CI;
  wire S;
  wire NLW_inst_A_UNCONNECTED;
  wire NLW_inst_CO_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__7 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_2" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__3
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

  wire B;
  wire CI;
  wire CO;
  wire S;
  wire NLW_inst_A_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__11 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_3" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3
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
  wire S;
  wire NLW_inst_CO_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_3" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__1
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

  wire B;
  wire CI;
  wire S;
  wire NLW_inst_A_UNCONNECTED;
  wire NLW_inst_CO_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__4 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_3" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__3
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

  wire B;
  wire CI;
  wire S;
  wire NLW_inst_A_UNCONNECTED;
  wire NLW_inst_CO_UNCONNECTED;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__12 inst
       (.A(NLW_inst_A_UNCONNECTED),
        .B(B),
        .CI(CI),
        .CO(NLW_inst_CO_UNCONNECTED),
        .S(S));
endmodule

(* ECO_CHECKSUM = "3c51bcb7" *) 
(* NotValidForBitStream *)
module top_display
   (SGN_M,
    M1,
    M0,
    SGN_N,
    N1,
    N0,
    CLK,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    DP,
    AN3,
    AN2,
    AN1,
    AN0);
  input SGN_M;
  input M1;
  input M0;
  input SGN_N;
  input N1;
  input N0;
  input CLK;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output DP;
  output AN3;
  output AN2;
  output AN1;
  output AN0;

  wire AN0;
  wire AN0_OBUF;
  wire AN1;
  wire AN1_OBUF;
  wire AN2;
  wire AN2_OBUF;
  wire AN3;
  wire AN3_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire DP;
  wire M0;
  wire M0_IBUF;
  wire M1;
  wire M1_IBUF;
  wire N0;
  wire N0_IBUF;
  wire N1;
  wire N1_IBUF;
  wire SGN_M;
  wire SGN_M_IBUF;
  wire SGN_N;
  wire SGN_N_IBUF;
  wire a;
  wire b;
  wire b_OBUF;
  wire c;
  wire c_OBUF;
  wire d;
  wire d_OBUF;
  wire e;
  wire e_OBUF;
  wire f;
  wire f_OBUF;
  wire g;
  wire g_OBUF;

  OBUF AN0_OBUF_inst
       (.I(AN0_OBUF),
        .O(AN0));
  OBUF AN1_OBUF_inst
       (.I(AN1_OBUF),
        .O(AN1));
  OBUF AN2_OBUF_inst
       (.I(AN2_OBUF),
        .O(AN2));
  OBUF AN3_OBUF_inst
       (.I(AN3_OBUF),
        .O(AN3));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  IBUF M0_IBUF_inst
       (.I(M0),
        .O(M0_IBUF));
  IBUF M1_IBUF_inst
       (.I(M1),
        .O(M1_IBUF));
  IBUF N0_IBUF_inst
       (.I(N0),
        .O(N0_IBUF));
  IBUF N1_IBUF_inst
       (.I(N1),
        .O(N1_IBUF));
  IBUF SGN_M_IBUF_inst
       (.I(SGN_M),
        .O(SGN_M_IBUF));
  IBUF SGN_N_IBUF_inst
       (.I(SGN_N),
        .O(SGN_N_IBUF));
  top_ver U1
       (.AN0(AN0_OBUF),
        .AN1(AN1_OBUF),
        .AN2(AN2_OBUF),
        .AN3(AN3_OBUF),
        .CLK(CLK_IBUF),
        .M0(M0_IBUF),
        .M1(M1_IBUF),
        .N0(N0_IBUF),
        .N1(N1_IBUF),
        .SGN_M(SGN_M_IBUF),
        .SGN_N(SGN_N_IBUF),
        .b_OBUF(b_OBUF),
        .c_OBUF(c_OBUF),
        .d_OBUF(d_OBUF),
        .e_OBUF(e_OBUF),
        .f_OBUF(f_OBUF),
        .g_OBUF(g_OBUF));
  OBUF a_OBUF_inst
       (.I(d_OBUF),
        .O(a));
  OBUF b_OBUF_inst
       (.I(b_OBUF),
        .O(b));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  OBUF e_OBUF_inst
       (.I(e_OBUF),
        .O(e));
  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  OBUF g_OBUF_inst
       (.I(g_OBUF),
        .O(g));
endmodule

(* CHECK_LICENSE_TYPE = "top_two_four_decoder_0_0,two_four_decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "two_four_decoder,Vivado 2016.3" *) 
module top_two_four_decoder_0_0
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

  wire [1:0]A;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  (* HW_HANDOFF = "two_four_decoder.hwdef" *) 
  top_two_four_decoder_0_0_two_four_decoder inst
       (.A(A),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3));
endmodule

(* HW_HANDOFF = "two_four_decoder.hwdef" *) (* ORIG_REF_NAME = "two_four_decoder" *) 
module top_two_four_decoder_0_0_two_four_decoder
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

  wire [1:0]A;
  wire A0_Dout;
  wire A1_Dout;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire [1:1]NLW_A0_Din_UNCONNECTED;
  wire [0:0]NLW_A1_Din_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "two_four_decoder_xlslice_0_0,xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xlslice_0_0 A0
       (.Din({NLW_A0_Din_UNCONNECTED[1],A[0]}),
        .Dout(A0_Dout));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xlslice_1_0,xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xlslice_1_0 A1
       (.Din({A[1],NLW_A1_Din_UNCONNECTED[0]}),
        .Dout(A1_Dout));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_0_0,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xup_and2_0_0 xup_and2_0
       (.a(xup_inv_0_y),
        .b(xup_inv_1_y),
        .y(Y0));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_1_0,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xup_and2_1_0 xup_and2_1
       (.a(xup_inv_1_y),
        .b(A0_Dout),
        .y(Y1));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_0_1,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xup_and2_0_1 xup_and2_2
       (.a(A1_Dout),
        .b(xup_inv_0_y),
        .y(Y2));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_0_2,xup_and2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xup_and2_0_2 xup_and2_3
       (.a(A0_Dout),
        .b(A1_Dout),
        .y(Y3));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xup_inv_0_0 xup_inv_0
       (.a(A0_Dout),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xup_inv_1_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xup_inv_1_0 xup_inv_1
       (.a(A1_Dout),
        .y(xup_inv_1_y));
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xlslice_0_0,xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xlslice_0_0" *) 
(* X_CORE_INFO = "xlslice,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xlslice_0_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xlslice_1_0,xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xlslice_1_0" *) 
(* X_CORE_INFO = "xlslice,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xlslice_1_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_0_0,xup_and2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xup_and2_0_0" *) 
(* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xup_and2_0_0
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
    .INIT(4'h1)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_0_1,xup_and2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xup_and2_0_1" *) 
(* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xup_and2_0_1
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
    .INIT(4'h2)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_0_2,xup_and2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xup_and2_0_2" *) 
(* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xup_and2_0_2
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
    .INIT(4'h8)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xup_and2_1_0,xup_and2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xup_and2_1_0" *) 
(* X_CORE_INFO = "xup_and2,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xup_and2_1_0
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
    .INIT(4'h4)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xup_inv_0_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xup_inv_0_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xup_inv_0_0
   (a,
    y);
  input a;
  output y;

  wire a;

  assign y = a;
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xup_inv_1_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xup_inv_1_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xup_inv_1_0
   (a,
    y);
  input a;
  output y;

  wire a;

  assign y = a;
endmodule

module top_ver
   (AN0,
    AN1,
    AN2,
    AN3,
    g_OBUF,
    f_OBUF,
    e_OBUF,
    c_OBUF,
    b_OBUF,
    d_OBUF,
    CLK,
    M0,
    M1,
    N0,
    N1,
    SGN_M,
    SGN_N);
  output AN0;
  output AN1;
  output AN2;
  output AN3;
  output g_OBUF;
  output f_OBUF;
  output e_OBUF;
  output c_OBUF;
  output b_OBUF;
  output d_OBUF;
  input CLK;
  input M0;
  input M1;
  input N0;
  input N1;
  input SGN_M;
  input SGN_N;

  wire AN0;
  wire AN1;
  wire AN2;
  wire AN3;
  wire CLK;
  wire M0;
  wire M1;
  wire N0;
  wire N1;
  wire SGN_M;
  wire SGN_N;
  wire [3:0]Y;
  wire b_OBUF;
  wire c_OBUF;
  wire d_OBUF;
  wire e_OBUF;
  wire f_OBUF;
  wire g_OBUF;

  (* HW_HANDOFF = "top.hwdef" *) 
  top U1
       (.AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .CLK(CLK),
        .M0(M0),
        .M1(M1),
        .N0(N0),
        .N1(N1),
        .SGN_M(SGN_M),
        .SGN_N(SGN_N),
        .Y(Y));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h94FF)) 
    a_OBUF_inst_i_1
       (.I0(Y[1]),
        .I1(Y[2]),
        .I2(Y[0]),
        .I3(Y[3]),
        .O(d_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE0FF)) 
    b_OBUF_inst_i_1
       (.I0(Y[0]),
        .I1(Y[1]),
        .I2(Y[2]),
        .I3(Y[3]),
        .O(b_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h90FF)) 
    c_OBUF_inst_i_1
       (.I0(Y[0]),
        .I1(Y[2]),
        .I2(Y[1]),
        .I3(Y[3]),
        .O(c_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF2FF)) 
    e_OBUF_inst_i_1
       (.I0(Y[2]),
        .I1(Y[1]),
        .I2(Y[0]),
        .I3(Y[3]),
        .O(e_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB2FF)) 
    f_OBUF_inst_i_1
       (.I0(Y[0]),
        .I1(Y[2]),
        .I2(Y[1]),
        .I3(Y[3]),
        .O(f_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    g_OBUF_inst_i_1
       (.I0(Y[2]),
        .I1(Y[1]),
        .I2(Y[3]),
        .O(g_OBUF));
endmodule

(* CHECK_LICENSE_TYPE = "top_xlconcat_0_0,xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
module top_xlconcat_0_0
   (In0,
    In1,
    In2,
    In3,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  output [3:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;

  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "top_xlconcat_1_0,xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
module top_xlconcat_0_1
   (In0,
    In1,
    In2,
    In3,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  output [3:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "top_xlconcat_1_0,xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
module top_xlconcat_1_0
   (In0,
    In1,
    In2,
    In3,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  output [3:0]dout;

  wire [0:0]In3;

  assign dout[3] = In3;
endmodule

(* CHECK_LICENSE_TYPE = "top_xlconcat_1_0,xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
module top_xlconcat_2_0
   (In0,
    In1,
    In2,
    In3,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  output [3:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* CHECK_LICENSE_TYPE = "top_xup_4_to_1_mux_vector_0_0,xup_4_to_1_mux_vector,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_4_to_1_mux_vector,Vivado 2016.3" *) 
module top_xup_4_to_1_mux_vector_0_0
   (a,
    b,
    c,
    d,
    sel,
    y);
  input [3:0]a;
  input [3:0]b;
  input [3:0]c;
  input [3:0]d;
  input [1:0]sel;
  output [3:0]y;

  wire [3:0]a;
  wire [3:0]b;
  wire [3:0]c;
  wire [3:0]d;
  wire [1:0]sel;
  wire [3:0]y;
  wire [3:2]NLW_inst_a_UNCONNECTED;
  wire [3:2]NLW_inst_b_UNCONNECTED;
  wire [2:0]NLW_inst_c_UNCONNECTED;
  wire [3:3]NLW_inst_d_UNCONNECTED;

  top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector inst
       (.a({NLW_inst_a_UNCONNECTED[3:2],a[1:0]}),
        .b({NLW_inst_b_UNCONNECTED[3:2],b[1:0]}),
        .c({c[3],NLW_inst_c_UNCONNECTED[2:0]}),
        .d({NLW_inst_d_UNCONNECTED[3],d[2:0]}),
        .sel(sel),
        .y(y));
endmodule

(* ORIG_REF_NAME = "xup_4_to_1_mux_vector" *) 
module top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector
   (y,
    d,
    b,
    sel,
    c,
    a);
  output [3:0]y;
  input [3:0]d;
  input [3:0]b;
  input [1:0]sel;
  input [3:0]c;
  input [3:0]a;

  wire [3:0]a;
  wire [3:0]b;
  wire [3:0]c;
  wire [3:0]d;
  wire [1:0]sel;
  wire [3:0]y;

  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    \y[0]_INST_0 
       (.I0(d[0]),
        .I1(b[0]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(a[0]),
        .O(y[0]));
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    \y[1]_INST_0 
       (.I0(d[1]),
        .I1(b[1]),
        .I2(sel[0]),
        .I3(sel[1]),
        .I4(a[1]),
        .O(y[1]));
  LUT3 #(
    .INIT(8'hB0)) 
    \y[2]_INST_0 
       (.I0(d[2]),
        .I1(sel[0]),
        .I2(sel[1]),
        .O(y[2]));
  LUT3 #(
    .INIT(8'hEF)) 
    \y[3]_INST_0 
       (.I0(sel[0]),
        .I1(c[3]),
        .I2(sel[1]),
        .O(y[3]));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "2" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) 
module top_c_counter_binary_0_0_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [1:0]L;
  output THRESH0;
  output [1:0]Q;

  wire CLK;
  wire [1:0]Q;
  wire NLW_i_synth_CE_UNCONNECTED;
  wire NLW_i_synth_LOAD_UNCONNECTED;
  wire NLW_i_synth_SCLR_UNCONNECTED;
  wire NLW_i_synth_SINIT_UNCONNECTED;
  wire NLW_i_synth_SSET_UNCONNECTED;
  wire NLW_i_synth_THRESH0_UNCONNECTED;
  wire NLW_i_synth_UP_UNCONNECTED;
  wire [1:0]NLW_i_synth_L_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "2" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  top_c_counter_binary_0_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(NLW_i_synth_CE_UNCONNECTED),
        .CLK(CLK),
        .L(NLW_i_synth_L_UNCONNECTED[1:0]),
        .LOAD(NLW_i_synth_LOAD_UNCONNECTED),
        .Q(Q),
        .SCLR(NLW_i_synth_SCLR_UNCONNECTED),
        .SINIT(NLW_i_synth_SINIT_UNCONNECTED),
        .SSET(NLW_i_synth_SSET_UNCONNECTED),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(NLW_i_synth_UP_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EgsHeoOxdUxsX5gIKiaj0rabVidhYZrAC1ccO7uW1WWUY+5F26NMKfuRo2RbzpHAhKg6YWmehafX
vTPGaJRKHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z34YzyhCkqWVBd+wfHLLkUW/H60lDZ7DBcaAzQK4qK/8LgoJdsH6DZ43BtKjfZhNz/T8CrFXpTq4
lXACmrJsvh8DNPmvB7LaQhnP9Q1UWB/2BUP3fAUHMA2d2pKOqEj3XF5pbikvIPiyQENN7Kn513bC
CvwAQIx2bzxkiYX1MZc=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SSMUY5NrZw2M/7w7U4gsSjNRmWfRCxfALTKD8+8C1h91c8RWo9X4x7A5m9YG0Pa491k6Lxf7I0eD
goajxjfLKNI+buWpvfZlHEcU7678iPGqz4g94c5n80sa3TKcwpV6f+p7C93Rto4JgUHSigA3gLBN
DzpD+6xOS6P2mkrRsQs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tbb//X7l5IJljgHR/Q0swC7OpOr9LwQv6rxLgPXOMJNm5TebIkTTeQKZBlg96/x0gqqgFX19ZASr
qWxh3YL/aoYejZTUMHYF7ktggRgHydykFFfRo8xGrq33bJ1LOeuIQOZyZjZTB9zCoo8CMX8wCtcA
0ovBA4GCY5VFNLy/1whSrZs8R7CLSdrlxUJTTCXjF0f+Tf8OyjSS2VGyZfJbmSNnFJJuItoBbUO0
6qdcZfL3eQrA6y/AWPiFhGILWhBAvVGEahvuOHYDa8S1IUccHMOxQJtq0Y1UqRNB/qNmlHUKL/iH
IEr89vPUXnsfHTV4I+xFieSKz2LwzLXsAys4Yw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kfJNFYIhzZvlPwb4KI2aCH6Fx40tZkxF1Q5EfJSPdq2JohdV53Dn2x9HbgUIqvISu5UuFwT8R+oV
/B66+AOKivg+iSCvhh+HSv/oQNtgHeIG5xMgV8d3jXD9G4abV/g3jySuWrjXT9Z0IqvTQjqmKOR2
9nVDANRSJiSyM0Y275L4ylvrdjL8Yim0M/e9k+N+kNYfcQAzQYd/lfTmcdkn74/0qt030HQ2LxSy
A+NwqYXBuB4VkkCPvigd/s63XQNHxeHfRZs7q0iWos8Jgu9uI1zA6ZN4O4Cts2V9BF+SRqJdzrLy
1t5mzK/i0gmdsb8ds3y4b3AMet8PeT7w9sZc/A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MzDVqgEdc7DZdlm2cItrUQlry/9kVuVoApPpWX7zga11t+tLgAqain8Fhjl9Q1hFV6Rwv6WUUyOW
dL6uK1Pj4Tc0mqHyEMvAW2tHA/QcK0pphBofEd8Sd2oRBJ0l+XghTz/o5eIVzoxDF0h6fERIgAw6
PZK1iaI5d5osnKGqaJVhxQWf/M3XiOn9jCOGskyvtqNiiXNki/oAWPJNgm3Hb599C3ugMxNKGT5x
H76UXyZbcrmrFSkYz6XydewUEOb2eruDdZtf4QmJWyJ+WqAHgjSB7kcn3UfysW1iW59u7oxSpMgU
oLKWKFtXGSzN2+DVJ91qu7hIDmX5Q2X//JK4Cg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
G4QW8WHANOOFn7KByaPNBljev/3t0kY9xh3cKCcUNV5px2ps/9dMBBNBTUmKnycYn0DTIsLjVerd
Cr+5SYoTdjEL9v/UDoWE5c21rdXBt8jgdbuK1lQMcNtvJl2McXdu6eoR/Z8TzxpsNT4kVc0mqVGU
r+QdXNfNBIDJpDiL3CDKHw+w6pmNCBDiXdV93tifgCPCy9XT1eC63SOiwBpjFTxrQraMqJ4hZuwv
9RzFQlreVni0pYELU5CwsDK87JlA0bafLR/wFq0MN13iBPVp+9xMiwyH+Xp+DDxOzRtR4Rwm2/tG
NkdxrXieyS3UbNN/n75D01KdHG9XRp1Dq/YzXw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
mZ3yF2pVwU8Vz4dWKx5jPxBQe1L2nZixFsjtu/7QcSsfaziF8BuJOpY9+6QNWOX7vVkvwep7jSqv
pKfYXb3Q5c/4TT+/LlxXAqFy0WqAqUknwyKX3N3ZB+tdzh9GZ9frsQmBDrV1Ku4C6TcYe1o1BvG/
bDuOkHbZee1pNrInn7f/46zEzgXJpFqgZaoXSFo1tF8/0upzvJeoH8Uqm2rufMnzYR76mWRtVz8K
hmMuNee7119+1BRwAGAMAqPPro/LVbyGgf/G6eSmMuSz+IXRFmXr/UiueeXuCjhqTpYX4z4D/HlD
ukkyg/DLWQpFl00XZ1bJpuW/gnJND26e13ExDg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4144)
`pragma protect data_block
J6HlExHvl2Hn/erbL1iB0dSAJjYznqb747F13n6TRiVl8TmQPxG/gsekTYtnsggpeGY62DNS3Yqs
Gi+HeTEZNlWben2PpWSVQn8SQlXieKnvxN6Eb5uyb0RezvyzD+/5t7g5F/vYOMH+/8WDg77HfWvJ
Mqob4EaEnCrhfXHnhj2MJshHeDg8vvIa9PWvdrHqhRW6jK/X3Lv8QCy70BqATmQdbIEobaZ1e9ok
k0x8nhO66art7BpY/PHXZKFB8bye9gWdZfW2FHfkHs5ay5c5pQ6ONnzhdalbJ56zxS7eDPVFK6vp
ZQvllZ6SiJvGo46Mdt28k+rb88ySlS3sDYSwH/dESbme+TdmpI79jQ7OO4ugnZ1e+j4Pd7bNKHuW
yX4dvppcKzC7GDegwoBkAS+b/FfF1qKS+Mi/v8TbP8zty4FvYscSRCavrMpV/t07VRKhqGWX5BRr
x8FU8gfuoLmEXgTNlTxnYQQoKLWzx76ePFJDZ1RwEvvD9vBho3lJpBg9wIh5R8XRP8vDaiYXkVZ6
SiMTSoYkHdPITdkVRdilp4YKbGCqZQjnfZjdgIkpkNCLNla3wcDZYleGzYJWxjzcHMV6T/6Yz67k
MEzm44dnuFBy8kiSEsYYL3fpZg7dBY4k4bwcKHl4x2ceyFn7Qa6y7GY8wepeo9Ce7bjiGsqTzo8t
o5Y3FGsu6Jf+LcNZ6Uv0yyNYCdZllbrcYOS+TQtgHmYoIyh7Q2UrHKpm3SmrhUgb7KMJ+WMnkCFD
prPkW1PIAcmJn3lTYb2LR3wkbURnPBljgmmtdPehr+wjLb5u/znKU4OZImwTSJVJisTSXGoU3cYM
sh4dsedgPbHd3Ciif9pDkSdgbeznRRtbrdijeaLhmYDU6BgpzF8JzxPvXiZuGakCjJ8BnMAiaJOg
VakzRoRoPtjyCbVVOysV/dtQ4CAzgXQPrQYd/CqWFJ1uZHqiCmOCFejjMWpE3xINMfP7T1xte1UV
3TQb5gecXOJT2BP+6uuYi1770O4SiqbD6Od3P0WbmPR8APHxRxHRyTBXKZy3IW8fXVt35g+Q3+Ul
YPtNM1JLzPoD0CQk/RCBaZpFijKWwe9RyNIo/7E/XhPVB+ZF3Uv8apaMq/+ZDkfUe0WsEb1gR5Jh
Xg3LjYJD6lrUM5KTCR/5qv81WJ8CwJb7pQ6EbKxNQo8JfOtCoSX6tMK4eD0YK7E2BWmw6ClaBS2O
HiKZYBqwIzr0actzHFWdzIeOP6ddhGIB05R0Sy1WFNqd6ggk7pIpaXG0rFjjvb75NeKgnPlUpluF
J+nhCLLUmhglOhJp/EaF+1BxLOyJBmytjvH62Px1Pzbbl74XND50yrF9jajQSCZDM9xJcadz4v3Y
VVbMCPaoH2higxCSaSTZyxDYYLHgBcDCTNeQ7urh8TqcfnJ3BOvY2NiJc3e+a3SXnp5WFA/Q+JiI
WU56tFwGcZ1a9+BwALLyTye3cdGBbyv4tA1ueRXk/lWfR7zpHpb0mqOekheubDyA7PC0kHVkzST3
wXtr6gN3X5YB4z2c/YWj3Zp0atBv76l+CGiRWJoYqapJm7cFAC6qilyseYxw3gQEAN4SLYk9uRMt
ynSUpnP9jZuTmVPuhiSx15gY5BYfC74fXVtcYpHhn38Vi+Q5Lvqz5EScrNXl3Gd+s5abSl7dmqEE
bRaAX3735HP3utNkqPbE9o3/CwMetMMZONPI6FlSU9b1QUR+2MrQHzGD8Y/ed5GrZxvb0aK9NNSB
q45iZwgg6EvhSSEHSpWb2w+AbP2nQ2atJqAwqvCAHbKAMh4eM9maLtqRQVasIXVMYhaA95y26Rpx
TWVXlSWooioO6HAhvJ1fydjU1crx/MInehMC2c+SgHpmn9yXUhuYzAMzZA7ck2BfUIMIUuQgCDXD
wnxthdJ6UOoXh4n3bFDiNWky0DxzFd7S7wI7pox2NyNPuTX50GKPgOFtw7l/gnkNuQ4MvmzAFJE7
k2F313HxKajTycwgsu0w37sSPjEyoeszTNPoWKe0TJ9t+unj3zeCYLAIY3wusUFN2AgTuhaOV5yj
xxjJlogMchZKaq+6swJNEuhGK/x6buuBj4tDAcyNwiAeZIAm8OUguBFUMqwjBF7HZ7i27RgHfv89
vv/T6BytH/8ERVaJUZvBndm7xolsZKQZzUkCUOdJudG/R5BVNI0Akibvqc0x9+hCcYT+BvS8al5o
jXWob/YJypr8l+Mkso2KE56p7exR5NbrzPbDoePyKA/rx/wyzuVfqaNDQFpAjSNujpoKVhEUqOwN
dJBEkGAGY8r78u8x26uN2vR1YRPUrFzh3vWlr1tq9P5k5ezRMxDbroN/WFyA9qazXjUSACHnvtgH
AcdEUedFThGYvjjuiTfBAJ2VD0zXPe1aiYXA4goqCt0muhPeScFkZvJD6Je4DEuO7k3dQiSfMD/A
iFtr6iyh4svY7Z1hDlt8fPynxiskY3T5bMN6r8kEL9j6zI8B8narxkKZLbWUdeKiMjlK7FlXXIa9
09I5n+GLsRrNjflgOVJ+BrrXLbMUHaG1htanzulcIF2IsD/uO6aENhtfhQtN3APi1yAzKbOWTZ2N
nkxMDLLKTBw6pEEs+1YJf7UWRIFCe+G/Nm8+HTFQM4hAx17ge4DM5AbTCI7v/4srIBHCuiEPqjzX
Q9nMorIakbbh1lqXcx6vZ1e77GyUw5s0FBvovcBNucLvFHIS1iYzNcNVGPEgj3gqg7NMlZrc+HVe
Y/uBdWBd/UMwsjc6UcabN1yIOIZSTKaobvzUDtSvaAwiN+auWyYLfnRx861FKOd92xiERFYK+f/u
8Hq7Q50kjptS7VmaIPNoYRFv2tPCSFjOoLt1Z8xjpq1x7nv9ISwvMxstTimoct4pwGSu1P48ut2S
nD8L0244QDHb9VNUpsrFKvmSsS0RsEix/m1efl09IIiAE6vwFtI/Ozzjd9TEdSHsr3WnUVjz601s
pxkflFucrip1WHYnw0wbnjIKqyQlsKX7MC6jrGK5n9IiqdgbFlPjR0220qzi+8eSUcqM6uItRtxB
ZdRIXt0vBpQ+n2ZDxF8gBsJUnXqCx1ImJdEGIrUfWH4rrQM1QO28UyPEVDyryJbn9gf1g+jHHAgY
AtQPGoJeOXHCtxMkqKrWFxL7LagQXD8JqAflH+tHWx6t+d/KbHD3P92ldH/a19eYFuKaWNFYXlin
f52aO7M2uZhqrOWFhoe3AYh67ZfMfwNZxfWZuP4Urncr7bzCe+rZji69RMVNIXkvHpzp3JB8gaPq
q/S7MMpkrYbzPzxa6gEUnAdSbMhR0nDyNHgyIHwvK4ivqaY+bFNyRcFFGtRe5reXWhm/msf7f97P
fo/kHeR4WGQSVdA6MAjw2b7o9DS3/r3SS2KJ5+U0toATawlxdAyMm9zlE7K0m3YgmxqOHXc3amvo
kp92LT9OLXGhk+RomJIySYp9l3U2Jp2g5FVUfnTtfWZ89rNecQiujfI7cI+svMZ7DZi6B73zbOxS
zkMQ+W/I/GkEOOwCM/DGmuLrWNvuwe2IrUAr4PVfM11rml5bPj0I78F0R1BapU8b4JZ3AbV5gD7Y
gvClpWNG3ux5MsaZ+tza+T8ndi4oSxJaTLkBFgN6GdKCTXw3hCqXl0hmqUkpXn16dVlcemLyVYng
UOFjan84LR1af2320gIUeEcYVGuezVTenGz19au9sfvmNrQ+TKmqafZcXaQKdkwBXFeGwaZrhbE2
Xl9wtv3CGrsYnpb9+JzwS5qHUJQOBulRu91iWN5Xw+IKquIwe2qBbFC0HhjrDIWUwl7nBpfE/c9/
fTGYWU1UnkszEqAO30y1hi2ldvd8Hp9iQ2VUL8j8XUx8nZtj4MOIEduY103cY7ntvH29TzGrUX4M
11x7lQpd7gp3tFlddtjyqBQjFdIw1GkEsLLM2kSuAv7gdsgSxXFQzbiLjRct4wb0/1n1ryYQ3XbT
HpZId24hdH8mVVyZx8z7fD7O1oVx2bSEE36xt0geLEBNWiP1J4dN4gq+JGj/trV7ZB+eVE4jmOhs
dnVtBoEaS2qy2nidUx6NJ1Rx9PChsYBsH+b2aeF0I6uEEe4JYd7tP1okZua1k6kIdAz8vTti3sAV
lExxObs/McdGuUOQpqWR3PlWUkyXPKZxpVtIG+uBXnikm7L+VlDO5qb6kdM6DwhpdzJSp12pIXc2
01sc/Rsr5nljMckVqcO1tJsV32DHc7r5hZRPO3v5Z/9i5PlQgqb3tRLO+GD0mCMAvVxlD0Lpm1xo
zbyxYXWXH80E21THmUcNoh/d3cbc8LuOls5O7Hvh4qHQVfPlHVCcNbZWkGr1pGM0oDAr32Tlgl5M
MP3RRMvLjKsime/E04F+y3K8dSswsiZ+3TjII6XQQmgVPcPsEI+OpITNiyYjCosQFgJoiv7tyOos
FJSVg6bTvsRE8JJvNs1heeg4bJykKL4kkcd/xSyO2SP+j2UpeKYsr2JlY6MhjDdXnLj8SF3rv9gG
cFWuXPePGMugbTy+v6JMoY5FpAf7gPcWs4BSiBEZvXIp65qAnA7s7yKllt6kSmauOeTNJ1ZFSzZ8
aVEeS3r+VYA/qU32bx0q6Pwk693A/u8nMsvaNSfvC1QyN0oJyh92q3Oe1vZCjt1d1gFuW3Gtjrlp
FCQRXAsHA6Dk2cBFvM6fQHfbN7NEPQ+0X39YmFQ4F73FOecfsqwO6a+Dd/VAQBwpoQSjBsmGavFN
8/PieWBt4LKnzWTsfQPBsUb0e7FB5r9qdjZVLwxsIZ3QGssf+d7+jJmPzYd7OS3XlvjTHFExZojT
DNVRJ3In+VrEnLZlHIL03TCBnDJKJQKnSyI32bkGXPFDwEQ4R2zV3VrgNVTZoFX0aZi+XMhud5D4
8spoXHLWQ10JJQgbPqH8NCNMwYkrmp4qjwcMUq5fWwgjb0z1mqNP0lZg+Y77TNGhZ/wj50XMXNeQ
83T684A62ypnLZ6LzY5eam2SQhhle3lKTnPcB5DXcojEIG4EalPjY6ay6DORhjXan+q/RT+3EF+s
ANIVFQppByZl5+Oo6PZKECmWdBfkdTNlpoLnII2nJXx1itda7d3D0SHY6HZ1HQ0MdYaQ9OfAZrLR
9KUY6+rUPDdwf3zXXwWPGR4PEdKAURdfdB93DyDnPGvSlqIAL27ud+CfX9Ce45soO1YinAm7OKe0
udF3gt7m3jVYRA8wZ4hFUaMho3FyDawDt9URQb5nObhaTMlr3pbW4ecTycPkj+md5xV9ZdY24/U8
6aiah7p4pBS0zOwQtFuwNt88p4pleR2qOepu+efn4E56IQ8rFJJwRZiAHwQJIgX+AO1ssESRjFO0
ZPuv687IKLArYtouGpKQ4/yglnYJZxUsbsLWeE9/3bZvPps+EpUdVDNDhFq3qZ9gFybZTAovAGLu
c4yaylencwhbXTgvLrLW3MKFsxnaCdRRetmWNCjC2apVTkMBzsaaCImLw2duvHfi9hSigWpJrRQn
TnceLUHxlNTVm0SvTEINjvjZ2bhDxSyvU30exrmgwDoT6hDrQDE3fw==
`pragma protect end_protected
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
