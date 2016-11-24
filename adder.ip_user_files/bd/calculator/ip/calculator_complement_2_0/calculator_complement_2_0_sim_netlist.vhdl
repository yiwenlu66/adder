-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Nov 24 11:56:43 2016
-- Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top calculator_complement_2_0 -prefix
--               calculator_complement_2_0_ calculator_complement_1_0_sim_netlist.vhdl
-- Design      : calculator_complement_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xlconstant_1_0 : entity is "yes";
end calculator_complement_2_0_complement_xlconstant_1_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xlconstant_1_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xlconstant_2_0 : entity is "yes";
end calculator_complement_2_0_complement_xlconstant_2_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xlconstant_2_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xlconstant_3_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xlconstant_3_0 : entity is "yes";
end calculator_complement_2_0_complement_xlconstant_3_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xlconstant_3_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xlconstant_4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xlconstant_4_0 : entity is "yes";
end calculator_complement_2_0_complement_xlconstant_4_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xlconstant_4_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xup_xor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_complement_xup_xor2_0_0 : entity is "complement_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xup_xor2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_complement_xup_xor2_0_0 : entity is "xup_xor2,Vivado 2016.3";
end calculator_complement_2_0_complement_xup_xor2_0_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xup_xor2_0_0 is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xup_xor2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_complement_xup_xor2_1_0 : entity is "complement_xup_xor2_1_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xup_xor2_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_complement_xup_xor2_1_0 : entity is "xup_xor2,Vivado 2016.3";
end calculator_complement_2_0_complement_xup_xor2_1_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xup_xor2_1_0 is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xup_xor2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_complement_xup_xor2_2_0 : entity is "complement_xup_xor2_2_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xup_xor2_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_complement_xup_xor2_2_0 : entity is "xup_xor2,Vivado 2016.3";
end calculator_complement_2_0_complement_xup_xor2_2_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xup_xor2_2_0 is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_xup_xor2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_complement_xup_xor2_3_0 : entity is "complement_xup_xor2_3_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_xup_xor2_3_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_complement_xup_xor2_3_0 : entity is "xup_xor2,Vivado 2016.3";
end calculator_complement_2_0_complement_xup_xor2_3_0;

architecture STRUCTURE of calculator_complement_2_0_complement_xup_xor2_3_0 is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0 : entity is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0 : entity is "xup_inv,Vivado 2016.3";
end calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0;

architecture STRUCTURE of calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0 is
begin
y_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\ is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\ : entity is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\ : entity is "full_adder_1_bit_xup_inv_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\ : entity is "xup_inv,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\ is
begin
y_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\ is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\ : entity is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\ : entity is "full_adder_1_bit_xup_inv_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\ : entity is "xup_inv,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\ is
begin
y_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\ is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\ : entity is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\ : entity is "full_adder_1_bit_xup_inv_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\ : entity is "xup_inv,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\ is
begin
y_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0 : entity is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0 : entity is "xup_nand2,Vivado 2016.3";
end calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0;

architecture STRUCTURE of calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\ : entity is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\ : entity is "full_adder_1_bit_xup_nand2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\ : entity is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\ : entity is "full_adder_1_bit_xup_nand2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\ : entity is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\ : entity is "full_adder_1_bit_xup_nand2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0 : entity is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0 : entity is "xup_nand2,Vivado 2016.3";
end calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0;

architecture STRUCTURE of calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\ : entity is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\ : entity is "full_adder_1_bit_xup_nand2_1_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\ : entity is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\ : entity is "full_adder_1_bit_xup_nand2_1_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\ : entity is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\ : entity is "full_adder_1_bit_xup_nand2_1_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0 : entity is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0 : entity is "xup_nand2,Vivado 2016.3";
end calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0;

architecture STRUCTURE of calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\ : entity is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\ : entity is "full_adder_1_bit_xup_nand2_2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\ : entity is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\ : entity is "full_adder_1_bit_xup_nand2_2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\ : entity is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\ : entity is "full_adder_1_bit_xup_nand2_2_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\ : entity is "xup_nand2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0 : entity is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0 : entity is "xup_xnor2,Vivado 2016.3";
end calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0;

architecture STRUCTURE of calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\ : entity is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\ : entity is "full_adder_1_bit_xup_xnor2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\ : entity is "xup_xnor2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\ : entity is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\ : entity is "full_adder_1_bit_xup_xnor2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\ : entity is "xup_xnor2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\ : entity is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\ : entity is "full_adder_1_bit_xup_xnor2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\ : entity is "xup_xnor2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\ is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0 : entity is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0 : entity is "xup_xor2,Vivado 2016.3";
end calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0;

architecture STRUCTURE of calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0 is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\ : entity is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\ : entity is "full_adder_1_bit_xup_xor2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\ : entity is "xup_xor2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\ is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\ : entity is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\ : entity is "full_adder_1_bit_xup_xor2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\ : entity is "xup_xor2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\ is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\ is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\ : entity is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\ : entity is "full_adder_1_bit_xup_xor2_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\ : entity is "xup_xor2,Vivado 2016.3";
end \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\ is
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_1_bit is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of calculator_complement_2_0_full_adder_1_bit : entity is "full_adder_1_bit.hwdef";
end calculator_complement_2_0_full_adder_1_bit;

architecture STRUCTURE of calculator_complement_2_0_full_adder_1_bit is
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_nand2_0_y : STD_LOGIC;
  signal xup_nand2_2_y : STD_LOGIC;
  signal xup_xor2_0_y : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xup_inv_0 : label is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xup_inv_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xup_inv_0 : label is "xup_inv,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_0 : label is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_0 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_0 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_1 : label is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_1 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_1 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_2 : label is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_2 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_2 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xnor2_0 : label is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xnor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xnor2_0 : label is "xup_xnor2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xor2_0 : label is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_0 : label is "xup_xor2,Vivado 2016.3";
begin
xup_inv_0: entity work.calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0
     port map (
      a => CI,
      y => xup_inv_0_y
    );
xup_nand2_0: entity work.calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0
     port map (
      a => xup_xor2_0_y,
      b => CI,
      y => xup_nand2_0_y
    );
xup_nand2_1: entity work.calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0
     port map (
      a => xup_nand2_0_y,
      b => xup_nand2_2_y,
      y => CO
    );
xup_nand2_2: entity work.calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0
     port map (
      a => A,
      b => B,
      y => xup_nand2_2_y
    );
xup_xnor2_0: entity work.calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0
     port map (
      a => xup_xor2_0_y,
      b => xup_inv_0_y,
      y => S
    );
xup_xor2_0: entity work.calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0
     port map (
      a => A,
      b => B,
      y => xup_xor2_0_y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit__xdcDup__1\ is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of \calculator_complement_2_0_full_adder_1_bit__xdcDup__1\ : entity is "full_adder_1_bit.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit__xdcDup__1\ : entity is "full_adder_1_bit";
end \calculator_complement_2_0_full_adder_1_bit__xdcDup__1\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit__xdcDup__1\ is
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_nand2_0_y : STD_LOGIC;
  signal xup_nand2_2_y : STD_LOGIC;
  signal xup_xor2_0_y : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xup_inv_0 : label is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xup_inv_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xup_inv_0 : label is "xup_inv,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_0 : label is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_0 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_0 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_1 : label is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_1 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_1 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_2 : label is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_2 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_2 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xnor2_0 : label is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xnor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xnor2_0 : label is "xup_xnor2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xor2_0 : label is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_0 : label is "xup_xor2,Vivado 2016.3";
begin
xup_inv_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__4\
     port map (
      a => CI,
      y => xup_inv_0_y
    );
xup_nand2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__4\
     port map (
      a => xup_xor2_0_y,
      b => CI,
      y => xup_nand2_0_y
    );
xup_nand2_1: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__4\
     port map (
      a => xup_nand2_0_y,
      b => xup_nand2_2_y,
      y => CO
    );
xup_nand2_2: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__4\
     port map (
      a => A,
      b => B,
      y => xup_nand2_2_y
    );
xup_xnor2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__4\
     port map (
      a => xup_xor2_0_y,
      b => xup_inv_0_y,
      y => S
    );
xup_xor2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__4\
     port map (
      a => A,
      b => B,
      y => xup_xor2_0_y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit__xdcDup__2\ is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of \calculator_complement_2_0_full_adder_1_bit__xdcDup__2\ : entity is "full_adder_1_bit.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit__xdcDup__2\ : entity is "full_adder_1_bit";
end \calculator_complement_2_0_full_adder_1_bit__xdcDup__2\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit__xdcDup__2\ is
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_nand2_0_y : STD_LOGIC;
  signal xup_nand2_2_y : STD_LOGIC;
  signal xup_xor2_0_y : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xup_inv_0 : label is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xup_inv_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xup_inv_0 : label is "xup_inv,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_0 : label is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_0 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_0 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_1 : label is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_1 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_1 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_2 : label is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_2 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_2 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xnor2_0 : label is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xnor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xnor2_0 : label is "xup_xnor2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xor2_0 : label is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_0 : label is "xup_xor2,Vivado 2016.3";
begin
xup_inv_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__5\
     port map (
      a => CI,
      y => xup_inv_0_y
    );
xup_nand2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__5\
     port map (
      a => xup_xor2_0_y,
      b => CI,
      y => xup_nand2_0_y
    );
xup_nand2_1: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__5\
     port map (
      a => xup_nand2_0_y,
      b => xup_nand2_2_y,
      y => CO
    );
xup_nand2_2: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__5\
     port map (
      a => A,
      b => B,
      y => xup_nand2_2_y
    );
xup_xnor2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__5\
     port map (
      a => xup_xor2_0_y,
      b => xup_inv_0_y,
      y => S
    );
xup_xor2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__5\
     port map (
      a => A,
      b => B,
      y => xup_xor2_0_y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \calculator_complement_2_0_full_adder_1_bit__xdcDup__3\ is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of \calculator_complement_2_0_full_adder_1_bit__xdcDup__3\ : entity is "full_adder_1_bit.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \calculator_complement_2_0_full_adder_1_bit__xdcDup__3\ : entity is "full_adder_1_bit";
end \calculator_complement_2_0_full_adder_1_bit__xdcDup__3\;

architecture STRUCTURE of \calculator_complement_2_0_full_adder_1_bit__xdcDup__3\ is
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_nand2_0_y : STD_LOGIC;
  signal xup_nand2_2_y : STD_LOGIC;
  signal xup_xor2_0_y : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xup_inv_0 : label is "full_adder_1_bit_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xup_inv_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xup_inv_0 : label is "xup_inv,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_0 : label is "full_adder_1_bit_xup_nand2_0_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_0 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_0 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_1 : label is "full_adder_1_bit_xup_nand2_1_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_1 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_1 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_nand2_2 : label is "full_adder_1_bit_xup_nand2_2_0,xup_nand2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_nand2_2 : label is "yes";
  attribute X_CORE_INFO of xup_nand2_2 : label is "xup_nand2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xnor2_0 : label is "full_adder_1_bit_xup_xnor2_0_0,xup_xnor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xnor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xnor2_0 : label is "xup_xnor2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xor2_0 : label is "full_adder_1_bit_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_0 : label is "xup_xor2,Vivado 2016.3";
begin
xup_inv_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_inv_0_0__6\
     port map (
      a => CI,
      y => xup_inv_0_y
    );
xup_nand2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_0_0__6\
     port map (
      a => xup_xor2_0_y,
      b => CI,
      y => xup_nand2_0_y
    );
xup_nand2_1: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_1_0__6\
     port map (
      a => xup_nand2_0_y,
      b => xup_nand2_2_y,
      y => CO
    );
xup_nand2_2: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_nand2_2_0__6\
     port map (
      a => A,
      b => B,
      y => xup_nand2_2_y
    );
xup_xnor2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_xnor2_0_0__6\
     port map (
      a => xup_xor2_0_y,
      b => xup_inv_0_y,
      y => S
    );
xup_xor2_0: entity work.\calculator_complement_2_0_full_adder_1_bit_xup_xor2_0_0__6\
     port map (
      a => A,
      b => B,
      y => xup_xor2_0_y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_0 : entity is "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_0 : entity is "full_adder_1_bit,Vivado 2016.3";
end calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_0;

architecture STRUCTURE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "full_adder_1_bit.hwdef";
begin
inst: entity work.\calculator_complement_2_0_full_adder_1_bit__xdcDup__1\
     port map (
      A => A,
      B => B,
      CI => CI,
      CO => CO,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_1 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_1 : entity is "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_1 : entity is "full_adder_1_bit,Vivado 2016.3";
end calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_1;

architecture STRUCTURE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_1 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "full_adder_1_bit.hwdef";
begin
inst: entity work.\calculator_complement_2_0_full_adder_1_bit__xdcDup__2\
     port map (
      A => A,
      B => B,
      CI => CI,
      CO => CO,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_2 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_2 : entity is "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_2 : entity is "full_adder_1_bit,Vivado 2016.3";
end calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_2;

architecture STRUCTURE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_2 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "full_adder_1_bit.hwdef";
begin
inst: entity work.\calculator_complement_2_0_full_adder_1_bit__xdcDup__3\
     port map (
      A => A,
      B => B,
      CI => CI,
      CO => CO,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_3 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_3 : entity is "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_3 : entity is "full_adder_1_bit,Vivado 2016.3";
end calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_3;

architecture STRUCTURE of calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_3 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "full_adder_1_bit.hwdef";
begin
inst: entity work.calculator_complement_2_0_full_adder_1_bit
     port map (
      A => A,
      B => B,
      CI => CI,
      CO => CO,
      S => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_full_adder_4_bit is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    B0 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    B3 : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S0 : out STD_LOGIC;
    S1 : out STD_LOGIC;
    S2 : out STD_LOGIC;
    S3 : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of calculator_complement_2_0_full_adder_4_bit : entity is "full_adder_4_bit.hwdef";
end calculator_complement_2_0_full_adder_4_bit;

architecture STRUCTURE of calculator_complement_2_0_full_adder_4_bit is
  signal full_adder_1_bit_0_CO : STD_LOGIC;
  signal full_adder_1_bit_1_CO : STD_LOGIC;
  signal full_adder_1_bit_2_CO : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of full_adder_1_bit_0 : label is "full_adder_4_bit_full_adder_1_bit_0_0,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of full_adder_1_bit_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of full_adder_1_bit_0 : label is "full_adder_1_bit,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of full_adder_1_bit_1 : label is "full_adder_4_bit_full_adder_1_bit_0_1,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings of full_adder_1_bit_1 : label is "yes";
  attribute X_CORE_INFO of full_adder_1_bit_1 : label is "full_adder_1_bit,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of full_adder_1_bit_2 : label is "full_adder_4_bit_full_adder_1_bit_0_2,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings of full_adder_1_bit_2 : label is "yes";
  attribute X_CORE_INFO of full_adder_1_bit_2 : label is "full_adder_1_bit,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of full_adder_1_bit_3 : label is "full_adder_4_bit_full_adder_1_bit_0_3,full_adder_1_bit,{}";
  attribute DowngradeIPIdentifiedWarnings of full_adder_1_bit_3 : label is "yes";
  attribute X_CORE_INFO of full_adder_1_bit_3 : label is "full_adder_1_bit,Vivado 2016.3";
begin
full_adder_1_bit_0: entity work.calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_0
     port map (
      A => A0,
      B => B0,
      CI => CI,
      CO => full_adder_1_bit_0_CO,
      S => S0
    );
full_adder_1_bit_1: entity work.calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_1
     port map (
      A => A1,
      B => B1,
      CI => full_adder_1_bit_0_CO,
      CO => full_adder_1_bit_1_CO,
      S => S1
    );
full_adder_1_bit_2: entity work.calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_2
     port map (
      A => A2,
      B => B2,
      CI => full_adder_1_bit_1_CO,
      CO => full_adder_1_bit_2_CO,
      S => S2
    );
full_adder_1_bit_3: entity work.calculator_complement_2_0_full_adder_4_bit_full_adder_1_bit_0_3
     port map (
      A => A3,
      B => B3,
      CI => full_adder_1_bit_2_CO,
      CO => CO,
      S => S3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement_full_adder_4_bit_0_0 is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    B0 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    B3 : in STD_LOGIC;
    CI : in STD_LOGIC;
    CO : out STD_LOGIC;
    S0 : out STD_LOGIC;
    S1 : out STD_LOGIC;
    S2 : out STD_LOGIC;
    S3 : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0_complement_full_adder_4_bit_0_0 : entity is "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0_complement_full_adder_4_bit_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0_complement_full_adder_4_bit_0_0 : entity is "full_adder_4_bit,Vivado 2016.3";
end calculator_complement_2_0_complement_full_adder_4_bit_0_0;

architecture STRUCTURE of calculator_complement_2_0_complement_full_adder_4_bit_0_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "full_adder_4_bit.hwdef";
begin
inst: entity work.calculator_complement_2_0_full_adder_4_bit
     port map (
      A0 => A0,
      A1 => A1,
      A2 => A2,
      A3 => A3,
      B0 => B0,
      B1 => B1,
      B2 => B2,
      B3 => B3,
      CI => CI,
      CO => CO,
      S0 => S0,
      S1 => S1,
      S2 => S2,
      S3 => S3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0_complement is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    COMP : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of calculator_complement_2_0_complement : entity is "complement.hwdef";
end calculator_complement_2_0_complement;

architecture STRUCTURE of calculator_complement_2_0_complement is
  signal xlconstant_1_dout : STD_LOGIC;
  signal xlconstant_2_dout : STD_LOGIC;
  signal xlconstant_3_dout : STD_LOGIC;
  signal xlconstant_4_dout : STD_LOGIC;
  signal xup_xor2_0_y : STD_LOGIC;
  signal xup_xor2_1_y : STD_LOGIC;
  signal xup_xor2_2_y : STD_LOGIC;
  signal xup_xor2_3_y : STD_LOGIC;
  signal NLW_full_adder_4_bit_0_CO_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of full_adder_4_bit_0 : label is "complement_full_adder_4_bit_0_0,full_adder_4_bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of full_adder_4_bit_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of full_adder_4_bit_0 : label is "full_adder_4_bit,Vivado 2016.3";
  attribute DowngradeIPIdentifiedWarnings of xlconstant_1 : label is "yes";
  attribute DowngradeIPIdentifiedWarnings of xlconstant_2 : label is "yes";
  attribute DowngradeIPIdentifiedWarnings of xlconstant_3 : label is "yes";
  attribute DowngradeIPIdentifiedWarnings of xlconstant_4 : label is "yes";
  attribute CHECK_LICENSE_TYPE of xup_xor2_0 : label is "complement_xup_xor2_0_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_0 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_0 : label is "xup_xor2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xor2_1 : label is "complement_xup_xor2_1_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_1 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_1 : label is "xup_xor2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xor2_2 : label is "complement_xup_xor2_2_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_2 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_2 : label is "xup_xor2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_xor2_3 : label is "complement_xup_xor2_3_0,xup_xor2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_xor2_3 : label is "yes";
  attribute X_CORE_INFO of xup_xor2_3 : label is "xup_xor2,Vivado 2016.3";
begin
full_adder_4_bit_0: entity work.calculator_complement_2_0_complement_full_adder_4_bit_0_0
     port map (
      A0 => COMP,
      A1 => xlconstant_1_dout,
      A2 => xlconstant_2_dout,
      A3 => xlconstant_3_dout,
      B0 => xup_xor2_0_y,
      B1 => xup_xor2_1_y,
      B2 => xup_xor2_2_y,
      B3 => xup_xor2_3_y,
      CI => xlconstant_4_dout,
      CO => NLW_full_adder_4_bit_0_CO_UNCONNECTED,
      S0 => Y0,
      S1 => Y1,
      S2 => Y2,
      S3 => Y3
    );
xlconstant_1: entity work.calculator_complement_2_0_complement_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout
    );
xlconstant_2: entity work.calculator_complement_2_0_complement_xlconstant_2_0
     port map (
      dout(0) => xlconstant_2_dout
    );
xlconstant_3: entity work.calculator_complement_2_0_complement_xlconstant_3_0
     port map (
      dout(0) => xlconstant_3_dout
    );
xlconstant_4: entity work.calculator_complement_2_0_complement_xlconstant_4_0
     port map (
      dout(0) => xlconstant_4_dout
    );
xup_xor2_0: entity work.calculator_complement_2_0_complement_xup_xor2_0_0
     port map (
      a => A0,
      b => COMP,
      y => xup_xor2_0_y
    );
xup_xor2_1: entity work.calculator_complement_2_0_complement_xup_xor2_1_0
     port map (
      a => A1,
      b => COMP,
      y => xup_xor2_1_y
    );
xup_xor2_2: entity work.calculator_complement_2_0_complement_xup_xor2_2_0
     port map (
      a => A2,
      b => COMP,
      y => xup_xor2_2_y
    );
xup_xor2_3: entity work.calculator_complement_2_0_complement_xup_xor2_3_0
     port map (
      a => A3,
      b => COMP,
      y => xup_xor2_3_y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calculator_complement_2_0 is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    COMP : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of calculator_complement_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calculator_complement_2_0 : entity is "calculator_complement_1_0,complement,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calculator_complement_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calculator_complement_2_0 : entity is "complement,Vivado 2016.3";
end calculator_complement_2_0;

architecture STRUCTURE of calculator_complement_2_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "complement.hwdef";
begin
inst: entity work.calculator_complement_2_0_complement
     port map (
      A0 => A0,
      A1 => A1,
      A2 => A2,
      A3 => A3,
      COMP => COMP,
      Y0 => Y0,
      Y1 => Y1,
      Y2 => Y2,
      Y3 => Y3
    );
end STRUCTURE;
