// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Nov 24 19:33:43 2016
// Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_c_counter_binary_0_0_sim_netlist.v
// Design      : top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_c_counter_binary_0_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_10_viv i_synth
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
OZVJZGvFZwOqi298PIrNlLBJNwryRZtvu3LQnImzctnfNqTTsDmj4tnSIYxCOsocQeiaH7sA1SXZ
Ucm5pBWrji9fNVjDM7HMPIcO3UEOE/3lJLGjKyV/as14dqs0dj/ELtxhCiDa+AHScQeQCyJLtA0x
yu4VYqh5QZEMIEkdWyKsYDtWkXZFNmFWS7qAV0Rw98Y3YHAy93rBgifIEtsdbBiMVZJEIK0yZikH
GlvEuA838v95VVf0+nHt0I0xCVv/dCzB6aOQyjOfPoig/N2WG99x/CdWZ8r4DXhZ8c5Bbvh1DTW9
J7wqpO99HGLWsVTwqwtthR+QmwwRlBS7InsqFw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Inab3qLOcaa3P5OSGfG5VtjhZJhzIEeKXFxGbemwnIKp4f4qG1105t9Bg3cpK/IB34/0Ddp2Z6LN
RI0oUoOH7ZGr7e4Ct/mXK8lrwLuJsiYxkKrTlv1hDwsoDqQkCCp7HFXpxpDrCksAZCNSWJzFpiBY
qc3aMHLjn9IM9Ppzedmj86Vn9UgfpJ4iUe7bHe2JYBs1wZo6TVQASYvZo7aU/M7Me4vXZJTGBDb5
Cm7EoeN4pZ1CNMhshFd1RRsSrF+YFVOyJWSNfXoOUCSFF49/FJQKD8gFUjGVu2BNeY34bV5j2wLX
WctrgZKUD1e17sKMAIJSjoYjReIHmTlJwzLjZg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4112)
`pragma protect data_block
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
D5Jq2q8JlP4=
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
