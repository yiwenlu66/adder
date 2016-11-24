// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 19:33:43 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/peter/adder/adder.srcs/sources_1/bd/top/ip/top_c_counter_binary_0_0/top_c_counter_binary_0_0_sim_netlist.v
// Design      : top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_c_counter_binary_0_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
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
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
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

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "2" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
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
hO2nIxajH5KF9xzTYkIZn+5/rusNR+y8LxmNlveU+Bmo3EMfCxXaNRSsMDzTcDj0z39mh0QiNoLe
efpxJKHedcFM6iJXRxNQTygnr5/KaBQvm6KOA63NRg6C3Mc+suDVwIzJ+YwRjm9O4ff4RgEf0vqX
qaRbujaeInPjofzAdJoL0NWkKXadCfgvsKua37TkPgu1Se2IxJlTvttWUSj6cLqRnKTGsyCQqZ7J
cXL1526L7nQQxNhnwxQVilFxWz8DpZawKsKzLO6gIl3stYQR5YpbqW/C2eS9oehIEbXpWFpwDehy
O3MGOOevUCmhw3D5hCqJsvXHWnSP5o5mHYh2qA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
GOaam9R2f2Qsi0bdHWdUDvlOT2Fe0+C/s9QUk6Z5fP5Tqb2JI6NJuilpUVMgy9xw8M9FOE2euR5U
i5dz3fFtJrJkaONJx04lvGgWXFIy9tJ3Y769R3U2tSSVqwNCO65jZRy7NrlimVh8Bcv0vyrx/McY
V7TCf8RHmbfXcONdAEYBe6Aa5HZgjtUY3gZ/XHqwh6+kObHSjXi2/x7PHA/h37UNF3b/e+8J1fUe
mjAYdyCIvhvkYA9BQ5VIcfPkzIdmJRfB0g+cHIKFK3H1NWhjN+j3CqYf1ZrYBjak4ZmY61e2jG1/
22mCVGrCNuFMkfE/d/2sPMIVf2YVIdNaBAItng==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4240)
`pragma protect data_block
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
9toPUYHBwuTPrmnZuo4NOmlwZhLyXg==
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
