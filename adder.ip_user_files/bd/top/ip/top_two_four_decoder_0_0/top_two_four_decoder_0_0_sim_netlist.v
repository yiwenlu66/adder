// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 19:33:45 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/peter/adder/adder.srcs/sources_1/bd/top/ip/top_two_four_decoder_0_0/top_two_four_decoder_0_0_sim_netlist.v
// Design      : top_two_four_decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_two_four_decoder_0_0,two_four_decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "two_four_decoder,Vivado 2016.3" *) 
(* NotValidForBitStream *)
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
