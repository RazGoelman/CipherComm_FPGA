--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Sat Apr  5 11:25:55 2025
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
    acl_spi_io0_io : inout STD_LOGIC;
    acl_spi_io1_io : inout STD_LOGIC;
    acl_spi_sck_io : inout STD_LOGIC;
    acl_spi_ss_io : inout STD_LOGIC;
    data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    enable : in STD_LOGIC;
    encrypted_data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out_0 : out STD_LOGIC;
    mdio_rtl_mdc : out STD_LOGIC;
    mdio_rtl_mdio_io : inout STD_LOGIC;
    mii_rtl_col : in STD_LOGIC;
    mii_rtl_crs : in STD_LOGIC;
    mii_rtl_rst_n : out STD_LOGIC;
    mii_rtl_rx_clk : in STD_LOGIC;
    mii_rtl_rx_dv : in STD_LOGIC;
    mii_rtl_rx_er : in STD_LOGIC;
    mii_rtl_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rtl_tx_clk : in STD_LOGIC;
    mii_rtl_tx_en : out STD_LOGIC;
    mii_rtl_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    temp_sensor_scl_io : inout STD_LOGIC;
    temp_sensor_sda_io : inout STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    valid_in : in STD_LOGIC;
    valid_out_0 : out STD_LOGIC
  );
end InputInterfaceLayer_wrapper;

architecture STRUCTURE of InputInterfaceLayer_wrapper is
  component InputInterfaceLayer is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    encrypted_data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out_0 : out STD_LOGIC;
    enable : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    mdio_rtl_mdc : out STD_LOGIC;
    mdio_rtl_mdio_i : in STD_LOGIC;
    mdio_rtl_mdio_o : out STD_LOGIC;
    mdio_rtl_mdio_t : out STD_LOGIC;
    mii_rtl_col : in STD_LOGIC;
    mii_rtl_crs : in STD_LOGIC;
    mii_rtl_rst_n : out STD_LOGIC;
    mii_rtl_rx_clk : in STD_LOGIC;
    mii_rtl_rx_dv : in STD_LOGIC;
    mii_rtl_rx_er : in STD_LOGIC;
    mii_rtl_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rtl_tx_clk : in STD_LOGIC;
    mii_rtl_tx_en : out STD_LOGIC;
    mii_rtl_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    temp_sensor_scl_i : in STD_LOGIC;
    temp_sensor_scl_o : out STD_LOGIC;
    temp_sensor_scl_t : out STD_LOGIC;
    temp_sensor_sda_i : in STD_LOGIC;
    temp_sensor_sda_o : out STD_LOGIC;
    temp_sensor_sda_t : out STD_LOGIC;
    acl_spi_io0_i : in STD_LOGIC;
    acl_spi_io0_o : out STD_LOGIC;
    acl_spi_io0_t : out STD_LOGIC;
    acl_spi_io1_i : in STD_LOGIC;
    acl_spi_io1_o : out STD_LOGIC;
    acl_spi_io1_t : out STD_LOGIC;
    acl_spi_sck_i : in STD_LOGIC;
    acl_spi_sck_o : out STD_LOGIC;
    acl_spi_sck_t : out STD_LOGIC;
    acl_spi_ss_i : in STD_LOGIC;
    acl_spi_ss_o : out STD_LOGIC;
    acl_spi_ss_t : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out_0 : out STD_LOGIC
  );
  end component InputInterfaceLayer;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal acl_spi_io0_i : STD_LOGIC;
  signal acl_spi_io0_o : STD_LOGIC;
  signal acl_spi_io0_t : STD_LOGIC;
  signal acl_spi_io1_i : STD_LOGIC;
  signal acl_spi_io1_o : STD_LOGIC;
  signal acl_spi_io1_t : STD_LOGIC;
  signal acl_spi_sck_i : STD_LOGIC;
  signal acl_spi_sck_o : STD_LOGIC;
  signal acl_spi_sck_t : STD_LOGIC;
  signal acl_spi_ss_i : STD_LOGIC;
  signal acl_spi_ss_o : STD_LOGIC;
  signal acl_spi_ss_t : STD_LOGIC;
  signal mdio_rtl_mdio_i : STD_LOGIC;
  signal mdio_rtl_mdio_o : STD_LOGIC;
  signal mdio_rtl_mdio_t : STD_LOGIC;
  signal temp_sensor_scl_i : STD_LOGIC;
  signal temp_sensor_scl_o : STD_LOGIC;
  signal temp_sensor_scl_t : STD_LOGIC;
  signal temp_sensor_sda_i : STD_LOGIC;
  signal temp_sensor_sda_o : STD_LOGIC;
  signal temp_sensor_sda_t : STD_LOGIC;
begin
InputInterfaceLayer_i: component InputInterfaceLayer
     port map (
      acl_spi_io0_i => acl_spi_io0_i,
      acl_spi_io0_o => acl_spi_io0_o,
      acl_spi_io0_t => acl_spi_io0_t,
      acl_spi_io1_i => acl_spi_io1_i,
      acl_spi_io1_o => acl_spi_io1_o,
      acl_spi_io1_t => acl_spi_io1_t,
      acl_spi_sck_i => acl_spi_sck_i,
      acl_spi_sck_o => acl_spi_sck_o,
      acl_spi_sck_t => acl_spi_sck_t,
      acl_spi_ss_i => acl_spi_ss_i,
      acl_spi_ss_o => acl_spi_ss_o,
      acl_spi_ss_t => acl_spi_ss_t,
      data_out_0(7 downto 0) => data_out_0(7 downto 0),
      dip_switches_16bits_tri_i(15 downto 0) => dip_switches_16bits_tri_i(15 downto 0),
      enable => enable,
      encrypted_data_out_0(7 downto 0) => encrypted_data_out_0(7 downto 0),
      encrypted_valid_out_0 => encrypted_valid_out_0,
      mdio_rtl_mdc => mdio_rtl_mdc,
      mdio_rtl_mdio_i => mdio_rtl_mdio_i,
      mdio_rtl_mdio_o => mdio_rtl_mdio_o,
      mdio_rtl_mdio_t => mdio_rtl_mdio_t,
      mii_rtl_col => mii_rtl_col,
      mii_rtl_crs => mii_rtl_crs,
      mii_rtl_rst_n => mii_rtl_rst_n,
      mii_rtl_rx_clk => mii_rtl_rx_clk,
      mii_rtl_rx_dv => mii_rtl_rx_dv,
      mii_rtl_rx_er => mii_rtl_rx_er,
      mii_rtl_rxd(3 downto 0) => mii_rtl_rxd(3 downto 0),
      mii_rtl_tx_clk => mii_rtl_tx_clk,
      mii_rtl_tx_en => mii_rtl_tx_en,
      mii_rtl_txd(3 downto 0) => mii_rtl_txd(3 downto 0),
      reset => reset,
      reset_0 => reset_0,
      sys_clock => sys_clock,
      temp_sensor_scl_i => temp_sensor_scl_i,
      temp_sensor_scl_o => temp_sensor_scl_o,
      temp_sensor_scl_t => temp_sensor_scl_t,
      temp_sensor_sda_i => temp_sensor_sda_i,
      temp_sensor_sda_o => temp_sensor_sda_o,
      temp_sensor_sda_t => temp_sensor_sda_t,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      valid_in => valid_in,
      valid_out_0 => valid_out_0
    );
acl_spi_io0_iobuf: component IOBUF
     port map (
      I => acl_spi_io0_o,
      IO => acl_spi_io0_io,
      O => acl_spi_io0_i,
      T => acl_spi_io0_t
    );
acl_spi_io1_iobuf: component IOBUF
     port map (
      I => acl_spi_io1_o,
      IO => acl_spi_io1_io,
      O => acl_spi_io1_i,
      T => acl_spi_io1_t
    );
acl_spi_sck_iobuf: component IOBUF
     port map (
      I => acl_spi_sck_o,
      IO => acl_spi_sck_io,
      O => acl_spi_sck_i,
      T => acl_spi_sck_t
    );
acl_spi_ss_iobuf: component IOBUF
     port map (
      I => acl_spi_ss_o,
      IO => acl_spi_ss_io,
      O => acl_spi_ss_i,
      T => acl_spi_ss_t
    );
mdio_rtl_mdio_iobuf: component IOBUF
     port map (
      I => mdio_rtl_mdio_o,
      IO => mdio_rtl_mdio_io,
      O => mdio_rtl_mdio_i,
      T => mdio_rtl_mdio_t
    );
temp_sensor_scl_iobuf: component IOBUF
     port map (
      I => temp_sensor_scl_o,
      IO => temp_sensor_scl_io,
      O => temp_sensor_scl_i,
      T => temp_sensor_scl_t
    );
temp_sensor_sda_iobuf: component IOBUF
     port map (
      I => temp_sensor_sda_o,
      IO => temp_sensor_sda_io,
      O => temp_sensor_sda_i,
      T => temp_sensor_sda_t
    );
end STRUCTURE;
