-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Apr  1 10:07:13 2025
-- Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top InputInterfaceLayer_data_transmission_0_0 -prefix
--               InputInterfaceLayer_data_transmission_0_0_ InputInterfaceLayer_data_transmission_0_0_sim_netlist.vhdl
-- Design      : InputInterfaceLayer_data_transmission_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_data_transmission_0_0_data_transmission is
  port (
    tx_valid_out : out STD_LOGIC;
    tx_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
end InputInterfaceLayer_data_transmission_0_0_data_transmission;

architecture STRUCTURE of InputInterfaceLayer_data_transmission_0_0_data_transmission is
  signal rd_en_int_i_1_n_0 : STD_LOGIC;
  signal \tx_data_out[7]_i_1_n_0\ : STD_LOGIC;
begin
rd_en_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifo_empty,
      I1 => fifo_dout(8),
      I2 => rst,
      O => rd_en_int_i_1_n_0
    );
rd_en_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_en_int_i_1_n_0,
      Q => tx_valid_out,
      R => '0'
    );
\tx_data_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_dout(8),
      I1 => fifo_empty,
      O => \tx_data_out[7]_i_1_n_0\
    );
\tx_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(0),
      Q => tx_data_out(0),
      R => rst
    );
\tx_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(1),
      Q => tx_data_out(1),
      R => rst
    );
\tx_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(2),
      Q => tx_data_out(2),
      R => rst
    );
\tx_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(3),
      Q => tx_data_out(3),
      R => rst
    );
\tx_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(4),
      Q => tx_data_out(4),
      R => rst
    );
\tx_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(5),
      Q => tx_data_out(5),
      R => rst
    );
\tx_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(6),
      Q => tx_data_out(6),
      R => rst
    );
\tx_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data_out[7]_i_1_n_0\,
      D => fifo_dout(7),
      Q => tx_data_out(7),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_data_transmission_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_dout : in STD_LOGIC_VECTOR ( 17 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    tx_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_valid_out : out STD_LOGIC;
    ready_for_data : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of InputInterfaceLayer_data_transmission_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of InputInterfaceLayer_data_transmission_0_0 : entity is "InputInterfaceLayer_data_transmission_0_0,data_transmission,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of InputInterfaceLayer_data_transmission_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of InputInterfaceLayer_data_transmission_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of InputInterfaceLayer_data_transmission_0_0 : entity is "data_transmission,Vivado 2021.1";
end InputInterfaceLayer_data_transmission_0_0;

architecture STRUCTURE of InputInterfaceLayer_data_transmission_0_0 is
  signal \^tx_valid_out\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clock_layer/clk_wiz_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  fifo_rd_en <= \^tx_valid_out\;
  tx_valid_out <= \^tx_valid_out\;
U0: entity work.InputInterfaceLayer_data_transmission_0_0_data_transmission
     port map (
      clk => clk,
      fifo_dout(8 downto 0) => fifo_dout(8 downto 0),
      fifo_empty => fifo_empty,
      rst => rst,
      tx_data_out(7 downto 0) => tx_data_out(7 downto 0),
      tx_valid_out => \^tx_valid_out\
    );
ready_for_data_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifo_full,
      O => ready_for_data
    );
end STRUCTURE;
