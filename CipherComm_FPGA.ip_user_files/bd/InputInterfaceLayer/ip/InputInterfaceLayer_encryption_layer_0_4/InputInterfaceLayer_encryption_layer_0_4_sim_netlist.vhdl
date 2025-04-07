-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  1 10:07:05 2025
-- Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top InputInterfaceLayer_encryption_layer_0_4 -prefix
--               InputInterfaceLayer_encryption_layer_0_4_ InputInterfaceLayer_encryption_layer_0_4_sim_netlist.vhdl
-- Design      : InputInterfaceLayer_encryption_layer_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_encryption_layer_0_4_encryption_interface is
  port (
    encrypted_valid_out : out STD_LOGIC;
    encrypted_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end InputInterfaceLayer_encryption_layer_0_4_encryption_interface;

architecture STRUCTURE of InputInterfaceLayer_encryption_layer_0_4_encryption_interface is
begin
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(0),
      Q => encrypted_data_out(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(1),
      Q => encrypted_data_out(1)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(2),
      Q => encrypted_data_out(2)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(3),
      Q => encrypted_data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(4),
      Q => encrypted_data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(5),
      Q => encrypted_data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(6),
      Q => encrypted_data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => Q(7),
      Q => encrypted_data_out(7)
    );
valid_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => valid_out,
      Q => encrypted_valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_encryption_layer_0_4_encryption_logic is
  port (
    valid_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambled_valid_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    scrambled_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end InputInterfaceLayer_encryption_layer_0_4_encryption_logic;

architecture STRUCTURE of InputInterfaceLayer_encryption_layer_0_4_encryption_logic is
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 1 );
begin
\data_out[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scrambled_data_in(1),
      O => p_0_in(1)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scrambled_data_in(3),
      O => p_0_in(3)
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scrambled_data_in(4),
      O => p_0_in(4)
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scrambled_data_in(6),
      O => p_0_in(6)
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => scrambled_data_in(0),
      Q => Q(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => p_0_in(1),
      Q => Q(1)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => scrambled_data_in(2),
      Q => Q(2)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => p_0_in(3),
      Q => Q(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => p_0_in(4),
      Q => Q(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => scrambled_data_in(5),
      Q => Q(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => p_0_in(6),
      Q => Q(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scrambled_valid_in,
      CLR => reset,
      D => scrambled_data_in(7),
      Q => Q(7)
    );
valid_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => scrambled_valid_in,
      Q => valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_encryption_layer_0_4_encryption_layer is
  port (
    encrypted_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out : out STD_LOGIC;
    scrambled_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambled_valid_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end InputInterfaceLayer_encryption_layer_0_4_encryption_layer;

architecture STRUCTURE of InputInterfaceLayer_encryption_layer_0_4_encryption_layer is
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal valid_out : STD_LOGIC;
begin
encryption_interface_inst: entity work.InputInterfaceLayer_encryption_layer_0_4_encryption_interface
     port map (
      Q(7 downto 0) => data_out(7 downto 0),
      clk => clk,
      encrypted_data_out(7 downto 0) => encrypted_data_out(7 downto 0),
      encrypted_valid_out => encrypted_valid_out,
      reset => reset,
      valid_out => valid_out
    );
encryption_logic_inst: entity work.InputInterfaceLayer_encryption_layer_0_4_encryption_logic
     port map (
      Q(7 downto 0) => data_out(7 downto 0),
      clk => clk,
      reset => reset,
      scrambled_data_in(7 downto 0) => scrambled_data_in(7 downto 0),
      scrambled_valid_in => scrambled_valid_in,
      valid_out => valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_encryption_layer_0_4 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    scrambled_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambled_valid_in : in STD_LOGIC;
    encrypted_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of InputInterfaceLayer_encryption_layer_0_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of InputInterfaceLayer_encryption_layer_0_4 : entity is "InputInterfaceLayer_encryption_layer_0_4,encryption_layer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of InputInterfaceLayer_encryption_layer_0_4 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of InputInterfaceLayer_encryption_layer_0_4 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of InputInterfaceLayer_encryption_layer_0_4 : entity is "encryption_layer,Vivado 2021.1";
end InputInterfaceLayer_encryption_layer_0_4;

architecture STRUCTURE of InputInterfaceLayer_encryption_layer_0_4 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.InputInterfaceLayer_encryption_layer_0_4_encryption_layer
     port map (
      clk => clk,
      encrypted_data_out(7 downto 0) => encrypted_data_out(7 downto 0),
      encrypted_valid_out => encrypted_valid_out,
      reset => reset,
      scrambled_data_in(7 downto 0) => scrambled_data_in(7 downto 0),
      scrambled_valid_in => scrambled_valid_in
    );
end STRUCTURE;
