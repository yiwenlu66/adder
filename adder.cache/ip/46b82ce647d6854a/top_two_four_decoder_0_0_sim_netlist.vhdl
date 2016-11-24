-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Nov 24 19:33:45 2016
-- Host        : DESKTOP-82NDHVB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_two_four_decoder_0_0_sim_netlist.vhdl
-- Design      : top_two_four_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_0_0 : entity is "two_four_decoder_xlslice_0_0,xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_0_0 : entity is "xlslice,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_1_0 : entity is "two_four_decoder_xlslice_1_0,xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_1_0 : entity is "xlslice,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_0 : entity is "two_four_decoder_xup_and2_0_0,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_0 : entity is "xup_and2,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_1 : entity is "two_four_decoder_xup_and2_0_1,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_1 : entity is "xup_and2,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_1 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_2 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_2 : entity is "two_four_decoder_xup_and2_0_2,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_2 : entity is "xup_and2,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_2 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_1_0 : entity is "two_four_decoder_xup_and2_1_0,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_1_0 : entity is "xup_and2,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_1_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_0_0 : entity is "two_four_decoder_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_0_0 : entity is "xup_inv,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_0_0 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_1_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_1_0 : entity is "two_four_decoder_xup_inv_1_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_1_0 : entity is "xup_inv,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_1_0 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder is
  port (
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder : entity is "two_four_decoder.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder is
  signal A0_Dout : STD_LOGIC;
  signal A1_Dout : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of A0 : label is "two_four_decoder_xlslice_0_0,xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of A0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of A0 : label is "xlslice,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of A1 : label is "two_four_decoder_xlslice_1_0,xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of A1 : label is "yes";
  attribute X_CORE_INFO of A1 : label is "xlslice,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_and2_0 : label is "two_four_decoder_xup_and2_0_0,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_and2_0 : label is "yes";
  attribute X_CORE_INFO of xup_and2_0 : label is "xup_and2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_and2_1 : label is "two_four_decoder_xup_and2_1_0,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_and2_1 : label is "yes";
  attribute X_CORE_INFO of xup_and2_1 : label is "xup_and2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_and2_2 : label is "two_four_decoder_xup_and2_0_1,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_and2_2 : label is "yes";
  attribute X_CORE_INFO of xup_and2_2 : label is "xup_and2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_and2_3 : label is "two_four_decoder_xup_and2_0_2,xup_and2,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_and2_3 : label is "yes";
  attribute X_CORE_INFO of xup_and2_3 : label is "xup_and2,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_inv_0 : label is "two_four_decoder_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_inv_0 : label is "yes";
  attribute X_CORE_INFO of xup_inv_0 : label is "xup_inv,Vivado 2016.3";
  attribute CHECK_LICENSE_TYPE of xup_inv_1 : label is "two_four_decoder_xup_inv_1_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings of xup_inv_1 : label is "yes";
  attribute X_CORE_INFO of xup_inv_1 : label is "xup_inv,Vivado 2016.3";
begin
A0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_0_0
     port map (
      Din(1 downto 0) => A(1 downto 0),
      Dout(0) => A0_Dout
    );
A1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xlslice_1_0
     port map (
      Din(1 downto 0) => A(1 downto 0),
      Dout(0) => A1_Dout
    );
xup_and2_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_0
     port map (
      a => xup_inv_0_y,
      b => xup_inv_1_y,
      y => Y0
    );
xup_and2_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_1_0
     port map (
      a => xup_inv_1_y,
      b => A0_Dout,
      y => Y1
    );
xup_and2_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_1
     port map (
      a => A1_Dout,
      b => xup_inv_0_y,
      y => Y2
    );
xup_and2_3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_and2_0_2
     port map (
      a => A0_Dout,
      b => A1_Dout,
      y => Y3
    );
xup_inv_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_0_0
     port map (
      a => A0_Dout,
      y => xup_inv_0_y
    );
xup_inv_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder_xup_inv_1_0
     port map (
      a => A1_Dout,
      y => xup_inv_1_y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_two_four_decoder_0_0,two_four_decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "two_four_decoder,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "two_four_decoder.hwdef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_two_four_decoder
     port map (
      A(1 downto 0) => A(1 downto 0),
      Y0 => Y0,
      Y1 => Y1,
      Y2 => Y2,
      Y3 => Y3
    );
end STRUCTURE;
