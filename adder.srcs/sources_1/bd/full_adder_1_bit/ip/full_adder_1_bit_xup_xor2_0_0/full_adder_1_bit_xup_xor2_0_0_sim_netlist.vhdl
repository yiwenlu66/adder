-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Nov 24 10:41:52 2016
-- Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/peter/adder/adder.srcs/sources_1/bd/full_adder_1_bit/ip/full_adder_1_bit_xup_xor2_0_0/full_adder_1_bit_xup_xor2_0_0_sim_netlist.vhdl
-- Design      : full_adder_1_bit_xup_xor2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity full_adder_1_bit_xup_xor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of full_adder_1_bit_xup_xor2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of full_adder_1_bit_xup_xor2_0_0 : entity is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of full_adder_1_bit_xup_xor2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of full_adder_1_bit_xup_xor2_0_0 : entity is "xup_xor2,Vivado 2016.3";
end full_adder_1_bit_xup_xor2_0_0;

architecture STRUCTURE of full_adder_1_bit_xup_xor2_0_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
