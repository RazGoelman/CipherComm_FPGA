-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  1 10:06:03 2025
-- Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InputInterfaceLayer_scrambler_0_0_sim_netlist.vhdl
-- Design      : InputInterfaceLayer_scrambler_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scrambler is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    enable : in STD_LOGIC;
    valid_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scrambler;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scrambler is
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal lfsr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal scrambled : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \scrambled[0]_i_1_n_0\ : STD_LOGIC;
  signal \scrambled[1]_i_1_n_0\ : STD_LOGIC;
  signal \scrambled[2]_i_1_n_0\ : STD_LOGIC;
  signal \scrambled[3]_i_1_n_0\ : STD_LOGIC;
  signal \scrambled[4]_i_1_n_0\ : STD_LOGIC;
  signal \scrambled[5]_i_1_n_0\ : STD_LOGIC;
  signal \scrambled[6]_i_1_n_0\ : STD_LOGIC;
  signal \scrambled[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of p_0_out : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \scrambled[4]_i_1\ : label is "soft_lutpair0";
begin
\data_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => valid_in,
      O => \data_out[7]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(0),
      Q => data_out(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(1),
      Q => data_out(1)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(2),
      Q => data_out(2)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(3),
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(4),
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(5),
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(6),
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => scrambled(7),
      Q => data_out(7)
    );
\lfsr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_out__0\(0),
      Q => lfsr(0)
    );
\lfsr_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => lfsr(0),
      PRE => rst,
      Q => lfsr(1)
    );
\lfsr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => lfsr(1),
      Q => lfsr(2)
    );
\lfsr_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => lfsr(2),
      PRE => rst,
      Q => lfsr(3)
    );
\lfsr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => lfsr(3),
      Q => lfsr(4)
    );
\lfsr_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => lfsr(4),
      PRE => rst,
      Q => lfsr(5)
    );
\lfsr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => lfsr(5),
      Q => lfsr(6)
    );
\lfsr_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      D => lfsr(6),
      PRE => rst,
      Q => lfsr(7)
    );
p_0_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lfsr(4),
      I1 => lfsr(5),
      I2 => lfsr(7),
      I3 => lfsr(3),
      O => \p_0_out__0\(0)
    );
\scrambled[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(0),
      I1 => data_in(0),
      O => \scrambled[0]_i_1_n_0\
    );
\scrambled[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(1),
      I1 => data_in(1),
      O => \scrambled[1]_i_1_n_0\
    );
\scrambled[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(2),
      I1 => data_in(2),
      O => \scrambled[2]_i_1_n_0\
    );
\scrambled[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(3),
      I1 => data_in(3),
      O => \scrambled[3]_i_1_n_0\
    );
\scrambled[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(4),
      I1 => data_in(4),
      O => \scrambled[4]_i_1_n_0\
    );
\scrambled[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(5),
      I1 => data_in(5),
      O => \scrambled[5]_i_1_n_0\
    );
\scrambled[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(6),
      I1 => data_in(6),
      O => \scrambled[6]_i_1_n_0\
    );
\scrambled[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(7),
      I1 => data_in(7),
      O => \scrambled[7]_i_1_n_0\
    );
\scrambled_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[0]_i_1_n_0\,
      Q => scrambled(0)
    );
\scrambled_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[1]_i_1_n_0\,
      Q => scrambled(1)
    );
\scrambled_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[2]_i_1_n_0\,
      Q => scrambled(2)
    );
\scrambled_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[3]_i_1_n_0\,
      Q => scrambled(3)
    );
\scrambled_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[4]_i_1_n_0\,
      Q => scrambled(4)
    );
\scrambled_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[5]_i_1_n_0\,
      Q => scrambled(5)
    );
\scrambled_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[6]_i_1_n_0\,
      Q => scrambled(6)
    );
\scrambled_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out[7]_i_1_n_0\,
      CLR => rst,
      D => \scrambled[7]_i_1_n_0\,
      Q => scrambled(7)
    );
valid_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \data_out[7]_i_1_n_0\,
      Q => valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "InputInterfaceLayer_scrambler_0_0,scrambler,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "scrambler,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scrambler
     port map (
      clk => clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      enable => enable,
      rst => rst,
      valid_in => valid_in,
      valid_out => valid_out
    );
end STRUCTURE;
