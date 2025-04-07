-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  1 10:08:01 2025
-- Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ InputInterfaceLayer_data_decryption_0_0_sim_netlist.vhdl
-- Design      : InputInterfaceLayer_data_decryption_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_decryption is
  port (
    decrypted_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC;
    valid_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    encrypted_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_decryption;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_decryption is
  signal decrypted_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal descrambled_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \descrambled_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \descrambled_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \descrambled_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \descrambled_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \descrambled_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \descrambled_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \descrambled_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \descrambled_data[7]_i_1_n_0\ : STD_LOGIC;
  signal lfsr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \descrambled_data[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of p_0_out : label is "soft_lutpair0";
begin
\decrypted_data[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => encrypted_in(1),
      O => p_0_in(1)
    );
\decrypted_data[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => encrypted_in(3),
      O => p_0_in(3)
    );
\decrypted_data[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => encrypted_in(4),
      O => p_0_in(4)
    );
\decrypted_data[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => encrypted_in(6),
      O => p_0_in(6)
    );
\decrypted_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => encrypted_in(0),
      Q => decrypted_data(0)
    );
\decrypted_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => p_0_in(1),
      Q => decrypted_data(1)
    );
\decrypted_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => encrypted_in(2),
      Q => decrypted_data(2)
    );
\decrypted_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => p_0_in(3),
      Q => decrypted_data(3)
    );
\decrypted_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => p_0_in(4),
      Q => decrypted_data(4)
    );
\decrypted_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => encrypted_in(5),
      Q => decrypted_data(5)
    );
\decrypted_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => p_0_in(6),
      Q => decrypted_data(6)
    );
\decrypted_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => encrypted_in(7),
      Q => decrypted_data(7)
    );
\decrypted_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(0),
      Q => decrypted_out(0)
    );
\decrypted_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(1),
      Q => decrypted_out(1)
    );
\decrypted_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(2),
      Q => decrypted_out(2)
    );
\decrypted_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(3),
      Q => decrypted_out(3)
    );
\decrypted_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(4),
      Q => decrypted_out(4)
    );
\decrypted_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(5),
      Q => decrypted_out(5)
    );
\decrypted_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(6),
      Q => decrypted_out(6)
    );
\decrypted_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => descrambled_data(7),
      Q => decrypted_out(7)
    );
\descrambled_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(0),
      I1 => decrypted_data(0),
      O => \descrambled_data[0]_i_1_n_0\
    );
\descrambled_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(1),
      I1 => decrypted_data(1),
      O => \descrambled_data[1]_i_1_n_0\
    );
\descrambled_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(2),
      I1 => decrypted_data(2),
      O => \descrambled_data[2]_i_1_n_0\
    );
\descrambled_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(3),
      I1 => decrypted_data(3),
      O => \descrambled_data[3]_i_1_n_0\
    );
\descrambled_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(4),
      I1 => decrypted_data(4),
      O => \descrambled_data[4]_i_1_n_0\
    );
\descrambled_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(5),
      I1 => decrypted_data(5),
      O => \descrambled_data[5]_i_1_n_0\
    );
\descrambled_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(6),
      I1 => decrypted_data(6),
      O => \descrambled_data[6]_i_1_n_0\
    );
\descrambled_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(7),
      I1 => decrypted_data(7),
      O => \descrambled_data[7]_i_1_n_0\
    );
\descrambled_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[0]_i_1_n_0\,
      Q => descrambled_data(0)
    );
\descrambled_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[1]_i_1_n_0\,
      Q => descrambled_data(1)
    );
\descrambled_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[2]_i_1_n_0\,
      Q => descrambled_data(2)
    );
\descrambled_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[3]_i_1_n_0\,
      Q => descrambled_data(3)
    );
\descrambled_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[4]_i_1_n_0\,
      Q => descrambled_data(4)
    );
\descrambled_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[5]_i_1_n_0\,
      Q => descrambled_data(5)
    );
\descrambled_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[6]_i_1_n_0\,
      Q => descrambled_data(6)
    );
\descrambled_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \descrambled_data[7]_i_1_n_0\,
      Q => descrambled_data(7)
    );
\lfsr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => \p_0_out__0\(0),
      Q => lfsr(0)
    );
\lfsr_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => valid_in,
      D => lfsr(0),
      PRE => reset,
      Q => lfsr(1)
    );
\lfsr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => lfsr(1),
      Q => lfsr(2)
    );
\lfsr_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => valid_in,
      D => lfsr(2),
      PRE => reset,
      Q => lfsr(3)
    );
\lfsr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => lfsr(3),
      Q => lfsr(4)
    );
\lfsr_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => valid_in,
      D => lfsr(4),
      PRE => reset,
      Q => lfsr(5)
    );
\lfsr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => valid_in,
      CLR => reset,
      D => lfsr(5),
      Q => lfsr(6)
    );
\lfsr_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => valid_in,
      D => lfsr(6),
      PRE => reset,
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
valid_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => valid_in,
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
    reset : in STD_LOGIC;
    encrypted_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    decrypted_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "InputInterfaceLayer_data_decryption_0_0,data_decryption,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "data_decryption,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_data_decryption
     port map (
      clk => clk,
      decrypted_out(7 downto 0) => decrypted_out(7 downto 0),
      encrypted_in(7 downto 0) => encrypted_in(7 downto 0),
      reset => reset,
      valid_in => valid_in,
      valid_out => valid_out
    );
end STRUCTURE;
