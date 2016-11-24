-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Nov 24 10:42:32 2016
-- Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/peter/adder/adder.srcs/sources_1/bd/full_adder_1_bit/ip/full_adder_1_bit_xup_inv_0_0/full_adder_1_bit_xup_inv_0_0_stub.vhdl
-- Design      : full_adder_1_bit_xup_inv_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_1_bit_xup_inv_0_0 is
  Port ( 
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );

end full_adder_1_bit_xup_inv_0_0;

architecture stub of full_adder_1_bit_xup_inv_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_inv,Vivado 2016.3";
begin
end;
