--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Sun Apr 13 23:08:29 2025
--Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
--Command     : generate_target InputInterfaceLayer_wrapper.bd
--Design      : InputInterfaceLayer_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_wrapper is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end InputInterfaceLayer_wrapper;

architecture STRUCTURE of InputInterfaceLayer_wrapper is
  component InputInterfaceLayer is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component InputInterfaceLayer;
begin
InputInterfaceLayer_i: component InputInterfaceLayer
     port map (
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;
