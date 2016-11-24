// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 20:17:52 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/peter/adder/adder.sim/sim_1/synth/func/top_tb_func_synth.v
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
  wire xlconstant_0_dout;
  wire xlconstant_1_dout;
  wire NLW_clock_divider_clkout_UNCONNECTED;

  top_xlconstant_1_1 GND
       (.dout(xlconstant_1_dout));
  (* X_CORE_INFO = "xup_4_to_1_mux_vector,Vivado 2016.3" *) 
  top_xup_4_to_1_mux_vector_0_0 MUX
       (.a(xlconcat_2_dout),
        .b(concat_N_dout),
        .c(xlconcat_1_dout),
        .d(xlconcat_0_dout),
        .sel(counter_Q),
        .y(Y));
  top_xlconstant_0_0 Vcc
       (.dout(xlconstant_0_dout));
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
  (* X_CORE_INFO = "xup_clk_divider,Vivado 2016.3" *) 
  top_xup_clk_divider_0_0 clock_divider
       (.clkin(CLK),
        .clkout(NLW_clock_divider_clkout_UNCONNECTED));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_2_0 concat_M
       (.In0(M0),
        .In1(M1),
        .In2(xlconstant_1_dout),
        .In3(xlconstant_0_dout),
        .dout(xlconcat_2_dout));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_0_1 concat_N
       (.In0(N0),
        .In1(N1),
        .In2(xlconstant_1_dout),
        .In3(xlconstant_0_dout),
        .dout(concat_N_dout));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_0_0 concat_S
       (.In0(calculator_0_S0),
        .In1(calculator_0_S1),
        .In2(calculator_0_S2),
        .In3(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  (* X_CORE_INFO = "xlconcat,Vivado 2016.3" *) 
  top_xlconcat_1_0 concat_SGN_S
       (.In0(xlconstant_0_dout),
        .In1(xlconstant_0_dout),
        .In2(xlconstant_0_dout),
        .In3(calculator_0_SGN_S),
        .dout(xlconcat_1_dout));
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
  wire NLW_U0_THRESH0_UNCONNECTED;

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
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
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
  wire xlconstant_0_dout;
  wire NLW_complement_1_Y3_UNCONNECTED;
  wire NLW_full_adder_4_bit_0_CO_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "calculator_complement_0_0,complement,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "complement,Vivado 2016.3" *) 
  top_calculator_0_0_calculator_complement_0_0 complement_0
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
  top_calculator_0_0_calculator_complement_1_0 complement_1
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
  top_calculator_0_0_calculator_complement_2_0 complement_2
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
  top_calculator_0_0_calculator_full_adder_4_bit_0_0 full_adder_4_bit_0
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
  top_calculator_0_0_calculator_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
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
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  (* HW_HANDOFF = "complement.hwdef" *) 
  top_calculator_0_0_complement__xdcDup__1 inst
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
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  (* HW_HANDOFF = "complement.hwdef" *) 
  top_calculator_0_0_complement__xdcDup__2 inst
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
  wire A2;
  wire A3;
  wire COMP;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;

  (* HW_HANDOFF = "complement.hwdef" *) 
  top_calculator_0_0_complement inst
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
  wire CI;
  wire CO;
  wire S0;
  wire S1;
  wire S2;
  wire S3;

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
        .CI(CI),
        .CO(CO),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "calculator_xlconstant_0_0" *) 
module top_calculator_0_0_calculator_xlconstant_0_0
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
  top_calculator_0_0_complement_full_adder_4_bit_0_0 full_adder_4_bit_0
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
  top_calculator_0_0_complement_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
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
       (.a(A2),
        .b(COMP),
        .y(xup_xor2_2_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_3_0 xup_xor2_3
       (.a(A3),
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
  top_calculator_0_0_complement_full_adder_4_bit_0_0__xdcDup__1 full_adder_4_bit_0
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
  top_calculator_0_0_complement_xlconstant_1_0__3 xlconstant_1
       (.dout(xlconstant_1_dout));
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
       (.a(A2),
        .b(COMP),
        .y(xup_xor2_2_y));
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_3_0__3 xup_xor2_3
       (.a(A3),
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
  top_calculator_0_0_complement_full_adder_4_bit_0_0__xdcDup__2 full_adder_4_bit_0
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
  top_calculator_0_0_complement_xlconstant_1_0__4 xlconstant_1
       (.dout(xlconstant_1_dout));
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
  (* CHECK_LICENSE_TYPE = "complement_xup_xor2_3_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_complement_xup_xor2_3_0__4 xup_xor2_3
       (.a(A3),
        .b(COMP),
        .y(xup_xor2_3_y));
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
  top_calculator_0_0_full_adder_4_bit__xdcDup__3 inst
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
  top_calculator_0_0_full_adder_4_bit__xdcDup__1 inst
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
  top_calculator_0_0_full_adder_4_bit__xdcDup__2 inst
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

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xlconstant_1_0" *) 
module top_calculator_0_0_complement_xlconstant_1_0
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xlconstant_1_0" *) 
module top_calculator_0_0_complement_xlconstant_1_0__3
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "complement_xlconstant_1_0" *) 
module top_calculator_0_0_complement_xlconstant_1_0__4
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
module top_calculator_0_0_complement_xup_xor2_2_0__3
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
module top_calculator_0_0_complement_xup_xor2_3_0__3
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
module top_calculator_0_0_complement_xup_xor2_3_0__4
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
  wire CO;
  wire S;
  wire xup_inv_0_y;
  wire xup_nand2_0_y;
  wire xup_nand2_2_y;
  wire xup_xor2_0_y;

  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_inv_0_0,xup_inv,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__16 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__16 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__16 xup_nand2_1
       (.a(xup_nand2_0_y),
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
        .b(xup_inv_0_y),
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
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__25 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
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
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__26 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__27 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__27 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__27 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__27 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__28 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__28 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__28 xup_nand2_1
       (.a(xup_nand2_0_y),
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
        .b(xup_inv_0_y),
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
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__17 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
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
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__18 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__19 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__19 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__19 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__19 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__20 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__20 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__20 xup_nand2_1
       (.a(xup_nand2_0_y),
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
        .b(xup_inv_0_y),
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
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__21 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__22 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__22 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__22 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__22 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
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
       (.a(A),
        .b(B),
        .y(xup_xor2_0_y));
endmodule

(* HW_HANDOFF = "full_adder_1_bit.hwdef" *) (* ORIG_REF_NAME = "full_adder_1_bit" *) 
module top_calculator_0_0_full_adder_1_bit__xdcDup__8
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__23 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__23 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__23 xup_nand2_1
       (.a(xup_nand2_0_y),
        .b(xup_nand2_2_y),
        .y(CO));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__23 xup_nand2_2
       (.a(A),
        .b(B),
        .y(xup_nand2_2_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xnor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__23 xup_xnor2_0
       (.a(xup_xor2_0_y),
        .b(xup_inv_0_y),
        .y(S));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_xor2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__23 xup_xor2_0
       (.a(A),
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
  top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__24 xup_inv_0
       (.a(CI),
        .y(xup_inv_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__24 xup_nand2_0
       (.a(xup_xor2_0_y),
        .b(CI),
        .y(xup_nand2_0_y));
  (* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__24 xup_nand2_1
       (.a(xup_nand2_0_y),
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
        .b(xup_inv_0_y),
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__16
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__17
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__18
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__19
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__20
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__21
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__22
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__23
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__24
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__25
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__26
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__27
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__28
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__29
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
module top_calculator_0_0_full_adder_1_bit_xup_inv_0_0__30
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

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__16
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
    .INIT(4'h7)) 
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
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__19
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__20
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
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__22
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__23
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__24
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
    .INIT(4'h7)) 
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
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_0_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__27
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_0_0__28
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
    .INIT(4'h7)) 
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
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_1_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__16
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__17
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__18
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__19
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__20
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__21
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__22
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__23
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__24
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__25
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__26
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__27
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_1_0__28
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
    .INIT(4'h7)) 
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
    .INIT(4'h7)) 
    y_INST_0
       (.I0(a),
        .I1(b),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_1_bit_xup_nand2_2_0" *) 
(* X_CORE_INFO = "xup_nand2,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__17
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__18
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__19
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__21
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__22
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__23
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__25
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__26
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
module top_calculator_0_0_full_adder_1_bit_xup_nand2_2_0__27
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
module top_calculator_0_0_full_adder_1_bit_xup_xnor2_0_0__23
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__18
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__19
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__22
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__23
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__26
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
module top_calculator_0_0_full_adder_1_bit_xup_xor2_0_0__27
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
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
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
        .CO(CO),
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
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__1 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__1 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__1 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__1 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
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
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__2 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__2 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__2 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__2 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
        .S(S3));
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
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_0__xdcDup__3 full_adder_1_bit_0
       (.A(A0),
        .B(B0),
        .CI(CI),
        .CO(full_adder_1_bit_0_CO),
        .S(S0));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_1__xdcDup__3 full_adder_1_bit_1
       (.A(A1),
        .B(B1),
        .CI(full_adder_1_bit_0_CO),
        .CO(full_adder_1_bit_1_CO),
        .S(S1));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_2__xdcDup__3 full_adder_1_bit_2
       (.A(A2),
        .B(B2),
        .CI(full_adder_1_bit_1_CO),
        .CO(full_adder_1_bit_2_CO),
        .S(S2));
  (* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
  top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__3 full_adder_1_bit_3
       (.A(A3),
        .B(B3),
        .CI(full_adder_1_bit_2_CO),
        .CO(CO),
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
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__13 inst
       (.A(A),
        .B(B),
        .CI(CI),
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
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__1 inst
       (.A(A),
        .B(B),
        .CI(CI),
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
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__5 inst
       (.A(A),
        .B(B),
        .CI(CI),
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
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__9 inst
       (.A(A),
        .B(B),
        .CI(CI),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__2 inst
       (.A(A),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__6 inst
       (.A(A),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__10 inst
       (.A(A),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__3 inst
       (.A(A),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__7 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__11 inst
       (.A(A),
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
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__4 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "full_adder_4_bit_full_adder_1_bit_0_3" *) 
(* X_CORE_INFO = "full_adder_1_bit,Vivado 2016.3" *) 
module top_calculator_0_0_full_adder_4_bit_full_adder_1_bit_0_3__xdcDup__2
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
  top_calculator_0_0_full_adder_1_bit__xdcDup__8 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
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

  wire A;
  wire B;
  wire CI;
  wire CO;
  wire S;

  (* HW_HANDOFF = "full_adder_1_bit.hwdef" *) 
  top_calculator_0_0_full_adder_1_bit__xdcDup__12 inst
       (.A(A),
        .B(B),
        .CI(CI),
        .CO(CO),
        .S(S));
endmodule

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

  (* CHECK_LICENSE_TYPE = "two_four_decoder_xlslice_0_0,xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xlslice_0_0 A0
       (.Din(A),
        .Dout(A0_Dout));
  (* CHECK_LICENSE_TYPE = "two_four_decoder_xlslice_1_0,xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice,Vivado 2016.3" *) 
  top_two_four_decoder_0_0_two_four_decoder_xlslice_1_0 A1
       (.Din(A),
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
    .INIT(4'h8)) 
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
    .INIT(4'h8)) 
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
    .INIT(4'h8)) 
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
  wire y;

  LUT1 #(
    .INIT(2'h1)) 
    y_INST_0
       (.I0(a),
        .O(y));
endmodule

(* CHECK_LICENSE_TYPE = "two_four_decoder_xup_inv_1_0,xup_inv,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "two_four_decoder_xup_inv_1_0" *) 
(* X_CORE_INFO = "xup_inv,Vivado 2016.3" *) 
module top_two_four_decoder_0_0_two_four_decoder_xup_inv_1_0
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
  wire [0:0]In3;

  assign dout[3] = In3;
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
  wire [0:0]In2;
  wire [0:0]In3;

  assign dout[3] = In3;
  assign dout[2] = In2;
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

  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;
  wire [0:0]In3;

  assign dout[3] = In3;
  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
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
  wire [0:0]In2;
  wire [0:0]In3;

  assign dout[3] = In3;
  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) 
module top_xlconstant_0_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) 
module top_xlconstant_1_1
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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

  top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector inst
       (.a(a),
        .b(b),
        .c(c),
        .d(d),
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

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y[0]_INST_0 
       (.I0(d[0]),
        .I1(b[0]),
        .I2(sel[0]),
        .I3(c[0]),
        .I4(sel[1]),
        .I5(a[0]),
        .O(y[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y[1]_INST_0 
       (.I0(d[1]),
        .I1(b[1]),
        .I2(sel[0]),
        .I3(c[1]),
        .I4(sel[1]),
        .I5(a[1]),
        .O(y[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y[2]_INST_0 
       (.I0(d[2]),
        .I1(b[2]),
        .I2(sel[0]),
        .I3(c[2]),
        .I4(sel[1]),
        .I5(a[2]),
        .O(y[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y[3]_INST_0 
       (.I0(d[3]),
        .I1(b[3]),
        .I2(sel[0]),
        .I3(c[3]),
        .I4(sel[1]),
        .I5(a[3]),
        .O(y[3]));
endmodule

(* CHECK_LICENSE_TYPE = "top_xup_clk_divider_0_0,xup_clk_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xup_clk_divider,Vivado 2016.3" *) 
module top_xup_clk_divider_0_0
   (clkin,
    clkout);
  input clkin;
  output clkout;

  wire clkin;
  wire clkout;

  top_xup_clk_divider_0_0_xup_clk_divider inst
       (.clkin(clkin),
        .clkout(clkout));
endmodule

(* ORIG_REF_NAME = "xup_clk_divider" *) 
module top_xup_clk_divider_0_0_xup_clk_divider
   (clkout,
    clkin);
  output clkout;
  input clkin;

  wire clear;
  wire clkin;
  wire clkout;
  wire clkout_i_1_n_0;
  wire clkout_i_2_n_0;
  wire clkout_i_3_n_0;
  wire clkout_i_4_n_0;
  wire clkout_i_5_n_0;
  wire clkout_i_6_n_0;
  wire clkout_i_7_n_0;
  wire clkout_i_8_n_0;
  wire clkout_i_9_n_0;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[24]_i_5_n_0 ;
  wire \count[28]_i_2_n_0 ;
  wire \count[28]_i_3_n_0 ;
  wire \count[28]_i_4_n_0 ;
  wire \count[28]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h5501AAFE)) 
    clkout_i_1
       (.I0(clkout_i_2_n_0),
        .I1(clkout_i_3_n_0),
        .I2(clkout_i_4_n_0),
        .I3(clkout_i_5_n_0),
        .I4(clkout),
        .O(clkout_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clkout_i_2
       (.I0(clkout_i_6_n_0),
        .I1(clkout_i_7_n_0),
        .I2(count_reg[30]),
        .I3(count_reg[24]),
        .I4(count_reg[20]),
        .I5(count_reg[23]),
        .O(clkout_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    clkout_i_3
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[8]),
        .I3(clkout_i_8_n_0),
        .I4(count_reg[9]),
        .O(clkout_i_3_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    clkout_i_4
       (.I0(count_reg[5]),
        .I1(count_reg[1]),
        .I2(count_reg[3]),
        .I3(clkout_i_9_n_0),
        .O(clkout_i_4_n_0));
  LUT5 #(
    .INIT(32'h70FFFFFF)) 
    clkout_i_5
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .I2(clkout_i_8_n_0),
        .I3(count_reg[17]),
        .I4(count_reg[16]),
        .O(clkout_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clkout_i_6
       (.I0(count_reg[31]),
        .I1(count_reg[28]),
        .I2(count_reg[19]),
        .I3(count_reg[29]),
        .I4(count_reg[27]),
        .I5(count_reg[25]),
        .O(clkout_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clkout_i_7
       (.I0(count_reg[26]),
        .I1(count_reg[18]),
        .I2(count_reg[21]),
        .I3(count_reg[22]),
        .O(clkout_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    clkout_i_8
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .I2(count_reg[15]),
        .I3(count_reg[14]),
        .O(clkout_i_8_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    clkout_i_9
       (.I0(count_reg[8]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[4]),
        .O(clkout_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkout_reg
       (.C(clkin),
        .CE(1'b1),
        .D(clkout_i_1_n_0),
        .Q(clkout),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40404000)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_3_n_0 ),
        .I1(count_reg[17]),
        .I2(count_reg[16]),
        .I3(clkout_i_4_n_0),
        .I4(clkout_i_3_n_0),
        .I5(clkout_i_2_n_0),
        .O(clear));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \count[0]_i_3 
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .I2(count_reg[13]),
        .I3(count_reg[12]),
        .I4(count_reg[11]),
        .I5(count_reg[10]),
        .O(\count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[0]_i_4 
       (.I0(count_reg[3]),
        .O(\count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[0]_i_5 
       (.I0(count_reg[2]),
        .O(\count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[0]_i_6 
       (.I0(count_reg[1]),
        .O(\count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_7 
       (.I0(count_reg[0]),
        .O(\count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .O(\count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .O(\count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .O(\count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .O(\count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .O(\count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_3 
       (.I0(count_reg[18]),
        .O(\count[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_4 
       (.I0(count_reg[17]),
        .O(\count[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_5 
       (.I0(count_reg[16]),
        .O(\count[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_2 
       (.I0(count_reg[23]),
        .O(\count[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_3 
       (.I0(count_reg[22]),
        .O(\count[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_4 
       (.I0(count_reg[21]),
        .O(\count[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_5 
       (.I0(count_reg[20]),
        .O(\count[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_2 
       (.I0(count_reg[27]),
        .O(\count[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_3 
       (.I0(count_reg[26]),
        .O(\count[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_4 
       (.I0(count_reg[25]),
        .O(\count[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_5 
       (.I0(count_reg[24]),
        .O(\count[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_2 
       (.I0(count_reg[31]),
        .O(\count[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_3 
       (.I0(count_reg[30]),
        .O(\count[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_4 
       (.I0(count_reg[29]),
        .O(\count[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_5 
       (.I0(count_reg[28]),
        .O(\count[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .O(\count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_3 
       (.I0(count_reg[6]),
        .O(\count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_4 
       (.I0(count_reg[5]),
        .O(\count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_5 
       (.I0(count_reg[4]),
        .O(\count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .O(\count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .O(\count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .O(\count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .O(\count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(clear));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(clear));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 ,\count[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(clear));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S({\count[28]_i_2_n_0 ,\count[28]_i_3_n_0 ,\count[28]_i_4_n_0 ,\count[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clkin),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
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

  wire \<const1> ;
  wire CLK;
  wire [1:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
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
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
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
bGshYDzU6ooKqMAKszrYhwLtbDUFQrvRWqobGQMFjD405uD4kLcLPX6qKifOrajtoZsm5cPIqXnn
+z5+tEOfGLeCkQkMzf+tb5lbcRSwGNSu2fh0SpTUgPaZ/8HFejbogSlltTfiL4hZ4b86fY+p48g1
BEu6cS+cny68ePDav7BJJH2Nqj/fFXq+dRmoS12TFoBfTRbzHPVXLpcPc9+qrRgiPl+j5O6Y0mMO
+mX91T9jnW0Pf3BvYT1h4j5uhiN6TLb9z8LTJO+71DNzpSjbzQ5xK+QQXxVcfx85AJEGB3zpjA8e
dFCSSahjhDOYualizw9nKW3GsMKNE7e4eNxC1w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
vGcZcLZpAQjkOz4ttcC7B9GxXpoWjWJcyjGa5LgqwKX2lRxgYZb+4juQymMtAZIeOtFlOqKnZrlS
aqc827W625HMPNcC0canOhf0shzGBGYH/NoDVABfv3V9mNns/G2lv9jYkUZCE2hbm0QrfzQoZ0y9
CbaHvx+ycbnJi8f3DGYBHp3xhjXGmC64TppA0J6sMfEpSRPT7o8YPzJsEzFmsJmwWgSwEiwQIEPx
lRBkxrW3D6P/YJtQmRAVmzPvtGBlZWR3NouE3dioFt5TyF0DUOeM+oXtsM77wJ4sEucXAkWxF2VU
1hcL0lQPzhfvpWgGBOcSyARHALMfDhPs3hrtDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4240)
`pragma protect data_block
kBl89crcKxI+BhSUOHBEksUAkPEU+XIvrAxqtUG+V/T5XuTvV8m8IGVsYMiBI/HfRVK1WS6Fth+D
O6oMEYe+vZ9N/BqNAQDt5HbqjeZriyW9dxaD0BCuG4L6EClWm6+a9NbxEW48bZtpRciEhuw6ln3c
djXhiYaI1BK593SNSzJ2MEttADwTiBgMcwH0Xw9E7y5sRR7p2KVeKDEKqNyuH4K2NDy5FL69naDp
xQiJbbwZ1YswuJfvbK51Fp4jTgNYoFrGNpOIShlGbyNPMqYqBaUKKu4sCUB3PwH0NGoSX4kHYZdf
+ye0/51yA0wMAt66EpIcdvxhsh8tCII40/+9Yh8O+FuekLEQsCXtdTo+uEIhKji0n3W9OMRYszil
W0qh9mcu93AGCNtNDBg/7YxKPbQ+ZN1Ecz0ujN4FAP09d5xjVgUVGoLufztPHXBjZc0KNj7uLTrg
I8Wjjm1WlDUJTFNXlwlPmwHDeGKyaCApOEYxLddtVR6ucFtrEIMiGD6sOLKNmJAsgijn+ZS/enMZ
gEQO238BxOZTdG8Cmg7/fa1XKhrY8f4d7ZxnxUI2BiI263DPZ9wdI9U4qYZGT7FeIHwWnF2XsmP3
lWntWmCaEW1/JIGDvPm+ORnIexZTQU5AJWB9aQjRB1Ztm04gLDdZA6CjzvloYWH5uIbd1YNy0FHF
OpSZZkr7IeWSCgplMDROPvkC6x9Gfib2Wrjf1aqQAf5NhZ9Mkae6y4suWVCQprk1pbOnq/MDNgt9
AIJRy8zVq9eRcuIvgPCidBmBhfWtUfzhtYwM3jvnyUj4ZTL4V29hxYGvJAmDPZhe5En85ORdGZr3
AMhfMf4wrxOM4wGZcYIZdF9xxc4xzMBRV7pXlUDi91NyEZ3g+gbTy3v6CJKaZ/RL7lIyu1EkBcA5
4jKz/ODYlH+91PNYPNyJ5H+Eo0SJ8SuiCkMZgCCytrNN23sAmtxtBOB6zQHTipal/qjzNA1iaHZJ
ejye/RinHu9zOXMsl7UT1iEV4lgBXlUeGnp8XWBg9KtNSluj5O4WMpbZdpBtjsmJ6D8vcUhIVdlH
/hhBqhMvjIc8S8NH+th823mNIL5aogD57YcT3v3kXMzN9kdz6gTfFbOa/65F2EwrWJxeX68C6vfL
esjrlUKyt2zgHR7kHwHIKCMZPLYY6U0nm/+qd3Y7L9PIJPe9pPEIAzr10Ci8L9JO7c4bC8SC9Tgs
R+DwaNGmE0JNKgoTlmWr8EvN54z3StigI7lXzsEH2P4VTghMMh9JI7PZHoSjPZ9LbeHULFF8DGvC
s9nLYXI32eqSpXX6bIo2UmpRURjMA68XJ/mfpt7sewiBIT2rVkKTJahBL7swArnmH33sMl9oxPDA
XoW5jp2/crq9rnb7wV5gNMVFdXnVG8usgHN3tCngE7oBBk9yy1H/uu57L2E5L1a+rCw/CfNTkExy
i5WPvLJ4l/fQgm/4nFT0VAJACwyRomc2LnJwYpZvQRVapCHCweJ6DNe5WEb+iga8DdISSS5ZEeZL
0J2V1UYeFORZACmkzBHjS2TxyPZNY9VMy13ej5L50rg1ySgAKkQGVVUti0k+2kIdPzPbkP+AMY0r
dwMvSB0rUgWu4Edp9OZw+6JuPsc90kcvOGJRGIcy/c44F/+kEknMqtZ8hdRzzhEnCTTHwRO6XnJj
pZ7HiQj8pG5TUZGaX9muYTLfGgSvvnOKqbFBkR1grUqZzG1ZCv15snh0h3Mm6GYUDKNpbqd8N1ob
H8K43PGAjgRzRWUjeceWJ2QHpyr8J2FPZZCma6g7fKKT7TXVWq/+uN45/hBpc114uZ4EZHkgpIrG
2/HvFlSazBWG5sC8JwJIoY0KXf+WeoXVVCeMAcY1WtVILcpA8f9s3U2w1wLWU2ErL/a4zMPFqL9M
bdmbx19EH8dcVSlWMMk4H5IQTYpEXvXWXNUEDptmMbeKLtPhRzsF+LQogDrNMfxLTcAXCef7Flr2
gMTOz+h7eXEmJNnjSFkZ6z/ck1YiPmNiqLBM37iTZf60+MWDDRj3vLS9D5YT7Tdn7f2PqQMEDNQP
SEzAhpk0CTS/w2T5bAYDA/Aj/ipJEPzDi71MeNkxFpSmP5ehr64MZJHm/NJn9hO7esGpYu/lLoV9
EAC3pw9QE9t99GBOKwxcnNkkIVxdsCDY9ZhU0hOb3py0lazq2PYN/zQdl74p6szHYmv5wLLX7vvl
Rqi/f4Okzh58tqOYOH7m0mxy+GumPW2ffq5b7O8dM32lsDWmQplY/cf3gJfKZC1vJnbicqthxK+J
J/24DXW0OYIvlFpCtKEHpvafH01DBBMiCEuK+f3FBkhjssS+MPwhBbhbXNFusa5TQyYsNJAm0Jrz
sdE5NarAtIENgvB4KYQDARPruZ2bY66N8HQHlOTaNEkozw3EBwS16wpfV4tvyy14r3yJgxkY9GUa
KDi/al8GQ8gm6zyGorlfIyWMhNCu9+7LEK0GKIS8licPAlO54aiUmGB0r3IGMzjX1LLXmOXQfRvF
6IIFsu2bnVWlxp75TgeshJnBki+pCfsYArADTyTPShAg+WHP9fIB8eqXEa1gWSOSBY5WC8eMhIfR
MOJkLturdXBUHHAdIVacvPLkyNJ3tL7qRewhZ1rkMCW4/MQriAP0hL5YVqzBVk6cuc3Zl9Cohxyl
0ajNabayROl3HXbu0UOw5t09deqQwGZEpXP5BXw1nEROGXR2d7cFkxQ2BiPkMg+fKzmK/2mvQYQH
id1djo0U61ZAUWAweyuVVOQNHi3YIAclYY6BCTOMfUWpNAIpBul3iwfua8yOL6ZXednCty8lP6ZE
NAK0O/2wy5VbPpLNpDnC6x7Xv8mWMmmOhfuti5101/PDgTSUc1NHAcm0JM1UddzHA7jrc/FBMrb/
ZLbsBQ4VDJ6xPpokb1v8mSOuG5RUzkTaHWQ2qan9eOoLpKCPbkSjI4EGlfG6BvQhtE3Iv+ziGJ04
FnqTcgC+TMI0qIZfWrr+zz7x0GCo31wQdPwVofJ7UfLCCBftCPGdDvXMip0U4k8Ms79nTXKvdki9
roW9s+vAd2Dwljw94dhcvy6Fi5350AxlQ9BB+RcOMYd51R0mZGLp1RKRVfhi8nr8Vwbe61J3zZwU
T35rVMSX+WK6/J4/VxFMWt8FRNKHqZ8ANGaw14bHyuHyYRRoZyIuR9fgZ3lcAaGsfkdtnfTGBbT2
XWUkyzyLM+qi9MMsdxxtTaFCUN1icXtJfkjwoosyAa8Y6BiloGV/kGAAXYmoSO4hd8xuYo18qMfh
+lug8/Qg8/LdLDsiTRP4mRiJMv6MqaIeLYgsvFEdz9XTJ3ShX5lDFh3tl1xdXGe3LmlS8JkYj643
aKde73NPUS7t08kklCOoz8IuTqLKmUcBl2sZU9CZ4iTW34XAeTaBF03wxWLmbxBdsQrkhbA1z3u1
m6vH4w1Boh+KE0MzAqMBQwV/dUKbJwfwtadZ6gowL4VaqMOMyNSXulGG+ZI5TZCCq51BtoN5ZiNU
UfgMpR8kfBOWJXHi9wSjwpVaFJMXvTrX28lkE7h4ASIFl/k+922RfoM+eKfM3CbyL7tDcIML6WSR
tJh72Gcu3llkbrG9Q5ZI/ZTmA8BZZST6/umDnXcQ1fKezWauX97WqQi/J5W32eDq4S5vv6YaDPyG
m7rgbt/cX7bkqdN5Yc5CRQA8HJaLCzVQouPzN1pBr6qRvlimU9hJvsyBR3fk0WGbSYvRyuAABxZF
J88ZbKL4MufsR5/tq/O07VS13KqBgubf3oAfFuV+Qq4z3TSKdwpP/fSvB+qbSWX6UxcRIF9lc7HW
6/nVn/WiPJVxj9Oez/5XQ63Y8SZU47iqcm1rDlLl+3UhUMz3FVzpp2lvXL7GSHyZ6+o90qnaz4NR
O7UYgreB5XL5bMXhIaBWD8bTW4drF+qnX4sRlnYH/A1/k0XsMsuUO572N09P5R+YuRqpJKTjs6K0
silVE/YFxuHC0sPb7UFbeRKtuVlmI7u14TxQoR3pTU78JDhk/zJdHoX8tLeRQ6Lj8ZnP3/1bfyV5
lyiMZ5mv3YpEEfjI11Tl3pKFEwwHkefZOJKp0dSemFAGB1si7N7ii1G2ulQJkCYQJ1KfNgNQF11H
ga2KN0ZYqZ+MHm0nj2Mp+OOvvslRcDuD+eLsZ8A2DTQENn2TzwC6L6/5vVTwDPS7zUN1/ef/OvrL
DMiH/v9dRR0L6bTsulsdnm7MS6Snlj9L/pUtAfntOqSInpb7KFKAua7IfpcMJQE0lZMyexQGEG4r
eRGOX+Jfq7Ovt2vovSfshJMrUvMVqfEsbZa8fwY3o3Ny3H/FJt2fGx5QIGPu1JYYlvwqBnVd1dy/
4df7PXXHyqsefIbsrXRoxiRsgGsaFSOJH5SmO1BDGCYZhNI6ivCYCaCEPyndk3XTIQqRk125JWMv
15pT2eBbuWwNBPdG9pP1N3ZCbU1Ws0VWsALKl2VPXiMJuYIkqqZNvTZJAdcKGgwegvnV/Wgmqudn
FChDyvGdvJjGxXTHnhD/fxP1TtUQEO0zTSX+Kxt2lIJuUnQc0dym1CW/u0y/qZf9hCq5jnGlu1qj
NZRsIJLt9wdkoKhozbfEJ2qpc9bTwXrlrSvADP/lzWdqvuvpvFtvyJTGAASHUxNh8EFRLRsT8Ixx
5vPI+mcINiSeMUmy4l1mpctEEKk2b0bf0P6kQSCLfSsEtBIMMRxlNv9ZVXusqaazRrb1kiRhKZO2
U60lZav61NbvwNXoCExVK6XL9oIyd5Q38m99bLDpjjDItGq0UlZz1yqCem5+UL7UVBg/bDabn7oS
+E/gQnxFne2IxKJjHbfxGC760PGRQaHNgjTbpXoN3+5aqupJ6t08l6wxE+wznhmZqR5rZfNkTUYx
cyDHn+4f0YKHLb4O8U1HKyj9O/csgU/iF4ysP/MrrPOcybJ7yNkpOGw2VmYNpteqlBbjYVAHdGdR
zvnCT4ggGUeDnV+7bK81OpEFJsmScVmMT9gJEpImVdj4jaFScOMmh0T4usHCfIPfEFAotEQtwuF3
GeltAp0UAguPmfhPkksZSCaTOTJuTlIvcagunyC+wglLYMmQWUV5K/KwHoakvPZoyN5bA9tIucVT
OwXwYgPUUoxLXE3bmX/NrNJNOt7yCU+2HtA9pAMzoZQDFm9xtUhm+DQRAfngciJhv6Dbhlw0KzXv
Y/cFY05rMC1bDIpoEb+wIQqPIFqBatKVK29FH/uUJxXoSkxkvYq6tM3+UhmsYSKRt6+b6ji2xqwM
1pc4wOzd0s9lb82oE/neiV17T+8OcISK4xHJtg9SQ9WOES20wUYS+58QXWvaD7elBB5Hu8HMvmWQ
5KQ3fBpV4JnzTmSvM0pJr5sGdtwk7Hm7hLUISAbyE0mW6kRcWU7GIcEYJN/mRadxSeHhy0scPOWx
2WjivtxKYx/9g2CtkLfnEikU4JtIhMhALp8Kq718TAO23w9HgiWARwLTn98deb/RhE8T3CvKJMt7
btTz8Rn6P/D2OG4jrpDcSDkg8rSRM+PAKogyGwPmznE0btMMZmxDIL1Imb6l/dRrjqeZrXoWdYvZ
pjAozgLSzS0JB91vYtO/g/edl0P3U2t9P8ZRCUsTm/6HHQyU2TNgVfcVGEC5cpagLuOp3Yvj05Nv
CGdxqRI8CgfJa0D1XjmDr0j0lOmb1A==
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
