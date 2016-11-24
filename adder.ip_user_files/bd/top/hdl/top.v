//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
//Date        : Thu Nov 24 20:52:57 2016
//Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top.hwdef" *) 
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
    SGN_M_O,
    SGN_N,
    SGN_N_O,
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
  output SGN_M_O;
  input SGN_N;
  output SGN_N_O;
  output [3:0]Y;

  wire CLK_1;
  wire M0_1;
  wire M1_1;
  wire [3:0]MUX_y;
  wire N0_1;
  wire N1_1;
  wire SGN_M_1;
  wire SGN_N_1;
  wire calculator_0_S0;
  wire calculator_0_S1;
  wire calculator_0_S2;
  wire calculator_0_SGN_S;
  wire clock_divider_clkout;
  wire [3:0]concat_N_dout;
  wire [1:0]counter_Q;
  wire two_four_decoder_0_Y0;
  wire two_four_decoder_0_Y1;
  wire two_four_decoder_0_Y2;
  wire two_four_decoder_0_Y3;
  wire [3:0]xlconcat_0_dout;
  wire [3:0]xlconcat_1_dout;
  wire [3:0]xlconcat_2_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_inv_2_y;
  wire xup_inv_3_y;

  assign AN0 = xup_inv_3_y;
  assign AN1 = xup_inv_2_y;
  assign AN2 = xup_inv_1_y;
  assign AN3 = xup_inv_0_y;
  assign CLK_1 = CLK;
  assign M0_1 = M0;
  assign M1_1 = M1;
  assign N0_1 = N0;
  assign N1_1 = N1;
  assign SGN_M_1 = SGN_M;
  assign SGN_M_O = SGN_M_1;
  assign SGN_N_1 = SGN_N;
  assign SGN_N_O = SGN_N_1;
  assign Y[3:0] = MUX_y;
  top_xlconstant_1_1 GND
       (.dout(xlconstant_1_dout));
  top_xup_4_to_1_mux_vector_0_0 MUX
       (.a(xlconcat_2_dout),
        .b(concat_N_dout),
        .c(xlconcat_1_dout),
        .d(xlconcat_0_dout),
        .sel(counter_Q),
        .y(MUX_y));
  top_xlconstant_0_0 Vcc
       (.dout(xlconstant_0_dout));
  top_calculator_0_0 calculator
       (.M0(M0_1),
        .M1(M1_1),
        .N0(N0_1),
        .N1(N1_1),
        .S0(calculator_0_S0),
        .S1(calculator_0_S1),
        .S2(calculator_0_S2),
        .SGN_M(SGN_M_1),
        .SGN_N(SGN_N_1),
        .SGN_S(calculator_0_SGN_S));
  top_xup_clk_divider_0_0 clock_divider
       (.clkin(CLK_1),
        .clkout(clock_divider_clkout));
  top_xlconcat_2_0 concat_M
       (.In0(M0_1),
        .In1(M1_1),
        .In2(xlconstant_1_dout),
        .In3(xlconstant_0_dout),
        .dout(xlconcat_2_dout));
  top_xlconcat_0_1 concat_N
       (.In0(N0_1),
        .In1(N1_1),
        .In2(xlconstant_1_dout),
        .In3(xlconstant_0_dout),
        .dout(concat_N_dout));
  top_xlconcat_0_0 concat_S
       (.In0(calculator_0_S0),
        .In1(calculator_0_S1),
        .In2(calculator_0_S2),
        .In3(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  top_xlconcat_1_0 concat_SGN_S
       (.In0(xlconstant_0_dout),
        .In1(xlconstant_0_dout),
        .In2(xlconstant_0_dout),
        .In3(calculator_0_SGN_S),
        .dout(xlconcat_1_dout));
  top_c_counter_binary_0_0 counter
       (.CLK(clock_divider_clkout),
        .Q(counter_Q));
  top_two_four_decoder_0_0 two_four_decoder_0
       (.A(counter_Q),
        .Y0(two_four_decoder_0_Y0),
        .Y1(two_four_decoder_0_Y1),
        .Y2(two_four_decoder_0_Y2),
        .Y3(two_four_decoder_0_Y3));
  top_xup_inv_0_0 xup_inv_0
       (.a(two_four_decoder_0_Y0),
        .y(xup_inv_0_y));
  top_xup_inv_1_0 xup_inv_1
       (.a(two_four_decoder_0_Y1),
        .y(xup_inv_1_y));
  top_xup_inv_2_0 xup_inv_2
       (.a(two_four_decoder_0_Y2),
        .y(xup_inv_2_y));
  top_xup_inv_3_0 xup_inv_3
       (.a(two_four_decoder_0_Y3),
        .y(xup_inv_3_y));
endmodule
