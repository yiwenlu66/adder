// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 17:10:41 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/peter/adder/adder.sim/sim_1/synth/func/peripheral_test_tb_func_synth.v
// Design      : peripheral_test_ver
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  wire AN1;
  wire AN2;
  wire AN3;
  wire DP;
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
       (.I(1'b0),
        .O(AN0));
  OBUF AN1_OBUF_inst
       (.I(1'b1),
        .O(AN1));
  OBUF AN2_OBUF_inst
       (.I(1'b1),
        .O(AN2));
  OBUF AN3_OBUF_inst
       (.I(1'b1),
        .O(AN3));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  seven_seg U1
       (.A0_IBUF(A0_IBUF),
        .A1_IBUF(A1_IBUF),
        .A2_IBUF(A2_IBUF),
        .b_OBUF(b_OBUF),
        .c_OBUF(c_OBUF),
        .d_OBUF(d_OBUF),
        .e_OBUF(e_OBUF),
        .f_OBUF(f_OBUF),
        .g_OBUF(g_OBUF));
  OBUF a_OBUF_inst
       (.I(a_OBUF),
        .O(a));
  LUT3 #(
    .INIT(8'h06)) 
    a_OBUF_inst_i_1
       (.I0(A2_IBUF),
        .I1(A0_IBUF),
        .I2(A1_IBUF),
        .O(a_OBUF));
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

module seven_seg
   (g_OBUF,
    f_OBUF,
    e_OBUF,
    d_OBUF,
    c_OBUF,
    b_OBUF,
    A0_IBUF,
    A1_IBUF,
    A2_IBUF);
  output g_OBUF;
  output f_OBUF;
  output e_OBUF;
  output d_OBUF;
  output c_OBUF;
  output b_OBUF;
  input A0_IBUF;
  input A1_IBUF;
  input A2_IBUF;

  wire A0_IBUF;
  wire A1_IBUF;
  wire A2_IBUF;
  wire b_OBUF;
  wire c_OBUF;
  wire d_OBUF;
  wire e_OBUF;
  wire f_OBUF;
  wire g_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    b_OBUF_inst_i_1
       (.I0(A2_IBUF),
        .I1(A1_IBUF),
        .I2(A0_IBUF),
        .O(b_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    c_OBUF_inst_i_1
       (.I0(A1_IBUF),
        .I1(A2_IBUF),
        .I2(A0_IBUF),
        .O(c_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h86)) 
    d_OBUF_inst_i_1
       (.I0(A0_IBUF),
        .I1(A2_IBUF),
        .I2(A1_IBUF),
        .O(d_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    e_OBUF_inst_i_1
       (.I0(A0_IBUF),
        .I1(A1_IBUF),
        .I2(A2_IBUF),
        .O(e_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    f_OBUF_inst_i_1
       (.I0(A1_IBUF),
        .I1(A2_IBUF),
        .I2(A0_IBUF),
        .O(f_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h83)) 
    g_OBUF_inst_i_1
       (.I0(A0_IBUF),
        .I1(A1_IBUF),
        .I2(A2_IBUF),
        .O(g_OBUF));
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
