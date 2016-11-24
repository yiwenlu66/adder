// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 16:23:29 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/peter/adder/adder.sim/sim_1/synth/timing/peripheral_test_ver_time_synth.v
// Design      : peripheral_test_ver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* HW_HANDOFF = "peripheral_test.hwdef" *) 
module peripheral_test
   (A0,
    A1,
    A2,
    AN0,
    AN1,
    AN2,
    AN3,
    DP,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input A0;
  input A1;
  input A2;
  output [0:0]AN0;
  output [0:0]AN1;
  output [0:0]AN2;
  output [0:0]AN3;
  output [0:0]DP;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;

  wire A0;
  wire A1;
  wire A2;
  wire [0:0]AN0;
  wire [0:0]DP;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  wire NLW_BCD2SEG7_0_BI_RBO_n_UNCONNECTED;

  assign AN1[0] = DP;
  assign AN2[0] = DP;
  assign AN3[0] = DP;
  (* X_CORE_INFO = "BCD2SEG7,Vivado 2016.3" *) 
  peripheral_test_BCD2SEG7_0_0 BCD2SEG7_0
       (.BCD_A(A0),
        .BCD_B(A1),
        .BCD_C(A2),
        .BCD_D(AN0),
        .BI_RBO_n(NLW_BCD2SEG7_0_BI_RBO_n_UNCONNECTED),
        .LT_n(DP),
        .RBI_n(DP),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
  peripheral_test_xlconstant_0_0 xlconstant_0
       (.dout(DP));
  peripheral_test_xlconstant_1_0 xlconstant_1
       (.dout(AN0));
endmodule

(* CHECK_LICENSE_TYPE = "display_BCD2SEG7_0_0,BCD2SEG7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "BCD2SEG7,Vivado 2016.3" *) 
module peripheral_test_BCD2SEG7_0_0
   (LT_n,
    RBI_n,
    BCD_D,
    BCD_C,
    BCD_B,
    BCD_A,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    BI_RBO_n);
  input LT_n;
  input RBI_n;
  input BCD_D;
  input BCD_C;
  input BCD_B;
  input BCD_A;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  inout BI_RBO_n;

  wire BCD_A;
  wire BCD_B;
  wire BCD_C;
  wire BCD_D;
  wire BI_RBO_n;
  wire LT_n;
  wire RBI_n;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;

  peripheral_test_BCD2SEG7_0_0BCD2SEG7 inst
       (.BCD_A(BCD_A),
        .BCD_B(BCD_B),
        .BCD_C(BCD_C),
        .BCD_D(BCD_D),
        .BI_RBO_n(BI_RBO_n),
        .LT_n(LT_n),
        .RBI_n(RBI_n),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
endmodule

(* ORIG_REF_NAME = "BCD2SEG7" *) 
module peripheral_test_BCD2SEG7_0_0BCD2SEG7
   (a,
    b,
    c,
    d,
    e,
    f,
    g,
    BI_RBO_n,
    BCD_D,
    LT_n,
    BCD_B,
    BCD_A,
    BCD_C,
    RBI_n);
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  inout BI_RBO_n;
  input BCD_D;
  input LT_n;
  input BCD_B;
  input BCD_A;
  input BCD_C;
  input RBI_n;

  wire BCD_A;
  wire BCD_B;
  wire BCD_C;
  wire BCD_D;
  wire BI_RBO_n;
  wire BI_RBO_n_INST_0_i_2_n_0;
  wire LT_n;
  wire RBI_n;
  wire RBO_buffer;
  wire a;
  wire a_to_g1__3;
  wire \a_to_g_reg[0]_i_1_n_0 ;
  wire \a_to_g_reg[0]_i_3_n_0 ;
  wire \a_to_g_reg[0]_i_4_n_0 ;
  wire \a_to_g_reg[1]_i_1_n_0 ;
  wire \a_to_g_reg[1]_i_2_n_0 ;
  wire \a_to_g_reg[2]_i_1_n_0 ;
  wire \a_to_g_reg[2]_i_2_n_0 ;
  wire \a_to_g_reg[3]_i_1_n_0 ;
  wire \a_to_g_reg[3]_i_2_n_0 ;
  wire \a_to_g_reg[3]_i_3_n_0 ;
  wire \a_to_g_reg[4]_i_1_n_0 ;
  wire \a_to_g_reg[5]_i_1_n_0 ;
  wire \a_to_g_reg[6]_i_1_n_0 ;
  wire \a_to_g_reg[6]_i_2_n_0 ;
  wire \a_to_g_reg[6]_i_3_n_0 ;
  wire \a_to_g_reg[6]_i_4_n_0 ;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;

  LUT2 #(
    .INIT(4'h8)) 
    BI_RBO_n_INST_0
       (.I0(RBO_buffer),
        .I1(BI_RBO_n_INST_0_i_2_n_0),
        .O(BI_RBO_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    BI_RBO_n_INST_0_i_1
       (.I0(BCD_B),
        .I1(BCD_C),
        .I2(BCD_A),
        .I3(LT_n),
        .I4(RBI_n),
        .I5(BCD_D),
        .O(RBO_buffer));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F1F)) 
    BI_RBO_n_INST_0_i_2
       (.I0(BCD_D),
        .I1(RBI_n),
        .I2(LT_n),
        .I3(BCD_A),
        .I4(BCD_C),
        .I5(BCD_B),
        .O(BI_RBO_n_INST_0_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_to_g_reg[0] 
       (.CLR(1'b0),
        .D(\a_to_g_reg[0]_i_1_n_0 ),
        .G(\a_to_g_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(g));
  LUT6 #(
    .INIT(64'hFFFFFFFFA88888AA)) 
    \a_to_g_reg[0]_i_1 
       (.I0(LT_n),
        .I1(a_to_g1__3),
        .I2(BCD_A),
        .I3(\a_to_g_reg[0]_i_3_n_0 ),
        .I4(BCD_B),
        .I5(\a_to_g_reg[0]_i_4_n_0 ),
        .O(\a_to_g_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \a_to_g_reg[0]_i_2 
       (.I0(RBI_n),
        .I1(BCD_A),
        .I2(BCD_C),
        .I3(BCD_B),
        .I4(BCD_D),
        .O(a_to_g1__3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_to_g_reg[0]_i_3 
       (.I0(BCD_C),
        .I1(BCD_D),
        .O(\a_to_g_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \a_to_g_reg[0]_i_4 
       (.I0(BCD_D),
        .I1(LT_n),
        .I2(BCD_B),
        .I3(BCD_A),
        .I4(BI_RBO_n),
        .O(\a_to_g_reg[0]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_to_g_reg[1] 
       (.CLR(1'b0),
        .D(\a_to_g_reg[1]_i_1_n_0 ),
        .G(\a_to_g_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(f));
  LUT6 #(
    .INIT(64'hBBBBBBBBBFBBBBBB)) 
    \a_to_g_reg[1]_i_1 
       (.I0(\a_to_g_reg[1]_i_2_n_0 ),
        .I1(BI_RBO_n),
        .I2(\a_to_g_reg[6]_i_4_n_0 ),
        .I3(BCD_B),
        .I4(BCD_A),
        .I5(BCD_D),
        .O(\a_to_g_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A00AA00000A00A2)) 
    \a_to_g_reg[1]_i_2 
       (.I0(LT_n),
        .I1(RBI_n),
        .I2(BCD_A),
        .I3(BCD_C),
        .I4(BCD_B),
        .I5(BCD_D),
        .O(\a_to_g_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_to_g_reg[2] 
       (.CLR(1'b0),
        .D(\a_to_g_reg[2]_i_1_n_0 ),
        .G(\a_to_g_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(e));
  LUT2 #(
    .INIT(4'h7)) 
    \a_to_g_reg[2]_i_1 
       (.I0(BI_RBO_n),
        .I1(\a_to_g_reg[2]_i_2_n_0 ),
        .O(\a_to_g_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF33F3F3333F3FB)) 
    \a_to_g_reg[2]_i_2 
       (.I0(RBI_n),
        .I1(LT_n),
        .I2(BCD_B),
        .I3(BCD_C),
        .I4(BCD_A),
        .I5(BCD_D),
        .O(\a_to_g_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_to_g_reg[3] 
       (.CLR(1'b0),
        .D(\a_to_g_reg[3]_i_1_n_0 ),
        .G(\a_to_g_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(d));
  LUT6 #(
    .INIT(64'hAABABAAABAAAAABA)) 
    \a_to_g_reg[3]_i_1 
       (.I0(\a_to_g_reg[3]_i_2_n_0 ),
        .I1(\a_to_g_reg[6]_i_4_n_0 ),
        .I2(BCD_A),
        .I3(BCD_C),
        .I4(BCD_D),
        .I5(BCD_B),
        .O(\a_to_g_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \a_to_g_reg[3]_i_2 
       (.I0(\a_to_g_reg[3]_i_3_n_0 ),
        .I1(BI_RBO_n),
        .O(\a_to_g_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A000000000A02)) 
    \a_to_g_reg[3]_i_3 
       (.I0(LT_n),
        .I1(RBI_n),
        .I2(BCD_A),
        .I3(BCD_C),
        .I4(BCD_B),
        .I5(BCD_D),
        .O(\a_to_g_reg[3]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_to_g_reg[4] 
       (.CLR(1'b0),
        .D(\a_to_g_reg[4]_i_1_n_0 ),
        .G(\a_to_g_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(c));
  LUT6 #(
    .INIT(64'h00008200FFFFFFFF)) 
    \a_to_g_reg[4]_i_1 
       (.I0(LT_n),
        .I1(BCD_A),
        .I2(BCD_D),
        .I3(BCD_B),
        .I4(BCD_C),
        .I5(BI_RBO_n),
        .O(\a_to_g_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_to_g_reg[5] 
       (.CLR(1'b0),
        .D(\a_to_g_reg[5]_i_1_n_0 ),
        .G(\a_to_g_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(b));
  LUT6 #(
    .INIT(64'h00080880FFFFFFFF)) 
    \a_to_g_reg[5]_i_1 
       (.I0(LT_n),
        .I1(BCD_C),
        .I2(BCD_D),
        .I3(BCD_B),
        .I4(BCD_A),
        .I5(BI_RBO_n),
        .O(\a_to_g_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_to_g_reg[6] 
       (.CLR(1'b0),
        .D(\a_to_g_reg[6]_i_1_n_0 ),
        .G(\a_to_g_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .Q(a));
  LUT2 #(
    .INIT(4'h7)) 
    \a_to_g_reg[6]_i_1 
       (.I0(BI_RBO_n),
        .I1(\a_to_g_reg[6]_i_3_n_0 ),
        .O(\a_to_g_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \a_to_g_reg[6]_i_2 
       (.I0(BCD_C),
        .I1(BI_RBO_n),
        .I2(BCD_A),
        .I3(\a_to_g_reg[6]_i_4_n_0 ),
        .I4(BCD_D),
        .I5(BCD_B),
        .O(\a_to_g_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDEEFDEEEFFFFFFFF)) 
    \a_to_g_reg[6]_i_3 
       (.I0(BCD_D),
        .I1(BCD_B),
        .I2(BCD_C),
        .I3(BCD_A),
        .I4(RBI_n),
        .I5(LT_n),
        .O(\a_to_g_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \a_to_g_reg[6]_i_4 
       (.I0(BCD_D),
        .I1(BCD_B),
        .I2(BCD_C),
        .I3(BCD_A),
        .I4(RBI_n),
        .I5(LT_n),
        .O(\a_to_g_reg[6]_i_4_n_0 ));
endmodule

(* NotValidForBitStream *)
module peripheral_test_ver
   (A2,
    A1,
    A0,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    AN0,
    AN1,
    AN2,
    AN3,
    DP);
  input A2;
  input A1;
  input A0;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output AN0;
  output AN1;
  output AN2;
  output AN3;
  output DP;

  wire A0;
  wire A0_IBUF;
  wire A1;
  wire A1_IBUF;
  wire A2;
  wire A2_IBUF;
  wire AN0;
  wire AN0_OBUF;
  wire AN1;
  wire AN1_OBUF;
  wire AN2;
  wire AN2_OBUF;
  wire AN3;
  wire AN3_OBUF;
  wire DP;
  wire DP_OBUF;
  wire a;
  wire a_OBUF;
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

initial begin
 $sdf_annotate("peripheral_test_ver_time_synth.sdf",,,,"tool_control");
end
  IBUF A0_IBUF_inst
       (.I(A0),
        .O(A0_IBUF));
  IBUF A1_IBUF_inst
       (.I(A1),
        .O(A1_IBUF));
  IBUF A2_IBUF_inst
       (.I(A2),
        .O(A2_IBUF));
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
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  (* HW_HANDOFF = "peripheral_test.hwdef" *) 
  peripheral_test U1
       (.A0(A0_IBUF),
        .A1(A1_IBUF),
        .A2(A2_IBUF),
        .AN0(AN0_OBUF),
        .AN1(AN1_OBUF),
        .AN2(AN2_OBUF),
        .AN3(AN3_OBUF),
        .DP(DP_OBUF),
        .a(a_OBUF),
        .b(b_OBUF),
        .c(c_OBUF),
        .d(d_OBUF),
        .e(e_OBUF),
        .f(f_OBUF),
        .g(g_OBUF));
  OBUF a_OBUF_inst
       (.I(a_OBUF),
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

(* DowngradeIPIdentifiedWarnings = "yes" *) 
module peripheral_test_xlconstant_0_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) 
module peripheral_test_xlconstant_1_0
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
