-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Nov 24 19:32:59 2016
-- Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/peter/adder/adder.srcs/sources_1/bd/top/ip/top_xup_4_to_1_mux_vector_0_0_1/top_xup_4_to_1_mux_vector_0_0_sim_netlist.vhdl
-- Design      : top_xup_4_to_1_mux_vector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector is
  port (
    y : out STD_LOGIC_VECTOR ( 3 downto 0 );
    d : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector : entity is "xup_4_to_1_mux_vector";
end top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector;

architecture STRUCTURE of top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector is
begin
\y[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(0),
      I1 => b(0),
      I2 => sel(0),
      I3 => c(0),
      I4 => sel(1),
      I5 => a(0),
      O => y(0)
    );
\y[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(1),
      I1 => b(1),
      I2 => sel(0),
      I3 => c(1),
      I4 => sel(1),
      I5 => a(1),
      O => y(1)
    );
\y[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(2),
      I1 => b(2),
      I2 => sel(0),
      I3 => c(2),
      I4 => sel(1),
      I5 => a(2),
      O => y(2)
    );
\y[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => d(3),
      I1 => b(3),
      I2 => sel(0),
      I3 => c(3),
      I4 => sel(1),
      I5 => a(3),
      O => y(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xup_4_to_1_mux_vector_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_xup_4_to_1_mux_vector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_xup_4_to_1_mux_vector_0_0 : entity is "top_xup_4_to_1_mux_vector_0_0,xup_4_to_1_mux_vector,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_xup_4_to_1_mux_vector_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_xup_4_to_1_mux_vector_0_0 : entity is "xup_4_to_1_mux_vector,Vivado 2016.3";
end top_xup_4_to_1_mux_vector_0_0;

architecture STRUCTURE of top_xup_4_to_1_mux_vector_0_0 is
begin
inst: entity work.top_xup_4_to_1_mux_vector_0_0_xup_4_to_1_mux_vector
     port map (
      a(3 downto 0) => a(3 downto 0),
      b(3 downto 0) => b(3 downto 0),
      c(3 downto 0) => c(3 downto 0),
      d(3 downto 0) => d(3 downto 0),
      sel(1 downto 0) => sel(1 downto 0),
      y(3 downto 0) => y(3 downto 0)
    );
end STRUCTURE;
