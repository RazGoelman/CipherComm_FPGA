--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Sat Apr  5 11:25:55 2025
--Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
--Command     : generate_target InputInterfaceLayer.bd
--Design      : InputInterfaceLayer
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_layer_imp_TOT2HB is
  port (
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end clock_layer_imp_TOT2HB;

architecture STRUCTURE of clock_layer_imp_TOT2HB is
  component InputInterfaceLayer_rst_clk_wiz_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component InputInterfaceLayer_rst_clk_wiz_100M_0;
  component InputInterfaceLayer_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component InputInterfaceLayer_clk_wiz_0;
  component InputInterfaceLayer_reset_inv_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component InputInterfaceLayer_reset_inv_0_0;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal clk_wiz_locked : STD_LOGIC;
  signal mb_debug_sys_rst_1 : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_inv_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_100M_mb_reset : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  bus_struct_reset(0) <= rst_clk_wiz_100M_bus_struct_reset(0);
  clk_out1 <= clk_wiz_clk_out1;
  locked <= clk_wiz_locked;
  mb_debug_sys_rst_1 <= mb_debug_sys_rst;
  mb_reset <= rst_clk_wiz_100M_mb_reset;
  peripheral_aresetn(0) <= rst_clk_wiz_100M_peripheral_aresetn(0);
  reset_0_1 <= reset_0;
  reset_1(0) <= reset(0);
  sys_clock_1 <= sys_clock;
clk_wiz: component InputInterfaceLayer_clk_wiz_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => clk_wiz_locked,
      reset => reset_inv_0_Res(0)
    );
reset_inv_0: component InputInterfaceLayer_reset_inv_0_0
     port map (
      Op1(0) => reset_1(0),
      Res(0) => reset_inv_0_Res(0)
    );
rst_clk_wiz_100M: component InputInterfaceLayer_rst_clk_wiz_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_clk_wiz_100M_bus_struct_reset(0),
      dcm_locked => clk_wiz_locked,
      ext_reset_in => reset_0_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => mb_debug_sys_rst_1,
      mb_reset => rst_clk_wiz_100M_mb_reset,
      peripheral_aresetn(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decryption_layer_imp_1YBVKRC is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    valid_out_0 : out STD_LOGIC
  );
end decryption_layer_imp_1YBVKRC;

architecture STRUCTURE of decryption_layer_imp_1YBVKRC is
  component InputInterfaceLayer_decryption_logic_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_decryption_logic_0_0;
  signal clk_1 : STD_LOGIC;
  signal data_in_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decryption_logic_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decryption_logic_0_valid_out : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal valid_in_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  data_in_1(7 downto 0) <= data_in(7 downto 0);
  data_out_0(7 downto 0) <= decryption_logic_0_data_out(7 downto 0);
  reset_1 <= reset;
  valid_in_1 <= valid_in;
  valid_out_0 <= decryption_logic_0_valid_out;
decryption_logic_0: component InputInterfaceLayer_decryption_logic_0_0
     port map (
      clk => clk_1,
      data_in(7 downto 0) => data_in_1(7 downto 0),
      data_out(7 downto 0) => decryption_logic_0_data_out(7 downto 0),
      reset => reset_1,
      valid_in => valid_in_1,
      valid_out => decryption_logic_0_valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encryption_block_imp_U7QD42 is
  port (
    clk : in STD_LOGIC;
    encrypted_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    scrambled_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambled_valid_in : in STD_LOGIC
  );
end encryption_block_imp_U7QD42;

architecture STRUCTURE of encryption_block_imp_U7QD42 is
  component InputInterfaceLayer_encryption_layer_0_4 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    scrambled_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambled_valid_in : in STD_LOGIC;
    encrypted_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_encryption_layer_0_4;
  signal clk_1 : STD_LOGIC;
  signal encryption_layer_0_encrypted_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encryption_layer_0_encrypted_valid_out : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal scrambled_data_in_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scrambled_valid_in_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  encrypted_data_out(7 downto 0) <= encryption_layer_0_encrypted_data_out(7 downto 0);
  encrypted_valid_out <= encryption_layer_0_encrypted_valid_out;
  reset_1 <= reset;
  scrambled_data_in_1(7 downto 0) <= scrambled_data_in(7 downto 0);
  scrambled_valid_in_1 <= scrambled_valid_in;
encryption_layer_0: component InputInterfaceLayer_encryption_layer_0_4
     port map (
      clk => clk_1,
      encrypted_data_out(7 downto 0) => encryption_layer_0_encrypted_data_out(7 downto 0),
      encrypted_valid_out => encryption_layer_0_encrypted_valid_out,
      reset => reset_1,
      scrambled_data_in(7 downto 0) => scrambled_data_in_1(7 downto 0),
      scrambled_valid_in => scrambled_valid_in_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity input_layer_imp_GBM9VX is
  port (
    AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_LITE_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI2_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI3_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI3_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI3_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI3_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI4_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI4_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI4_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI4_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI4_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI4_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI4_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iic2intc_irpt : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    ip2intc_irpt1 : out STD_LOGIC;
    ip2intc_irpt2 : out STD_LOGIC;
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
    s_axi_aresetn : in STD_LOGIC;
    temp_sensor_scl_i : in STD_LOGIC;
    temp_sensor_scl_o : out STD_LOGIC;
    temp_sensor_scl_t : out STD_LOGIC;
    temp_sensor_sda_i : in STD_LOGIC;
    temp_sensor_sda_o : out STD_LOGIC;
    temp_sensor_sda_t : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end input_layer_imp_GBM9VX;

architecture STRUCTURE of input_layer_imp_GBM9VX is
  component InputInterfaceLayer_axi_iic_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component InputInterfaceLayer_axi_iic_0_0;
  component InputInterfaceLayer_axi_ethernetlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    phy_crs : in STD_LOGIC;
    phy_dv : in STD_LOGIC;
    phy_rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_col : in STD_LOGIC;
    phy_rx_er : in STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    phy_tx_en : out STD_LOGIC;
    phy_tx_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_mdio_i : in STD_LOGIC;
    phy_mdio_o : out STD_LOGIC;
    phy_mdio_t : out STD_LOGIC;
    phy_mdc : out STD_LOGIC
  );
  end component InputInterfaceLayer_axi_ethernetlite_0_0;
  component InputInterfaceLayer_axi_quad_spi_0_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component InputInterfaceLayer_axi_quad_spi_0_0;
  component InputInterfaceLayer_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component InputInterfaceLayer_axi_uartlite_0_0;
  component InputInterfaceLayer_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component InputInterfaceLayer_axi_gpio_0_0;
  component InputInterfaceLayer_axi_gpio_0_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component InputInterfaceLayer_axi_gpio_0_2;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_ethernetlite_0_MDIO_MDC : STD_LOGIC;
  signal axi_ethernetlite_0_MDIO_MDIO_I : STD_LOGIC;
  signal axi_ethernetlite_0_MDIO_MDIO_O : STD_LOGIC;
  signal axi_ethernetlite_0_MDIO_MDIO_T : STD_LOGIC;
  signal axi_ethernetlite_0_MII_COL : STD_LOGIC;
  signal axi_ethernetlite_0_MII_CRS : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RST_N : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RXD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernetlite_0_MII_RX_CLK : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RX_DV : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RX_ER : STD_LOGIC;
  signal axi_ethernetlite_0_MII_TXD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernetlite_0_MII_TX_CLK : STD_LOGIC;
  signal axi_ethernetlite_0_MII_TX_EN : STD_LOGIC;
  signal axi_ethernetlite_0_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_1_gpio_io_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_iic_0_IIC_SCL_I : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_O : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_T : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_I : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_O : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_T : STD_LOGIC;
  signal axi_iic_0_iic2intc_irpt : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_quad_spi_0_SPI_0_SS_T : STD_LOGIC;
  signal axi_quad_spi_0_ip2intc_irpt : STD_LOGIC;
  signal axi_uartlite_0_UART_RxD : STD_LOGIC;
  signal axi_uartlite_0_UART_TxD : STD_LOGIC;
  signal axi_uartlite_0_interrupt : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC;
  signal NLW_axi_iic_0_gpo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  AXI_LITE_arready(0) <= microblaze_0_axi_periph_M04_AXI_ARREADY;
  AXI_LITE_awready(0) <= microblaze_0_axi_periph_M04_AXI_AWREADY;
  AXI_LITE_bresp(1 downto 0) <= microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0);
  AXI_LITE_bvalid(0) <= microblaze_0_axi_periph_M04_AXI_BVALID;
  AXI_LITE_rdata(31 downto 0) <= microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0);
  AXI_LITE_rresp(1 downto 0) <= microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0);
  AXI_LITE_rvalid(0) <= microblaze_0_axi_periph_M04_AXI_RVALID;
  AXI_LITE_wready(0) <= microblaze_0_axi_periph_M04_AXI_WREADY;
  Conn1_ARADDR(31 downto 0) <= S_AXI4_araddr(31 downto 0);
  Conn1_ARVALID(0) <= S_AXI4_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI4_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= S_AXI4_awvalid(0);
  Conn1_BREADY(0) <= S_AXI4_bready(0);
  Conn1_RREADY(0) <= S_AXI4_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI4_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S_AXI4_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI4_wvalid(0);
  S_AXI1_arready(0) <= microblaze_0_axi_periph_M00_AXI_ARREADY;
  S_AXI1_awready(0) <= microblaze_0_axi_periph_M00_AXI_AWREADY;
  S_AXI1_bresp(1 downto 0) <= microblaze_0_axi_periph_M00_AXI_BRESP(1 downto 0);
  S_AXI1_bvalid(0) <= microblaze_0_axi_periph_M00_AXI_BVALID;
  S_AXI1_rdata(31 downto 0) <= microblaze_0_axi_periph_M00_AXI_RDATA(31 downto 0);
  S_AXI1_rresp(1 downto 0) <= microblaze_0_axi_periph_M00_AXI_RRESP(1 downto 0);
  S_AXI1_rvalid(0) <= microblaze_0_axi_periph_M00_AXI_RVALID;
  S_AXI1_wready(0) <= microblaze_0_axi_periph_M00_AXI_WREADY;
  S_AXI2_arready(0) <= microblaze_0_axi_periph_M05_AXI_ARREADY;
  S_AXI2_awready(0) <= microblaze_0_axi_periph_M05_AXI_AWREADY;
  S_AXI2_bresp(1 downto 0) <= microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0);
  S_AXI2_bvalid(0) <= microblaze_0_axi_periph_M05_AXI_BVALID;
  S_AXI2_rdata(31 downto 0) <= microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0);
  S_AXI2_rresp(1 downto 0) <= microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0);
  S_AXI2_rvalid(0) <= microblaze_0_axi_periph_M05_AXI_RVALID;
  S_AXI2_wready(0) <= microblaze_0_axi_periph_M05_AXI_WREADY;
  S_AXI3_arready(0) <= microblaze_0_axi_periph_M01_AXI_ARREADY;
  S_AXI3_awready(0) <= microblaze_0_axi_periph_M01_AXI_AWREADY;
  S_AXI3_bresp(1 downto 0) <= microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0);
  S_AXI3_bvalid(0) <= microblaze_0_axi_periph_M01_AXI_BVALID;
  S_AXI3_rdata(31 downto 0) <= microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0);
  S_AXI3_rresp(1 downto 0) <= microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0);
  S_AXI3_rvalid(0) <= microblaze_0_axi_periph_M01_AXI_RVALID;
  S_AXI3_wready(0) <= microblaze_0_axi_periph_M01_AXI_WREADY;
  S_AXI4_arready(0) <= Conn1_ARREADY;
  S_AXI4_awready(0) <= Conn1_AWREADY;
  S_AXI4_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI4_bvalid(0) <= Conn1_BVALID;
  S_AXI4_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI4_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI4_rvalid(0) <= Conn1_RVALID;
  S_AXI4_wready(0) <= Conn1_WREADY;
  S_AXI_arready(0) <= microblaze_0_axi_periph_M02_AXI_ARREADY;
  S_AXI_awready(0) <= microblaze_0_axi_periph_M02_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= microblaze_0_axi_periph_M02_AXI_BVALID;
  S_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= microblaze_0_axi_periph_M02_AXI_RVALID;
  S_AXI_wready(0) <= microblaze_0_axi_periph_M02_AXI_WREADY;
  acl_spi_io0_o <= axi_quad_spi_0_SPI_0_IO0_O;
  acl_spi_io0_t <= axi_quad_spi_0_SPI_0_IO0_T;
  acl_spi_io1_o <= axi_quad_spi_0_SPI_0_IO1_O;
  acl_spi_io1_t <= axi_quad_spi_0_SPI_0_IO1_T;
  acl_spi_sck_o <= axi_quad_spi_0_SPI_0_SCK_O;
  acl_spi_sck_t <= axi_quad_spi_0_SPI_0_SCK_T;
  acl_spi_ss_o <= axi_quad_spi_0_SPI_0_SS_O(0);
  acl_spi_ss_t <= axi_quad_spi_0_SPI_0_SS_T;
  axi_ethernetlite_0_MDIO_MDIO_I <= mdio_rtl_mdio_i;
  axi_ethernetlite_0_MII_COL <= mii_rtl_col;
  axi_ethernetlite_0_MII_CRS <= mii_rtl_crs;
  axi_ethernetlite_0_MII_RXD(3 downto 0) <= mii_rtl_rxd(3 downto 0);
  axi_ethernetlite_0_MII_RX_CLK <= mii_rtl_rx_clk;
  axi_ethernetlite_0_MII_RX_DV <= mii_rtl_rx_dv;
  axi_ethernetlite_0_MII_RX_ER <= mii_rtl_rx_er;
  axi_ethernetlite_0_MII_TX_CLK <= mii_rtl_tx_clk;
  axi_gpio_0_GPIO_TRI_I(15 downto 0) <= dip_switches_16bits_tri_i(15 downto 0);
  axi_iic_0_IIC_SCL_I <= temp_sensor_scl_i;
  axi_iic_0_IIC_SDA_I <= temp_sensor_sda_i;
  axi_quad_spi_0_SPI_0_IO0_I <= acl_spi_io0_i;
  axi_quad_spi_0_SPI_0_IO1_I <= acl_spi_io1_i;
  axi_quad_spi_0_SPI_0_SCK_I <= acl_spi_sck_i;
  axi_quad_spi_0_SPI_0_SS_I <= acl_spi_ss_i;
  axi_uartlite_0_UART_RxD <= usb_uart_rxd;
  gpio_io_o(7 downto 0) <= axi_gpio_1_gpio_io_o(7 downto 0);
  iic2intc_irpt <= axi_iic_0_iic2intc_irpt;
  interrupt <= axi_uartlite_0_interrupt;
  ip2intc_irpt <= axi_ethernetlite_0_ip2intc_irpt;
  ip2intc_irpt1 <= axi_quad_spi_0_ip2intc_irpt;
  ip2intc_irpt2 <= axi_gpio_0_ip2intc_irpt;
  mdio_rtl_mdc <= axi_ethernetlite_0_MDIO_MDC;
  mdio_rtl_mdio_o <= axi_ethernetlite_0_MDIO_MDIO_O;
  mdio_rtl_mdio_t <= axi_ethernetlite_0_MDIO_MDIO_T;
  microblaze_0_Clk <= ext_spi_clk;
  microblaze_0_axi_periph_M00_AXI_ARADDR(31 downto 0) <= S_AXI1_araddr(31 downto 0);
  microblaze_0_axi_periph_M00_AXI_ARVALID(0) <= S_AXI1_arvalid(0);
  microblaze_0_axi_periph_M00_AXI_AWADDR(31 downto 0) <= S_AXI1_awaddr(31 downto 0);
  microblaze_0_axi_periph_M00_AXI_AWVALID(0) <= S_AXI1_awvalid(0);
  microblaze_0_axi_periph_M00_AXI_BREADY(0) <= S_AXI1_bready(0);
  microblaze_0_axi_periph_M00_AXI_RREADY(0) <= S_AXI1_rready(0);
  microblaze_0_axi_periph_M00_AXI_WDATA(31 downto 0) <= S_AXI1_wdata(31 downto 0);
  microblaze_0_axi_periph_M00_AXI_WSTRB(3 downto 0) <= S_AXI1_wstrb(3 downto 0);
  microblaze_0_axi_periph_M00_AXI_WVALID(0) <= S_AXI1_wvalid(0);
  microblaze_0_axi_periph_M01_AXI_ARADDR(31 downto 0) <= S_AXI3_araddr(31 downto 0);
  microblaze_0_axi_periph_M01_AXI_ARVALID(0) <= S_AXI3_arvalid(0);
  microblaze_0_axi_periph_M01_AXI_AWADDR(31 downto 0) <= S_AXI3_awaddr(31 downto 0);
  microblaze_0_axi_periph_M01_AXI_AWVALID(0) <= S_AXI3_awvalid(0);
  microblaze_0_axi_periph_M01_AXI_BREADY(0) <= S_AXI3_bready(0);
  microblaze_0_axi_periph_M01_AXI_RREADY(0) <= S_AXI3_rready(0);
  microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0) <= S_AXI3_wdata(31 downto 0);
  microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0) <= S_AXI3_wstrb(3 downto 0);
  microblaze_0_axi_periph_M01_AXI_WVALID(0) <= S_AXI3_wvalid(0);
  microblaze_0_axi_periph_M02_AXI_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_M02_AXI_ARVALID(0) <= S_AXI_arvalid(0);
  microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_M02_AXI_AWVALID(0) <= S_AXI_awvalid(0);
  microblaze_0_axi_periph_M02_AXI_BREADY(0) <= S_AXI_bready(0);
  microblaze_0_axi_periph_M02_AXI_RREADY(0) <= S_AXI_rready(0);
  microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_M02_AXI_WVALID(0) <= S_AXI_wvalid(0);
  microblaze_0_axi_periph_M04_AXI_ARADDR(31 downto 0) <= AXI_LITE_araddr(31 downto 0);
  microblaze_0_axi_periph_M04_AXI_ARVALID(0) <= AXI_LITE_arvalid(0);
  microblaze_0_axi_periph_M04_AXI_AWADDR(31 downto 0) <= AXI_LITE_awaddr(31 downto 0);
  microblaze_0_axi_periph_M04_AXI_AWVALID(0) <= AXI_LITE_awvalid(0);
  microblaze_0_axi_periph_M04_AXI_BREADY(0) <= AXI_LITE_bready(0);
  microblaze_0_axi_periph_M04_AXI_RREADY(0) <= AXI_LITE_rready(0);
  microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0) <= AXI_LITE_wdata(31 downto 0);
  microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0) <= AXI_LITE_wstrb(3 downto 0);
  microblaze_0_axi_periph_M04_AXI_WVALID(0) <= AXI_LITE_wvalid(0);
  microblaze_0_axi_periph_M05_AXI_ARADDR(31 downto 0) <= S_AXI2_araddr(31 downto 0);
  microblaze_0_axi_periph_M05_AXI_ARVALID(0) <= S_AXI2_arvalid(0);
  microblaze_0_axi_periph_M05_AXI_AWADDR(31 downto 0) <= S_AXI2_awaddr(31 downto 0);
  microblaze_0_axi_periph_M05_AXI_AWVALID(0) <= S_AXI2_awvalid(0);
  microblaze_0_axi_periph_M05_AXI_BREADY(0) <= S_AXI2_bready(0);
  microblaze_0_axi_periph_M05_AXI_RREADY(0) <= S_AXI2_rready(0);
  microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0) <= S_AXI2_wdata(31 downto 0);
  microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0) <= S_AXI2_wstrb(3 downto 0);
  microblaze_0_axi_periph_M05_AXI_WVALID(0) <= S_AXI2_wvalid(0);
  mii_rtl_rst_n <= axi_ethernetlite_0_MII_RST_N;
  mii_rtl_tx_en <= axi_ethernetlite_0_MII_TX_EN;
  mii_rtl_txd(3 downto 0) <= axi_ethernetlite_0_MII_TXD(3 downto 0);
  rst_clk_wiz_100M_peripheral_aresetn <= s_axi_aresetn;
  temp_sensor_scl_o <= axi_iic_0_IIC_SCL_O;
  temp_sensor_scl_t <= axi_iic_0_IIC_SCL_T;
  temp_sensor_sda_o <= axi_iic_0_IIC_SDA_O;
  temp_sensor_sda_t <= axi_iic_0_IIC_SDA_T;
  usb_uart_txd <= axi_uartlite_0_UART_TxD;
axi_ethernetlite_0: component InputInterfaceLayer_axi_ethernetlite_0_0
     port map (
      ip2intc_irpt => axi_ethernetlite_0_ip2intc_irpt,
      phy_col => axi_ethernetlite_0_MII_COL,
      phy_crs => axi_ethernetlite_0_MII_CRS,
      phy_dv => axi_ethernetlite_0_MII_RX_DV,
      phy_mdc => axi_ethernetlite_0_MDIO_MDC,
      phy_mdio_i => axi_ethernetlite_0_MDIO_MDIO_I,
      phy_mdio_o => axi_ethernetlite_0_MDIO_MDIO_O,
      phy_mdio_t => axi_ethernetlite_0_MDIO_MDIO_T,
      phy_rst_n => axi_ethernetlite_0_MII_RST_N,
      phy_rx_clk => axi_ethernetlite_0_MII_RX_CLK,
      phy_rx_data(3 downto 0) => axi_ethernetlite_0_MII_RXD(3 downto 0),
      phy_rx_er => axi_ethernetlite_0_MII_RX_ER,
      phy_tx_clk => axi_ethernetlite_0_MII_TX_CLK,
      phy_tx_data(3 downto 0) => axi_ethernetlite_0_MII_TXD(3 downto 0),
      phy_tx_en => axi_ethernetlite_0_MII_TX_EN,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(12 downto 0) => microblaze_0_axi_periph_M00_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn,
      s_axi_arready => microblaze_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_awaddr(12 downto 0) => microblaze_0_axi_periph_M00_AXI_AWADDR(12 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M00_AXI_WVALID(0)
    );
axi_gpio_0: component InputInterfaceLayer_axi_gpio_0_0
     port map (
      gpio_io_i(15 downto 0) => axi_gpio_0_GPIO_TRI_I(15 downto 0),
      ip2intc_irpt => axi_gpio_0_ip2intc_irpt,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn,
      s_axi_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID(0)
    );
axi_gpio_1: component InputInterfaceLayer_axi_gpio_0_2
     port map (
      gpio_io_o(7 downto 0) => axi_gpio_1_gpio_io_o(7 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => Conn1_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(8 downto 0) => Conn1_AWADDR(8 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
axi_iic_0: component InputInterfaceLayer_axi_iic_0_0
     port map (
      gpo(0) => NLW_axi_iic_0_gpo_UNCONNECTED(0),
      iic2intc_irpt => axi_iic_0_iic2intc_irpt,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn,
      s_axi_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID(0),
      scl_i => axi_iic_0_IIC_SCL_I,
      scl_o => axi_iic_0_IIC_SCL_O,
      scl_t => axi_iic_0_IIC_SCL_T,
      sda_i => axi_iic_0_IIC_SDA_I,
      sda_o => axi_iic_0_IIC_SDA_O,
      sda_t => axi_iic_0_IIC_SDA_T
    );
axi_quad_spi_0: component InputInterfaceLayer_axi_quad_spi_0_0
     port map (
      ext_spi_clk => microblaze_0_Clk,
      io0_i => axi_quad_spi_0_SPI_0_IO0_I,
      io0_o => axi_quad_spi_0_SPI_0_IO0_O,
      io0_t => axi_quad_spi_0_SPI_0_IO0_T,
      io1_i => axi_quad_spi_0_SPI_0_IO1_I,
      io1_o => axi_quad_spi_0_SPI_0_IO1_O,
      io1_t => axi_quad_spi_0_SPI_0_IO1_T,
      ip2intc_irpt => axi_quad_spi_0_ip2intc_irpt,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(6 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn,
      s_axi_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID(0),
      s_axi_awaddr(6 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(6 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M04_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M04_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID(0),
      sck_i => axi_quad_spi_0_SPI_0_SCK_I,
      sck_o => axi_quad_spi_0_SPI_0_SCK_O,
      sck_t => axi_quad_spi_0_SPI_0_SCK_T,
      ss_i(0) => axi_quad_spi_0_SPI_0_SS_I,
      ss_o(0) => axi_quad_spi_0_SPI_0_SS_O(0),
      ss_t => axi_quad_spi_0_SPI_0_SS_T
    );
axi_uartlite_0: component InputInterfaceLayer_axi_uartlite_0_0
     port map (
      interrupt => axi_uartlite_0_interrupt,
      rx => axi_uartlite_0_UART_RxD,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn,
      s_axi_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID(0),
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M05_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M05_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID(0),
      tx => axi_uartlite_0_UART_TxD
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interrupt_layer_imp_NF5PM6 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end interrupt_layer_imp_NF5PM6;

architecture STRUCTURE of interrupt_layer_imp_NF5PM6 is
  component InputInterfaceLayer_axi_intc_0_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    irq : out STD_LOGIC
  );
  end component InputInterfaceLayer_axi_intc_0_3;
  component InputInterfaceLayer_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component InputInterfaceLayer_xlconcat_0_0;
  signal In5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_ethernetlite_0_ip2intc_irpt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_iic_0_iic2intc_irpt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_intc_0_irq : STD_LOGIC;
  signal axi_quad_spi_0_ip2intc_irpt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_uartlite_0_interrupt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  In5_1(0) <= In5(0);
  axi_ethernetlite_0_ip2intc_irpt(0) <= In4(0);
  axi_gpio_0_ip2intc_irpt(0) <= In0(0);
  axi_iic_0_iic2intc_irpt(0) <= In2(0);
  axi_quad_spi_0_ip2intc_irpt(0) <= In3(0);
  axi_uartlite_0_interrupt(0) <= In1(0);
  irq <= axi_intc_0_irq;
  microblaze_0_Clk <= s_axi_aclk;
  microblaze_0_axi_periph_M06_AXI_ARADDR(31 downto 0) <= s_axi_araddr(31 downto 0);
  microblaze_0_axi_periph_M06_AXI_ARVALID(0) <= s_axi_arvalid(0);
  microblaze_0_axi_periph_M06_AXI_AWADDR(31 downto 0) <= s_axi_awaddr(31 downto 0);
  microblaze_0_axi_periph_M06_AXI_AWVALID(0) <= s_axi_awvalid(0);
  microblaze_0_axi_periph_M06_AXI_BREADY(0) <= s_axi_bready(0);
  microblaze_0_axi_periph_M06_AXI_RREADY(0) <= s_axi_rready(0);
  microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0) <= s_axi_wstrb(3 downto 0);
  microblaze_0_axi_periph_M06_AXI_WVALID(0) <= s_axi_wvalid(0);
  rst_clk_wiz_100M_peripheral_aresetn <= s_axi_aresetn;
  s_axi_arready(0) <= microblaze_0_axi_periph_M06_AXI_ARREADY;
  s_axi_awready(0) <= microblaze_0_axi_periph_M06_AXI_AWREADY;
  s_axi_bresp(1 downto 0) <= microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0);
  s_axi_bvalid(0) <= microblaze_0_axi_periph_M06_AXI_BVALID;
  s_axi_rdata(31 downto 0) <= microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0);
  s_axi_rvalid(0) <= microblaze_0_axi_periph_M06_AXI_RVALID;
  s_axi_wready(0) <= microblaze_0_axi_periph_M06_AXI_WREADY;
axi_intc_0: component InputInterfaceLayer_axi_intc_0_3
     port map (
      intr(5 downto 0) => xlconcat_0_dout(5 downto 0),
      irq => axi_intc_0_irq,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn,
      s_axi_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M06_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M06_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID(0)
    );
xlconcat_0: component InputInterfaceLayer_xlconcat_0_0
     port map (
      In0(0) => axi_gpio_0_ip2intc_irpt(0),
      In1(0) => axi_uartlite_0_interrupt(0),
      In2(0) => axi_iic_0_iic2intc_irpt(0),
      In3(0) => axi_quad_spi_0_ip2intc_irpt(0),
      In4(0) => axi_ethernetlite_0_ip2intc_irpt(0),
      In5(0) => In5_1(0),
      dout(5 downto 0) => xlconcat_0_dout(5 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_AGS1WP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_AGS1WP;

architecture STRUCTURE of m00_couplers_imp_AGS1WP is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARBURST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARCACHE : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARLEN : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARLOCK : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARQOS : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARREGION : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARSIZE : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWBURST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWCACHE : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWLEN : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWLOCK : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWQOS : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWREGION : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWSIZE : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m00_couplers_to_m00_couplers_ARADDR;
  M_AXI_arburst <= m00_couplers_to_m00_couplers_ARBURST;
  M_AXI_arcache <= m00_couplers_to_m00_couplers_ARCACHE;
  M_AXI_arlen <= m00_couplers_to_m00_couplers_ARLEN;
  M_AXI_arlock <= m00_couplers_to_m00_couplers_ARLOCK;
  M_AXI_arprot <= m00_couplers_to_m00_couplers_ARPROT;
  M_AXI_arqos <= m00_couplers_to_m00_couplers_ARQOS;
  M_AXI_arregion <= m00_couplers_to_m00_couplers_ARREGION;
  M_AXI_arsize <= m00_couplers_to_m00_couplers_ARSIZE;
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr <= m00_couplers_to_m00_couplers_AWADDR;
  M_AXI_awburst <= m00_couplers_to_m00_couplers_AWBURST;
  M_AXI_awcache <= m00_couplers_to_m00_couplers_AWCACHE;
  M_AXI_awlen <= m00_couplers_to_m00_couplers_AWLEN;
  M_AXI_awlock <= m00_couplers_to_m00_couplers_AWLOCK;
  M_AXI_awprot <= m00_couplers_to_m00_couplers_AWPROT;
  M_AXI_awqos <= m00_couplers_to_m00_couplers_AWQOS;
  M_AXI_awregion <= m00_couplers_to_m00_couplers_AWREGION;
  M_AXI_awsize <= m00_couplers_to_m00_couplers_AWSIZE;
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata <= m00_couplers_to_m00_couplers_WDATA;
  M_AXI_wlast <= m00_couplers_to_m00_couplers_WLAST;
  M_AXI_wstrb <= m00_couplers_to_m00_couplers_WSTRB;
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp <= m00_couplers_to_m00_couplers_BRESP;
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata <= m00_couplers_to_m00_couplers_RDATA;
  S_AXI_rlast <= m00_couplers_to_m00_couplers_RLAST;
  S_AXI_rresp <= m00_couplers_to_m00_couplers_RRESP;
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR <= S_AXI_araddr;
  m00_couplers_to_m00_couplers_ARBURST <= S_AXI_arburst;
  m00_couplers_to_m00_couplers_ARCACHE <= S_AXI_arcache;
  m00_couplers_to_m00_couplers_ARLEN <= S_AXI_arlen;
  m00_couplers_to_m00_couplers_ARLOCK <= S_AXI_arlock;
  m00_couplers_to_m00_couplers_ARPROT <= S_AXI_arprot;
  m00_couplers_to_m00_couplers_ARQOS <= S_AXI_arqos;
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARREGION <= S_AXI_arregion;
  m00_couplers_to_m00_couplers_ARSIZE <= S_AXI_arsize;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR <= S_AXI_awaddr;
  m00_couplers_to_m00_couplers_AWBURST <= S_AXI_awburst;
  m00_couplers_to_m00_couplers_AWCACHE <= S_AXI_awcache;
  m00_couplers_to_m00_couplers_AWLEN <= S_AXI_awlen;
  m00_couplers_to_m00_couplers_AWLOCK <= S_AXI_awlock;
  m00_couplers_to_m00_couplers_AWPROT <= S_AXI_awprot;
  m00_couplers_to_m00_couplers_AWQOS <= S_AXI_awqos;
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWREGION <= S_AXI_awregion;
  m00_couplers_to_m00_couplers_AWSIZE <= S_AXI_awsize;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP <= M_AXI_bresp;
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA <= M_AXI_rdata;
  m00_couplers_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP <= M_AXI_rresp;
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA <= S_AXI_wdata;
  m00_couplers_to_m00_couplers_WLAST <= S_AXI_wlast;
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB <= S_AXI_wstrb;
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_GIL5EM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_GIL5EM;

architecture STRUCTURE of m00_couplers_imp_GIL5EM is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_JMOSR1 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_JMOSR1;

architecture STRUCTURE of m01_couplers_imp_JMOSR1 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m01_couplers_to_m01_couplers_ARADDR;
  M_AXI_arburst <= m01_couplers_to_m01_couplers_ARBURST;
  M_AXI_arcache <= m01_couplers_to_m01_couplers_ARCACHE;
  M_AXI_arlen <= m01_couplers_to_m01_couplers_ARLEN;
  M_AXI_arlock <= m01_couplers_to_m01_couplers_ARLOCK;
  M_AXI_arprot <= m01_couplers_to_m01_couplers_ARPROT;
  M_AXI_arqos <= m01_couplers_to_m01_couplers_ARQOS;
  M_AXI_arregion <= m01_couplers_to_m01_couplers_ARREGION;
  M_AXI_arsize <= m01_couplers_to_m01_couplers_ARSIZE;
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr <= m01_couplers_to_m01_couplers_AWADDR;
  M_AXI_awburst <= m01_couplers_to_m01_couplers_AWBURST;
  M_AXI_awcache <= m01_couplers_to_m01_couplers_AWCACHE;
  M_AXI_awlen <= m01_couplers_to_m01_couplers_AWLEN;
  M_AXI_awlock <= m01_couplers_to_m01_couplers_AWLOCK;
  M_AXI_awprot <= m01_couplers_to_m01_couplers_AWPROT;
  M_AXI_awqos <= m01_couplers_to_m01_couplers_AWQOS;
  M_AXI_awregion <= m01_couplers_to_m01_couplers_AWREGION;
  M_AXI_awsize <= m01_couplers_to_m01_couplers_AWSIZE;
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata <= m01_couplers_to_m01_couplers_WDATA;
  M_AXI_wlast <= m01_couplers_to_m01_couplers_WLAST;
  M_AXI_wstrb <= m01_couplers_to_m01_couplers_WSTRB;
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp <= m01_couplers_to_m01_couplers_BRESP;
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata <= m01_couplers_to_m01_couplers_RDATA;
  S_AXI_rlast <= m01_couplers_to_m01_couplers_RLAST;
  S_AXI_rresp <= m01_couplers_to_m01_couplers_RRESP;
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR <= S_AXI_araddr;
  m01_couplers_to_m01_couplers_ARBURST <= S_AXI_arburst;
  m01_couplers_to_m01_couplers_ARCACHE <= S_AXI_arcache;
  m01_couplers_to_m01_couplers_ARLEN <= S_AXI_arlen;
  m01_couplers_to_m01_couplers_ARLOCK <= S_AXI_arlock;
  m01_couplers_to_m01_couplers_ARPROT <= S_AXI_arprot;
  m01_couplers_to_m01_couplers_ARQOS <= S_AXI_arqos;
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARREGION <= S_AXI_arregion;
  m01_couplers_to_m01_couplers_ARSIZE <= S_AXI_arsize;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR <= S_AXI_awaddr;
  m01_couplers_to_m01_couplers_AWBURST <= S_AXI_awburst;
  m01_couplers_to_m01_couplers_AWCACHE <= S_AXI_awcache;
  m01_couplers_to_m01_couplers_AWLEN <= S_AXI_awlen;
  m01_couplers_to_m01_couplers_AWLOCK <= S_AXI_awlock;
  m01_couplers_to_m01_couplers_AWPROT <= S_AXI_awprot;
  m01_couplers_to_m01_couplers_AWQOS <= S_AXI_awqos;
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWREGION <= S_AXI_awregion;
  m01_couplers_to_m01_couplers_AWSIZE <= S_AXI_awsize;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP <= M_AXI_bresp;
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA <= M_AXI_rdata;
  m01_couplers_to_m01_couplers_RLAST <= M_AXI_rlast;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP <= M_AXI_rresp;
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA <= S_AXI_wdata;
  m01_couplers_to_m01_couplers_WLAST <= S_AXI_wlast;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB <= S_AXI_wstrb;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_OK24ZE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_OK24ZE;

architecture STRUCTURE of m01_couplers_imp_OK24ZE is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1YCHTCM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_1YCHTCM;

architecture STRUCTURE of m02_couplers_imp_1YCHTCM is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_17ZSFEA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_17ZSFEA;

architecture STRUCTURE of m03_couplers_imp_17ZSFEA is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_U7V3GV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_U7V3GV;

architecture STRUCTURE of m04_couplers_imp_U7V3GV is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_4F5RVV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_4F5RVV;

architecture STRUCTURE of m05_couplers_imp_4F5RVV is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_1BF42DJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m06_couplers_imp_1BF42DJ;

architecture STRUCTURE of m06_couplers_imp_1BF42DJ is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m06_couplers_to_m06_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m06_couplers_to_m06_couplers_AWVALID(0);
  M_AXI_bready(0) <= m06_couplers_to_m06_couplers_BREADY(0);
  M_AXI_rready(0) <= m06_couplers_to_m06_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m06_couplers_to_m06_couplers_WVALID(0);
  S_AXI_arready(0) <= m06_couplers_to_m06_couplers_ARREADY(0);
  S_AXI_awready(0) <= m06_couplers_to_m06_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m06_couplers_to_m06_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m06_couplers_to_m06_couplers_RVALID(0);
  S_AXI_wready(0) <= m06_couplers_to_m06_couplers_WREADY(0);
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY(0) <= M_AXI_arready(0);
  m06_couplers_to_m06_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY(0) <= M_AXI_awready(0);
  m06_couplers_to_m06_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m06_couplers_to_m06_couplers_BREADY(0) <= S_AXI_bready(0);
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY(0) <= S_AXI_rready(0);
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY(0) <= M_AXI_wready(0);
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1K0HYJN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m07_couplers_imp_1K0HYJN;

architecture STRUCTURE of m07_couplers_imp_1K0HYJN is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m07_couplers_to_m07_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m07_couplers_to_m07_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m07_couplers_to_m07_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m07_couplers_to_m07_couplers_AWVALID(0);
  M_AXI_bready(0) <= m07_couplers_to_m07_couplers_BREADY(0);
  M_AXI_rready(0) <= m07_couplers_to_m07_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m07_couplers_to_m07_couplers_WVALID(0);
  S_AXI_arready(0) <= m07_couplers_to_m07_couplers_ARREADY(0);
  S_AXI_awready(0) <= m07_couplers_to_m07_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m07_couplers_to_m07_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m07_couplers_to_m07_couplers_RVALID(0);
  S_AXI_wready(0) <= m07_couplers_to_m07_couplers_WREADY(0);
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m07_couplers_to_m07_couplers_ARREADY(0) <= M_AXI_arready(0);
  m07_couplers_to_m07_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m07_couplers_to_m07_couplers_AWREADY(0) <= M_AXI_awready(0);
  m07_couplers_to_m07_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m07_couplers_to_m07_couplers_BREADY(0) <= S_AXI_bready(0);
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY(0) <= S_AXI_rready(0);
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY(0) <= M_AXI_wready(0);
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_15FUH4S is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m08_couplers_imp_15FUH4S;

architecture STRUCTURE of m08_couplers_imp_15FUH4S is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m08_couplers_to_m08_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m08_couplers_to_m08_couplers_AWVALID(0);
  M_AXI_bready(0) <= m08_couplers_to_m08_couplers_BREADY(0);
  M_AXI_rready(0) <= m08_couplers_to_m08_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m08_couplers_to_m08_couplers_WVALID(0);
  S_AXI_arready(0) <= m08_couplers_to_m08_couplers_ARREADY(0);
  S_AXI_awready(0) <= m08_couplers_to_m08_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m08_couplers_to_m08_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m08_couplers_to_m08_couplers_RVALID(0);
  S_AXI_wready(0) <= m08_couplers_to_m08_couplers_WREADY(0);
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARREADY(0) <= M_AXI_arready(0);
  m08_couplers_to_m08_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWREADY(0) <= M_AXI_awready(0);
  m08_couplers_to_m08_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m08_couplers_to_m08_couplers_BREADY(0) <= S_AXI_bready(0);
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RREADY(0) <= S_AXI_rready(0);
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WREADY(0) <= M_AXI_wready(0);
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_47HO4M is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_0_local_memory_imp_47HO4M;

architecture STRUCTURE of microblaze_0_local_memory_imp_47HO4M is
  component InputInterfaceLayer_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component InputInterfaceLayer_dlmb_v10_0;
  component InputInterfaceLayer_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component InputInterfaceLayer_ilmb_v10_0;
  component InputInterfaceLayer_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component InputInterfaceLayer_dlmb_bram_if_cntlr_0;
  component InputInterfaceLayer_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component InputInterfaceLayer_ilmb_bram_if_cntlr_0;
  component InputInterfaceLayer_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component InputInterfaceLayer_lmb_bram_0;
  signal SYS_Rst_1 : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > InputInterfaceLayer cpu_layer/microblaze_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  microblaze_0_Clk <= LMB_Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component InputInterfaceLayer_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component InputInterfaceLayer_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component InputInterfaceLayer_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component InputInterfaceLayer_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component InputInterfaceLayer_lmb_bram_0
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => microblaze_0_ilmb_cntlr_RST,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reception_layer_imp_CD6Y5D is
  port (
    clk : in STD_LOGIC;
    received_data_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    received_valid_0 : out STD_LOGIC;
    rst : in STD_LOGIC;
    rx_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_valid_in : in STD_LOGIC
  );
end reception_layer_imp_CD6Y5D;

architecture STRUCTURE of reception_layer_imp_CD6Y5D is
  component InputInterfaceLayer_data_reception_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_valid_in : in STD_LOGIC;
    received_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    received_valid : out STD_LOGIC
  );
  end component InputInterfaceLayer_data_reception_0_0;
  signal clk_1 : STD_LOGIC;
  signal data_reception_0_received_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_reception_0_received_valid : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal rx_data_in_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_valid_in_1 : STD_LOGIC;
begin
  clk_1 <= clk;
  received_data_0(7 downto 0) <= data_reception_0_received_data(7 downto 0);
  received_valid_0 <= data_reception_0_received_valid;
  rst_1 <= rst;
  rx_data_in_1(7 downto 0) <= rx_data_in(7 downto 0);
  rx_valid_in_1 <= rx_valid_in;
data_reception_0: component InputInterfaceLayer_data_reception_0_0
     port map (
      clk => clk_1,
      received_data(7 downto 0) => data_reception_0_received_data(7 downto 0),
      received_valid => data_reception_0_received_valid,
      rst => rst_1,
      rx_data_in(7 downto 0) => rx_data_in_1(7 downto 0),
      rx_valid_in => rx_valid_in_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_10SENDS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_10SENDS;

architecture STRUCTURE of s00_couplers_imp_10SENDS is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_16WVYS7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_16WVYS7;

architecture STRUCTURE of s00_couplers_imp_16WVYS7 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s00_couplers_to_s00_couplers_ARADDR;
  M_AXI_arburst <= s00_couplers_to_s00_couplers_ARBURST;
  M_AXI_arcache <= s00_couplers_to_s00_couplers_ARCACHE;
  M_AXI_arlen <= s00_couplers_to_s00_couplers_ARLEN;
  M_AXI_arlock <= s00_couplers_to_s00_couplers_ARLOCK;
  M_AXI_arprot <= s00_couplers_to_s00_couplers_ARPROT;
  M_AXI_arqos <= s00_couplers_to_s00_couplers_ARQOS;
  M_AXI_arsize <= s00_couplers_to_s00_couplers_ARSIZE;
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr <= s00_couplers_to_s00_couplers_AWADDR;
  M_AXI_awburst <= s00_couplers_to_s00_couplers_AWBURST;
  M_AXI_awcache <= s00_couplers_to_s00_couplers_AWCACHE;
  M_AXI_awlen <= s00_couplers_to_s00_couplers_AWLEN;
  M_AXI_awlock <= s00_couplers_to_s00_couplers_AWLOCK;
  M_AXI_awprot <= s00_couplers_to_s00_couplers_AWPROT;
  M_AXI_awqos <= s00_couplers_to_s00_couplers_AWQOS;
  M_AXI_awsize <= s00_couplers_to_s00_couplers_AWSIZE;
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata <= s00_couplers_to_s00_couplers_WDATA;
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb <= s00_couplers_to_s00_couplers_WSTRB;
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp <= s00_couplers_to_s00_couplers_BRESP;
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata <= s00_couplers_to_s00_couplers_RDATA;
  S_AXI_rlast <= s00_couplers_to_s00_couplers_RLAST;
  S_AXI_rresp <= s00_couplers_to_s00_couplers_RRESP;
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR <= S_AXI_araddr;
  s00_couplers_to_s00_couplers_ARBURST <= S_AXI_arburst;
  s00_couplers_to_s00_couplers_ARCACHE <= S_AXI_arcache;
  s00_couplers_to_s00_couplers_ARLEN <= S_AXI_arlen;
  s00_couplers_to_s00_couplers_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_couplers_ARPROT <= S_AXI_arprot;
  s00_couplers_to_s00_couplers_ARQOS <= S_AXI_arqos;
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARSIZE <= S_AXI_arsize;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR <= S_AXI_awaddr;
  s00_couplers_to_s00_couplers_AWBURST <= S_AXI_awburst;
  s00_couplers_to_s00_couplers_AWCACHE <= S_AXI_awcache;
  s00_couplers_to_s00_couplers_AWLEN <= S_AXI_awlen;
  s00_couplers_to_s00_couplers_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_couplers_AWPROT <= S_AXI_awprot;
  s00_couplers_to_s00_couplers_AWQOS <= S_AXI_awqos;
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE <= S_AXI_awsize;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP <= M_AXI_bresp;
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA <= M_AXI_rdata;
  s00_couplers_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP <= M_AXI_rresp;
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA <= S_AXI_wdata;
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB <= S_AXI_wstrb;
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity scrambler_block_imp_1XD6MLR is
  port (
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_INTR_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_INTR_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_INTR_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_INTR_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_INTR_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_INTR_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_INTR_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_INTR_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_INTR_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_INTR_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enable : in STD_LOGIC;
    irq : out STD_LOGIC;
    rst : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    valid_out : out STD_LOGIC
  );
end scrambler_block_imp_1XD6MLR;

architecture STRUCTURE of scrambler_block_imp_1XD6MLR is
  component InputInterfaceLayer_scrambler_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_scrambler_0_0;
  component InputInterfaceLayer_scrambler_axi_0_0 is
  port (
    irq : out STD_LOGIC;
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component InputInterfaceLayer_scrambler_axi_0_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal data_in_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal enable_0_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal scrambler_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scrambler_0_valid_out : STD_LOGIC;
  signal scrambler_axi_0_irq : STD_LOGIC;
  signal valid_in_0_1 : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn1_ARVALID(0) <= S00_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn1_AWVALID(0) <= S00_AXI_awvalid(0);
  Conn1_BREADY(0) <= S00_AXI_bready(0);
  Conn1_RREADY(0) <= S00_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S00_AXI_wvalid(0);
  Conn2_ARADDR(31 downto 0) <= S_AXI_INTR_araddr(31 downto 0);
  Conn2_ARPROT(2 downto 0) <= S_AXI_INTR_arprot(2 downto 0);
  Conn2_ARVALID(0) <= S_AXI_INTR_arvalid(0);
  Conn2_AWADDR(31 downto 0) <= S_AXI_INTR_awaddr(31 downto 0);
  Conn2_AWPROT(2 downto 0) <= S_AXI_INTR_awprot(2 downto 0);
  Conn2_AWVALID(0) <= S_AXI_INTR_awvalid(0);
  Conn2_BREADY(0) <= S_AXI_INTR_bready(0);
  Conn2_RREADY(0) <= S_AXI_INTR_rready(0);
  Conn2_WDATA(31 downto 0) <= S_AXI_INTR_wdata(31 downto 0);
  Conn2_WSTRB(3 downto 0) <= S_AXI_INTR_wstrb(3 downto 0);
  Conn2_WVALID(0) <= S_AXI_INTR_wvalid(0);
  S00_AXI_arready(0) <= Conn1_ARREADY;
  S00_AXI_awready(0) <= Conn1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= Conn1_BVALID;
  S00_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= Conn1_RVALID;
  S00_AXI_wready(0) <= Conn1_WREADY;
  S_AXI_INTR_arready(0) <= Conn2_ARREADY;
  S_AXI_INTR_awready(0) <= Conn2_AWREADY;
  S_AXI_INTR_bresp(1 downto 0) <= Conn2_BRESP(1 downto 0);
  S_AXI_INTR_bvalid(0) <= Conn2_BVALID;
  S_AXI_INTR_rdata(31 downto 0) <= Conn2_RDATA(31 downto 0);
  S_AXI_INTR_rresp(1 downto 0) <= Conn2_RRESP(1 downto 0);
  S_AXI_INTR_rvalid(0) <= Conn2_RVALID;
  S_AXI_INTR_wready(0) <= Conn2_WREADY;
  clk_1 <= clk;
  data_in_1(7 downto 0) <= data_in(7 downto 0);
  data_out(7 downto 0) <= scrambler_0_data_out(7 downto 0);
  enable_0_1 <= enable;
  irq <= scrambler_axi_0_irq;
  rst_1 <= rst;
  valid_in_0_1 <= valid_in;
  valid_out <= scrambler_0_valid_out;
scrambler_0: component InputInterfaceLayer_scrambler_0_0
     port map (
      clk => clk_1,
      data_in(7 downto 0) => data_in_1(7 downto 0),
      data_out(7 downto 0) => scrambler_0_data_out(7 downto 0),
      enable => enable_0_1,
      rst => rst_1,
      valid_in => valid_in_0_1,
      valid_out => scrambler_0_valid_out
    );
scrambler_axi_0: component InputInterfaceLayer_scrambler_axi_0_0
     port map (
      irq => scrambler_axi_0_irq,
      s00_axi_aclk => clk_1,
      s00_axi_araddr(3 downto 0) => Conn1_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_1,
      s00_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      s00_axi_arready => Conn1_ARREADY,
      s00_axi_arvalid => Conn1_ARVALID(0),
      s00_axi_awaddr(3 downto 0) => Conn1_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      s00_axi_awready => Conn1_AWREADY,
      s00_axi_awvalid => Conn1_AWVALID(0),
      s00_axi_bready => Conn1_BREADY(0),
      s00_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s00_axi_bvalid => Conn1_BVALID,
      s00_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s00_axi_rready => Conn1_RREADY(0),
      s00_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s00_axi_rvalid => Conn1_RVALID,
      s00_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s00_axi_wready => Conn1_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn1_WVALID(0),
      s_axi_intr_aclk => clk_1,
      s_axi_intr_araddr(4 downto 0) => Conn2_ARADDR(4 downto 0),
      s_axi_intr_aresetn => rst_1,
      s_axi_intr_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      s_axi_intr_arready => Conn2_ARREADY,
      s_axi_intr_arvalid => Conn2_ARVALID(0),
      s_axi_intr_awaddr(4 downto 0) => Conn2_AWADDR(4 downto 0),
      s_axi_intr_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      s_axi_intr_awready => Conn2_AWREADY,
      s_axi_intr_awvalid => Conn2_AWVALID(0),
      s_axi_intr_bready => Conn2_BREADY(0),
      s_axi_intr_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      s_axi_intr_bvalid => Conn2_BVALID,
      s_axi_intr_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      s_axi_intr_rready => Conn2_RREADY(0),
      s_axi_intr_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      s_axi_intr_rvalid => Conn2_RVALID,
      s_axi_intr_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      s_axi_intr_wready => Conn2_WREADY,
      s_axi_intr_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      s_axi_intr_wvalid => Conn2_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transmission_layer_imp_16F2NUM is
  port (
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    tx_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_valid_out : out STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end transmission_layer_imp_16F2NUM;

architecture STRUCTURE of transmission_layer_imp_16F2NUM is
  component InputInterfaceLayer_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component InputInterfaceLayer_fifo_generator_0_0;
  component InputInterfaceLayer_data_transmission_0_0 is
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
  end component InputInterfaceLayer_data_transmission_0_0;
  signal clk_1 : STD_LOGIC;
  signal data_transmission_0_fifo_rd_en : STD_LOGIC;
  signal data_transmission_0_tx_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_transmission_0_tx_valid_out : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal wr_en_1 : STD_LOGIC;
  signal NLW_data_transmission_0_ready_for_data_UNCONNECTED : STD_LOGIC;
begin
  clk_1 <= clk;
  din_1(7 downto 0) <= din(7 downto 0);
  rst_1 <= rst;
  tx_data_out(7 downto 0) <= data_transmission_0_tx_data_out(7 downto 0);
  tx_valid_out <= data_transmission_0_tx_valid_out;
  wr_en_1 <= wr_en;
data_transmission_0: component InputInterfaceLayer_data_transmission_0_0
     port map (
      clk => clk_1,
      fifo_dout(17 downto 0) => fifo_generator_0_dout(17 downto 0),
      fifo_empty => fifo_generator_0_empty,
      fifo_full => fifo_generator_0_full,
      fifo_rd_en => data_transmission_0_fifo_rd_en,
      ready_for_data => NLW_data_transmission_0_ready_for_data_UNCONNECTED,
      rst => rst_1,
      tx_data_out(7 downto 0) => data_transmission_0_tx_data_out(7 downto 0),
      tx_valid_out => data_transmission_0_tx_valid_out
    );
fifo_generator_0: component InputInterfaceLayer_fifo_generator_0_0
     port map (
      clk => clk_1,
      din(17 downto 8) => B"0000000000",
      din(7 downto 0) => din_1(7 downto 0),
      dout(17 downto 0) => fifo_generator_0_dout(17 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_en => data_transmission_0_fifo_rd_en,
      srst => '0',
      wr_en => wr_en_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC;
    M00_AXI_arburst : out STD_LOGIC;
    M00_AXI_arcache : out STD_LOGIC;
    M00_AXI_arlen : out STD_LOGIC;
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC;
    M00_AXI_arqos : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC;
    M00_AXI_awburst : out STD_LOGIC;
    M00_AXI_awcache : out STD_LOGIC;
    M00_AXI_awlen : out STD_LOGIC;
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC;
    M00_AXI_awqos : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC;
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC;
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC;
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arburst : out STD_LOGIC;
    M01_AXI_arcache : out STD_LOGIC;
    M01_AXI_arlen : out STD_LOGIC;
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arqos : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awburst : out STD_LOGIC;
    M01_AXI_awcache : out STD_LOGIC;
    M01_AXI_awlen : out STD_LOGIC;
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awqos : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC;
    S00_AXI_arburst : in STD_LOGIC;
    S00_AXI_arcache : in STD_LOGIC;
    S00_AXI_arlen : in STD_LOGIC;
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC;
    S00_AXI_arqos : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC;
    S00_AXI_awburst : in STD_LOGIC;
    S00_AXI_awcache : in STD_LOGIC;
    S00_AXI_awlen : in STD_LOGIC;
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC;
    S00_AXI_awqos : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC;
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC;
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC;
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC
  );
end InputInterfaceLayer_axi_interconnect_0_0;

architecture STRUCTURE of InputInterfaceLayer_axi_interconnect_0_0 is
  component InputInterfaceLayer_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component InputInterfaceLayer_xbar_2;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr <= m00_couplers_to_axi_interconnect_0_ARADDR;
  M00_AXI_arburst <= m00_couplers_to_axi_interconnect_0_ARBURST;
  M00_AXI_arcache <= m00_couplers_to_axi_interconnect_0_ARCACHE;
  M00_AXI_arlen <= m00_couplers_to_axi_interconnect_0_ARLEN;
  M00_AXI_arlock <= m00_couplers_to_axi_interconnect_0_ARLOCK;
  M00_AXI_arprot <= m00_couplers_to_axi_interconnect_0_ARPROT;
  M00_AXI_arqos <= m00_couplers_to_axi_interconnect_0_ARQOS;
  M00_AXI_arregion <= m00_couplers_to_axi_interconnect_0_ARREGION;
  M00_AXI_arsize <= m00_couplers_to_axi_interconnect_0_ARSIZE;
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr <= m00_couplers_to_axi_interconnect_0_AWADDR;
  M00_AXI_awburst <= m00_couplers_to_axi_interconnect_0_AWBURST;
  M00_AXI_awcache <= m00_couplers_to_axi_interconnect_0_AWCACHE;
  M00_AXI_awlen <= m00_couplers_to_axi_interconnect_0_AWLEN;
  M00_AXI_awlock <= m00_couplers_to_axi_interconnect_0_AWLOCK;
  M00_AXI_awprot <= m00_couplers_to_axi_interconnect_0_AWPROT;
  M00_AXI_awqos <= m00_couplers_to_axi_interconnect_0_AWQOS;
  M00_AXI_awregion <= m00_couplers_to_axi_interconnect_0_AWREGION;
  M00_AXI_awsize <= m00_couplers_to_axi_interconnect_0_AWSIZE;
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata <= m00_couplers_to_axi_interconnect_0_WDATA;
  M00_AXI_wlast <= m00_couplers_to_axi_interconnect_0_WLAST;
  M00_AXI_wstrb <= m00_couplers_to_axi_interconnect_0_WSTRB;
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr <= m01_couplers_to_axi_interconnect_0_ARADDR;
  M01_AXI_arburst <= m01_couplers_to_axi_interconnect_0_ARBURST;
  M01_AXI_arcache <= m01_couplers_to_axi_interconnect_0_ARCACHE;
  M01_AXI_arlen <= m01_couplers_to_axi_interconnect_0_ARLEN;
  M01_AXI_arlock <= m01_couplers_to_axi_interconnect_0_ARLOCK;
  M01_AXI_arprot <= m01_couplers_to_axi_interconnect_0_ARPROT;
  M01_AXI_arqos <= m01_couplers_to_axi_interconnect_0_ARQOS;
  M01_AXI_arregion <= m01_couplers_to_axi_interconnect_0_ARREGION;
  M01_AXI_arsize <= m01_couplers_to_axi_interconnect_0_ARSIZE;
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr <= m01_couplers_to_axi_interconnect_0_AWADDR;
  M01_AXI_awburst <= m01_couplers_to_axi_interconnect_0_AWBURST;
  M01_AXI_awcache <= m01_couplers_to_axi_interconnect_0_AWCACHE;
  M01_AXI_awlen <= m01_couplers_to_axi_interconnect_0_AWLEN;
  M01_AXI_awlock <= m01_couplers_to_axi_interconnect_0_AWLOCK;
  M01_AXI_awprot <= m01_couplers_to_axi_interconnect_0_AWPROT;
  M01_AXI_awqos <= m01_couplers_to_axi_interconnect_0_AWQOS;
  M01_AXI_awregion <= m01_couplers_to_axi_interconnect_0_AWREGION;
  M01_AXI_awsize <= m01_couplers_to_axi_interconnect_0_AWSIZE;
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata <= m01_couplers_to_axi_interconnect_0_WDATA;
  M01_AXI_wlast <= m01_couplers_to_axi_interconnect_0_WLAST;
  M01_AXI_wstrb <= m01_couplers_to_axi_interconnect_0_WSTRB;
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bresp <= axi_interconnect_0_to_s00_couplers_BRESP;
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata <= axi_interconnect_0_to_s00_couplers_RDATA;
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp <= axi_interconnect_0_to_s00_couplers_RRESP;
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR <= S00_AXI_araddr;
  axi_interconnect_0_to_s00_couplers_ARBURST <= S00_AXI_arburst;
  axi_interconnect_0_to_s00_couplers_ARCACHE <= S00_AXI_arcache;
  axi_interconnect_0_to_s00_couplers_ARLEN <= S00_AXI_arlen;
  axi_interconnect_0_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  axi_interconnect_0_to_s00_couplers_ARPROT <= S00_AXI_arprot;
  axi_interconnect_0_to_s00_couplers_ARQOS <= S00_AXI_arqos;
  axi_interconnect_0_to_s00_couplers_ARSIZE <= S00_AXI_arsize;
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR <= S00_AXI_awaddr;
  axi_interconnect_0_to_s00_couplers_AWBURST <= S00_AXI_awburst;
  axi_interconnect_0_to_s00_couplers_AWCACHE <= S00_AXI_awcache;
  axi_interconnect_0_to_s00_couplers_AWLEN <= S00_AXI_awlen;
  axi_interconnect_0_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  axi_interconnect_0_to_s00_couplers_AWPROT <= S00_AXI_awprot;
  axi_interconnect_0_to_s00_couplers_AWQOS <= S00_AXI_awqos;
  axi_interconnect_0_to_s00_couplers_AWSIZE <= S00_AXI_awsize;
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA <= S00_AXI_wdata;
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB <= S00_AXI_wstrb;
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP <= M00_AXI_bresp;
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA <= M00_AXI_rdata;
  m00_couplers_to_axi_interconnect_0_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_interconnect_0_RRESP <= M00_AXI_rresp;
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP <= M01_AXI_bresp;
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA <= M01_AXI_rdata;
  m01_couplers_to_axi_interconnect_0_RLAST <= M01_AXI_rlast;
  m01_couplers_to_axi_interconnect_0_RRESP <= M01_AXI_rresp;
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_AGS1WP
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr => m00_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m00_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m00_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m00_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m00_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m00_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m00_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m00_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m00_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m00_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m00_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m00_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m00_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m00_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m00_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m00_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m00_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m00_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m00_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m00_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m00_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m00_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m00_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m00_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m00_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr => xbar_to_m00_couplers_ARADDR(0),
      S_AXI_arburst => xbar_to_m00_couplers_ARBURST(0),
      S_AXI_arcache => xbar_to_m00_couplers_ARCACHE(0),
      S_AXI_arlen => xbar_to_m00_couplers_ARLEN(0),
      S_AXI_arlock => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot => xbar_to_m00_couplers_ARPROT(0),
      S_AXI_arqos => xbar_to_m00_couplers_ARQOS(0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m00_couplers_ARREGION(0),
      S_AXI_arsize => xbar_to_m00_couplers_ARSIZE(0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr => xbar_to_m00_couplers_AWADDR(0),
      S_AXI_awburst => xbar_to_m00_couplers_AWBURST(0),
      S_AXI_awcache => xbar_to_m00_couplers_AWCACHE(0),
      S_AXI_awlen => xbar_to_m00_couplers_AWLEN(0),
      S_AXI_awlock => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot => xbar_to_m00_couplers_AWPROT(0),
      S_AXI_awqos => xbar_to_m00_couplers_AWQOS(0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m00_couplers_AWREGION(0),
      S_AXI_awsize => xbar_to_m00_couplers_AWSIZE(0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp => xbar_to_m00_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata => xbar_to_m00_couplers_RDATA,
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp => xbar_to_m00_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata => xbar_to_m00_couplers_WDATA(0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m00_couplers_WSTRB(0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_JMOSR1
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr => m01_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m01_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m01_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m01_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m01_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m01_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m01_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m01_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m01_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m01_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m01_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m01_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m01_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m01_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m01_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m01_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m01_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m01_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m01_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m01_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m01_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m01_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m01_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m01_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m01_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr => xbar_to_m01_couplers_ARADDR(32),
      S_AXI_arburst => xbar_to_m01_couplers_ARBURST(2),
      S_AXI_arcache => xbar_to_m01_couplers_ARCACHE(4),
      S_AXI_arlen => xbar_to_m01_couplers_ARLEN(8),
      S_AXI_arlock => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot => xbar_to_m01_couplers_ARPROT(3),
      S_AXI_arqos => xbar_to_m01_couplers_ARQOS(4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m01_couplers_ARREGION(4),
      S_AXI_arsize => xbar_to_m01_couplers_ARSIZE(3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr => xbar_to_m01_couplers_AWADDR(32),
      S_AXI_awburst => xbar_to_m01_couplers_AWBURST(2),
      S_AXI_awcache => xbar_to_m01_couplers_AWCACHE(4),
      S_AXI_awlen => xbar_to_m01_couplers_AWLEN(8),
      S_AXI_awlock => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot => xbar_to_m01_couplers_AWPROT(3),
      S_AXI_awqos => xbar_to_m01_couplers_AWQOS(4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m01_couplers_AWREGION(4),
      S_AXI_awsize => xbar_to_m01_couplers_AWSIZE(3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp => xbar_to_m01_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata => xbar_to_m01_couplers_RDATA,
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp => xbar_to_m01_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata => xbar_to_m01_couplers_WDATA(32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m01_couplers_WSTRB(4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_16WVYS7
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr => s00_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s00_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s00_couplers_to_xbar_ARCACHE,
      M_AXI_arlen => s00_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s00_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s00_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s00_couplers_to_xbar_ARQOS,
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize => s00_couplers_to_xbar_ARSIZE,
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s00_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s00_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s00_couplers_to_xbar_AWCACHE,
      M_AXI_awlen => s00_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s00_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s00_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s00_couplers_to_xbar_AWQOS,
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize => s00_couplers_to_xbar_AWSIZE,
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp => s00_couplers_to_xbar_BRESP(0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata => s00_couplers_to_xbar_RDATA(0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp => s00_couplers_to_xbar_RRESP(0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata => s00_couplers_to_xbar_WDATA,
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb => s00_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr => axi_interconnect_0_to_s00_couplers_ARADDR,
      S_AXI_arburst => axi_interconnect_0_to_s00_couplers_ARBURST,
      S_AXI_arcache => axi_interconnect_0_to_s00_couplers_ARCACHE,
      S_AXI_arlen => axi_interconnect_0_to_s00_couplers_ARLEN,
      S_AXI_arlock => axi_interconnect_0_to_s00_couplers_ARLOCK,
      S_AXI_arprot => axi_interconnect_0_to_s00_couplers_ARPROT,
      S_AXI_arqos => axi_interconnect_0_to_s00_couplers_ARQOS,
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize => axi_interconnect_0_to_s00_couplers_ARSIZE,
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr => axi_interconnect_0_to_s00_couplers_AWADDR,
      S_AXI_awburst => axi_interconnect_0_to_s00_couplers_AWBURST,
      S_AXI_awcache => axi_interconnect_0_to_s00_couplers_AWCACHE,
      S_AXI_awlen => axi_interconnect_0_to_s00_couplers_AWLEN,
      S_AXI_awlock => axi_interconnect_0_to_s00_couplers_AWLOCK,
      S_AXI_awprot => axi_interconnect_0_to_s00_couplers_AWPROT,
      S_AXI_awqos => axi_interconnect_0_to_s00_couplers_AWQOS,
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize => axi_interconnect_0_to_s00_couplers_AWSIZE,
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp => axi_interconnect_0_to_s00_couplers_BRESP,
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata => axi_interconnect_0_to_s00_couplers_RDATA,
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp => axi_interconnect_0_to_s00_couplers_RRESP,
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata => axi_interconnect_0_to_s00_couplers_WDATA,
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb => axi_interconnect_0_to_s00_couplers_WSTRB,
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
xbar: component InputInterfaceLayer_xbar_2
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(2) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(1) => xbar_to_m00_couplers_BRESP,
      m_axi_bresp(0) => xbar_to_m00_couplers_BRESP,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(62) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(61) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(60) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(59) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(58) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(57) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(56) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(55) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(54) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(53) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(52) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(51) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(50) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(49) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(48) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(47) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(46) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(45) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(44) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(43) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(42) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(41) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(40) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(39) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(38) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(37) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(36) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(35) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(34) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(33) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(32) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(31) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(30) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(29) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(28) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(27) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(26) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(25) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(24) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(23) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(22) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(21) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(20) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(19) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(18) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(17) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(16) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(15) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(14) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(13) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(12) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(11) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(10) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(9) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(8) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(7) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(6) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(5) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(4) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(3) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(2) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(1) => xbar_to_m00_couplers_RDATA,
      m_axi_rdata(0) => xbar_to_m00_couplers_RDATA,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(2) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(1) => xbar_to_m00_couplers_RRESP,
      m_axi_rresp(0) => xbar_to_m00_couplers_RRESP,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(30) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(29) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(28) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(27) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(26) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(25) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(24) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(23) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(22) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(21) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(20) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(19) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(18) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(17) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(16) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(15) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(14) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(13) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(12) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(11) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(10) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(9) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(8) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(7) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(6) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(5) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(4) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(3) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(2) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(1) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(0) => s00_couplers_to_xbar_ARADDR,
      s_axi_arburst(1) => s00_couplers_to_xbar_ARBURST,
      s_axi_arburst(0) => s00_couplers_to_xbar_ARBURST,
      s_axi_arcache(3) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(2) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(1) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(0) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arlen(7) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(6) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(5) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(4) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(3) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(2) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(1) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(0) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(2) => s00_couplers_to_xbar_ARPROT,
      s_axi_arprot(1) => s00_couplers_to_xbar_ARPROT,
      s_axi_arprot(0) => s00_couplers_to_xbar_ARPROT,
      s_axi_arqos(3) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(2) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(1) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(0) => s00_couplers_to_xbar_ARQOS,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arsize(1) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arsize(0) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(30) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(29) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(28) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(27) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(26) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(25) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(24) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(23) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(22) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(21) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(20) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(19) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(18) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(17) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(16) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(15) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(14) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(13) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(12) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(11) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(10) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(9) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(8) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(7) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(6) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(5) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(4) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(3) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(2) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(1) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(0) => s00_couplers_to_xbar_AWADDR,
      s_axi_awburst(1) => s00_couplers_to_xbar_AWBURST,
      s_axi_awburst(0) => s00_couplers_to_xbar_AWBURST,
      s_axi_awcache(3) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(2) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(1) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(0) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awlen(7) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(6) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(5) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(4) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(3) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(2) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(1) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(0) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(2) => s00_couplers_to_xbar_AWPROT,
      s_axi_awprot(1) => s00_couplers_to_xbar_AWPROT,
      s_axi_awprot(0) => s00_couplers_to_xbar_AWPROT,
      s_axi_awqos(3) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(2) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(1) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(0) => s00_couplers_to_xbar_AWQOS,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awsize(1) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awsize(0) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(30) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(29) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(28) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(27) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(26) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(25) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(24) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(23) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(22) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(21) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(20) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(19) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(18) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(17) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(16) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(15) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(14) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(13) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(12) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(11) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(10) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(9) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(8) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(7) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(6) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(5) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(4) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(3) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(2) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(1) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(0) => s00_couplers_to_xbar_WDATA,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(2) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(1) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(0) => s00_couplers_to_xbar_WSTRB,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer_microblaze_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end InputInterfaceLayer_microblaze_0_axi_periph_0;

architecture STRUCTURE of InputInterfaceLayer_microblaze_0_axi_periph_0 is
  component InputInterfaceLayer_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component InputInterfaceLayer_xbar_0;
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_ACLK_net : STD_LOGIC;
  signal microblaze_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 26 downto 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M06_AXI_arvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M06_AXI_awvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M06_AXI_bready(0) <= m06_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M06_AXI_rready(0) <= m06_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M07_AXI_arprot(2 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M07_AXI_arvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M07_AXI_awprot(2 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M07_AXI_awvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M07_AXI_bready(0) <= m07_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M07_AXI_rready(0) <= m07_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M08_AXI_arvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M08_AXI_awvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M08_AXI_bready(0) <= m08_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M08_AXI_rready(0) <= m08_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M08_AXI_wvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_WVALID(0);
  S00_AXI_arready(0) <= microblaze_0_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= microblaze_0_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= microblaze_0_axi_periph_to_s00_couplers_WREADY(0);
  m00_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M05_AXI_wready(0);
  m06_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M06_AXI_arready(0);
  m06_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M06_AXI_awready(0);
  m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M06_AXI_bvalid(0);
  m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M06_AXI_rvalid(0);
  m06_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M06_AXI_wready(0);
  m07_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M07_AXI_arready(0);
  m07_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M07_AXI_awready(0);
  m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M07_AXI_bvalid(0);
  m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M07_AXI_rvalid(0);
  m07_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M07_AXI_wready(0);
  m08_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M08_AXI_arready(0);
  m08_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M08_AXI_awready(0);
  m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M08_AXI_bvalid(0);
  m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M08_AXI_rvalid(0);
  m08_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M08_AXI_wready(0);
  microblaze_0_axi_periph_ACLK_net <= ACLK;
  microblaze_0_axi_periph_ARESETN_net <= ARESETN;
  microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  microblaze_0_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
m00_couplers: entity work.m00_couplers_imp_GIL5EM
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_OK24ZE
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1YCHTCM
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m02_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m02_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_17ZSFEA
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m03_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m03_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m03_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready(0) => xbar_to_m03_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready(0) => xbar_to_m03_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m03_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m03_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => xbar_to_m03_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid(0) => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_U7V3GV
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m04_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m04_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_4F5RVV
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m05_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m05_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m05_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => xbar_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => xbar_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => xbar_to_m05_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid(0) => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_1BF42DJ
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m06_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m06_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m06_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m06_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m06_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m06_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m06_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m06_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m06_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m06_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready(0) => xbar_to_m06_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready(0) => xbar_to_m06_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready(0) => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m06_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m06_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready(0) => xbar_to_m06_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid(0) => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1K0HYJN
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m07_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m07_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m07_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m07_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m07_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m07_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m07_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m07_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m07_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m07_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m07_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m07_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arprot(2 downto 0) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      S_AXI_arready(0) => xbar_to_m07_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awprot(2 downto 0) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      S_AXI_awready(0) => xbar_to_m07_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready(0) => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m07_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m07_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready(0) => xbar_to_m07_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid(0) => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_15FUH4S
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m08_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m08_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m08_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m08_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m08_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m08_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m08_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m08_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m08_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m08_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arready(0) => xbar_to_m08_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awready(0) => xbar_to_m08_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready(0) => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m08_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m08_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wready(0) => xbar_to_m08_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid(0) => xbar_to_m08_couplers_WVALID(8)
    );
s00_couplers: entity work.s00_couplers_imp_10SENDS
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_to_s00_couplers_WVALID(0)
    );
xbar: component InputInterfaceLayer_xbar_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(26 downto 24) => NLW_xbar_m_axi_arprot_UNCONNECTED(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 12) => NLW_xbar_m_axi_arprot_UNCONNECTED(20 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 0),
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY(0),
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY(0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY(0),
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(26 downto 24) => NLW_xbar_m_axi_awprot_UNCONNECTED(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 12) => NLW_xbar_m_axi_awprot_UNCONNECTED(20 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 0),
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY(0),
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY(0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY(0),
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID(0),
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID(0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID(0),
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255 downto 224) => xbar_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID(0),
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID(0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID(0),
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY(0),
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY(0),
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_layer_imp_71O1LI is
  port (
    Clk : in STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    Interrupt : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    Reset : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end cpu_layer_imp_71O1LI;

architecture STRUCTURE of cpu_layer_imp_71O1LI is
  component InputInterfaceLayer_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component InputInterfaceLayer_microblaze_0_0;
  component InputInterfaceLayer_mdm_1_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component InputInterfaceLayer_mdm_1_0;
  signal Clk_1 : STD_LOGIC;
  signal Conn10_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn10_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn10_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn10_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn10_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn10_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn10_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn10_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn10_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn11_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn11_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn11_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn11_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn11_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn11_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn11_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn11_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn5_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn5_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn5_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn6_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn6_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn7_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn7_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn7_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn7_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn8_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn8_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn9_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn9_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn9_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn9_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn9_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interrupt_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal Reset_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal SYS_Rst_1 : STD_LOGIC;
  signal mdm_1_Debug_SYS_Rst : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_CAPTURE : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_CLK : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_DISABLE : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal mdm_1_MBDEBUG_0_RST : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_SHIFT : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_TDI : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_TDO : STD_LOGIC;
  signal mdm_1_MBDEBUG_0_UPDATE : STD_LOGIC;
  signal microblaze_0_DLMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_DLMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_DLMB_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_DLMB_CE : STD_LOGIC;
  signal microblaze_0_DLMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_DLMB_READSTROBE : STD_LOGIC;
  signal microblaze_0_DLMB_READY : STD_LOGIC;
  signal microblaze_0_DLMB_UE : STD_LOGIC;
  signal microblaze_0_DLMB_WAIT : STD_LOGIC;
  signal microblaze_0_DLMB_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_DLMB_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ILMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ILMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ILMB_CE : STD_LOGIC;
  signal microblaze_0_ILMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ILMB_READSTROBE : STD_LOGIC;
  signal microblaze_0_ILMB_READY : STD_LOGIC;
  signal microblaze_0_ILMB_UE : STD_LOGIC;
  signal microblaze_0_ILMB_WAIT : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DP_WVALID : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M01_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_S00_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > InputInterfaceLayer cpu_layer/microblaze_0_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
begin
  Clk_1 <= Clk;
  Conn10_ARREADY(0) <= M01_AXI_arready(0);
  Conn10_AWREADY(0) <= M01_AXI_awready(0);
  Conn10_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  Conn10_BVALID(0) <= M01_AXI_bvalid(0);
  Conn10_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  Conn10_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  Conn10_RVALID(0) <= M01_AXI_rvalid(0);
  Conn10_WREADY(0) <= M01_AXI_wready(0);
  Conn11_ARREADY(0) <= M08_AXI_arready(0);
  Conn11_AWREADY(0) <= M08_AXI_awready(0);
  Conn11_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  Conn11_BVALID(0) <= M08_AXI_bvalid(0);
  Conn11_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  Conn11_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  Conn11_RVALID(0) <= M08_AXI_rvalid(0);
  Conn11_WREADY(0) <= M08_AXI_wready(0);
  Conn3_ARREADY(0) <= M06_AXI_arready(0);
  Conn3_AWREADY(0) <= M06_AXI_awready(0);
  Conn3_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  Conn3_BVALID(0) <= M06_AXI_bvalid(0);
  Conn3_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  Conn3_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  Conn3_RVALID(0) <= M06_AXI_rvalid(0);
  Conn3_WREADY(0) <= M06_AXI_wready(0);
  Conn4_ARREADY(0) <= M03_AXI_arready(0);
  Conn4_AWREADY(0) <= M03_AXI_awready(0);
  Conn4_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  Conn4_BVALID(0) <= M03_AXI_bvalid(0);
  Conn4_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  Conn4_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  Conn4_RVALID(0) <= M03_AXI_rvalid(0);
  Conn4_WREADY(0) <= M03_AXI_wready(0);
  Conn5_ARREADY(0) <= M07_AXI_arready(0);
  Conn5_AWREADY(0) <= M07_AXI_awready(0);
  Conn5_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  Conn5_BVALID(0) <= M07_AXI_bvalid(0);
  Conn5_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  Conn5_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  Conn5_RVALID(0) <= M07_AXI_rvalid(0);
  Conn5_WREADY(0) <= M07_AXI_wready(0);
  Conn6_ARREADY(0) <= M02_AXI_arready(0);
  Conn6_AWREADY(0) <= M02_AXI_awready(0);
  Conn6_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  Conn6_BVALID(0) <= M02_AXI_bvalid(0);
  Conn6_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  Conn6_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  Conn6_RVALID(0) <= M02_AXI_rvalid(0);
  Conn6_WREADY(0) <= M02_AXI_wready(0);
  Conn7_ARREADY(0) <= M00_AXI_arready(0);
  Conn7_AWREADY(0) <= M00_AXI_awready(0);
  Conn7_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  Conn7_BVALID(0) <= M00_AXI_bvalid(0);
  Conn7_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  Conn7_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  Conn7_RVALID(0) <= M00_AXI_rvalid(0);
  Conn7_WREADY(0) <= M00_AXI_wready(0);
  Conn8_ARREADY(0) <= M04_AXI_arready(0);
  Conn8_AWREADY(0) <= M04_AXI_awready(0);
  Conn8_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  Conn8_BVALID(0) <= M04_AXI_bvalid(0);
  Conn8_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  Conn8_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  Conn8_RVALID(0) <= M04_AXI_rvalid(0);
  Conn8_WREADY(0) <= M04_AXI_wready(0);
  Conn9_ARREADY(0) <= M05_AXI_arready(0);
  Conn9_AWREADY(0) <= M05_AXI_awready(0);
  Conn9_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  Conn9_BVALID(0) <= M05_AXI_bvalid(0);
  Conn9_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  Conn9_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  Conn9_RVALID(0) <= M05_AXI_rvalid(0);
  Conn9_WREADY(0) <= M05_AXI_wready(0);
  Debug_SYS_Rst <= mdm_1_Debug_SYS_Rst;
  Interrupt_1 <= Interrupt;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= Conn7_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= Conn7_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= Conn7_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= Conn7_AWVALID(0);
  M00_AXI_bready(0) <= Conn7_BREADY(0);
  M00_AXI_rready(0) <= Conn7_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= Conn7_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= Conn7_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= Conn7_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= Conn10_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= Conn10_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= Conn10_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= Conn10_AWVALID(0);
  M01_AXI_bready(0) <= Conn10_BREADY(0);
  M01_AXI_rready(0) <= Conn10_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= Conn10_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= Conn10_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= Conn10_WVALID(0);
  M02_AXI_araddr(31 downto 0) <= Conn6_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= Conn6_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= Conn6_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= Conn6_AWVALID(0);
  M02_AXI_bready(0) <= Conn6_BREADY(0);
  M02_AXI_rready(0) <= Conn6_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= Conn6_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= Conn6_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= Conn6_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= Conn4_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= Conn4_ARPROT(2 downto 0);
  M03_AXI_arvalid(0) <= Conn4_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= Conn4_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= Conn4_AWPROT(2 downto 0);
  M03_AXI_awvalid(0) <= Conn4_AWVALID(0);
  M03_AXI_bready(0) <= Conn4_BREADY(0);
  M03_AXI_rready(0) <= Conn4_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= Conn4_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= Conn4_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= Conn4_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= Conn8_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= Conn8_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= Conn8_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= Conn8_AWVALID(0);
  M04_AXI_bready(0) <= Conn8_BREADY(0);
  M04_AXI_rready(0) <= Conn8_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= Conn8_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= Conn8_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= Conn8_WVALID(0);
  M05_AXI_araddr(31 downto 0) <= Conn9_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= Conn9_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= Conn9_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= Conn9_AWVALID(0);
  M05_AXI_bready(0) <= Conn9_BREADY(0);
  M05_AXI_rready(0) <= Conn9_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= Conn9_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= Conn9_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= Conn9_WVALID(0);
  M06_AXI_araddr(31 downto 0) <= Conn3_ARADDR(31 downto 0);
  M06_AXI_arvalid(0) <= Conn3_ARVALID(0);
  M06_AXI_awaddr(31 downto 0) <= Conn3_AWADDR(31 downto 0);
  M06_AXI_awvalid(0) <= Conn3_AWVALID(0);
  M06_AXI_bready(0) <= Conn3_BREADY(0);
  M06_AXI_rready(0) <= Conn3_RREADY(0);
  M06_AXI_wdata(31 downto 0) <= Conn3_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= Conn3_WSTRB(3 downto 0);
  M06_AXI_wvalid(0) <= Conn3_WVALID(0);
  M07_AXI_araddr(31 downto 0) <= Conn5_ARADDR(31 downto 0);
  M07_AXI_arprot(2 downto 0) <= Conn5_ARPROT(2 downto 0);
  M07_AXI_arvalid(0) <= Conn5_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= Conn5_AWADDR(31 downto 0);
  M07_AXI_awprot(2 downto 0) <= Conn5_AWPROT(2 downto 0);
  M07_AXI_awvalid(0) <= Conn5_AWVALID(0);
  M07_AXI_bready(0) <= Conn5_BREADY(0);
  M07_AXI_rready(0) <= Conn5_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= Conn5_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= Conn5_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= Conn5_WVALID(0);
  M08_AXI_araddr(31 downto 0) <= Conn11_ARADDR(31 downto 0);
  M08_AXI_arvalid(0) <= Conn11_ARVALID(0);
  M08_AXI_awaddr(31 downto 0) <= Conn11_AWADDR(31 downto 0);
  M08_AXI_awvalid(0) <= Conn11_AWVALID(0);
  M08_AXI_bready(0) <= Conn11_BREADY(0);
  M08_AXI_rready(0) <= Conn11_RREADY(0);
  M08_AXI_wdata(31 downto 0) <= Conn11_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= Conn11_WSTRB(3 downto 0);
  M08_AXI_wvalid(0) <= Conn11_WVALID(0);
  Reset_1 <= Reset;
  S00_ARESETN_1 <= S00_ARESETN;
  SYS_Rst_1 <= SYS_Rst;
axi_interconnect_0: entity work.InputInterfaceLayer_axi_interconnect_0_0
     port map (
      ACLK => Clk_1,
      ARESETN => S00_ARESETN_1,
      M00_ACLK => Clk_1,
      M00_ARESETN => M00_ARESETN_1,
      M00_AXI_araddr => NLW_axi_interconnect_0_M00_AXI_araddr_UNCONNECTED,
      M00_AXI_arburst => NLW_axi_interconnect_0_M00_AXI_arburst_UNCONNECTED,
      M00_AXI_arcache => NLW_axi_interconnect_0_M00_AXI_arcache_UNCONNECTED,
      M00_AXI_arlen => NLW_axi_interconnect_0_M00_AXI_arlen_UNCONNECTED,
      M00_AXI_arlock => NLW_axi_interconnect_0_M00_AXI_arlock_UNCONNECTED,
      M00_AXI_arprot => NLW_axi_interconnect_0_M00_AXI_arprot_UNCONNECTED,
      M00_AXI_arqos => NLW_axi_interconnect_0_M00_AXI_arqos_UNCONNECTED,
      M00_AXI_arready => '0',
      M00_AXI_arregion => NLW_axi_interconnect_0_M00_AXI_arregion_UNCONNECTED,
      M00_AXI_arsize => NLW_axi_interconnect_0_M00_AXI_arsize_UNCONNECTED,
      M00_AXI_arvalid => NLW_axi_interconnect_0_M00_AXI_arvalid_UNCONNECTED,
      M00_AXI_awaddr => NLW_axi_interconnect_0_M00_AXI_awaddr_UNCONNECTED,
      M00_AXI_awburst => NLW_axi_interconnect_0_M00_AXI_awburst_UNCONNECTED,
      M00_AXI_awcache => NLW_axi_interconnect_0_M00_AXI_awcache_UNCONNECTED,
      M00_AXI_awlen => NLW_axi_interconnect_0_M00_AXI_awlen_UNCONNECTED,
      M00_AXI_awlock => NLW_axi_interconnect_0_M00_AXI_awlock_UNCONNECTED,
      M00_AXI_awprot => NLW_axi_interconnect_0_M00_AXI_awprot_UNCONNECTED,
      M00_AXI_awqos => NLW_axi_interconnect_0_M00_AXI_awqos_UNCONNECTED,
      M00_AXI_awready => '0',
      M00_AXI_awregion => NLW_axi_interconnect_0_M00_AXI_awregion_UNCONNECTED,
      M00_AXI_awsize => NLW_axi_interconnect_0_M00_AXI_awsize_UNCONNECTED,
      M00_AXI_awvalid => NLW_axi_interconnect_0_M00_AXI_awvalid_UNCONNECTED,
      M00_AXI_bready => NLW_axi_interconnect_0_M00_AXI_bready_UNCONNECTED,
      M00_AXI_bresp => '0',
      M00_AXI_bvalid => '0',
      M00_AXI_rdata => '0',
      M00_AXI_rlast => '0',
      M00_AXI_rready => NLW_axi_interconnect_0_M00_AXI_rready_UNCONNECTED,
      M00_AXI_rresp => '0',
      M00_AXI_rvalid => '0',
      M00_AXI_wdata => NLW_axi_interconnect_0_M00_AXI_wdata_UNCONNECTED,
      M00_AXI_wlast => NLW_axi_interconnect_0_M00_AXI_wlast_UNCONNECTED,
      M00_AXI_wready => '0',
      M00_AXI_wstrb => NLW_axi_interconnect_0_M00_AXI_wstrb_UNCONNECTED,
      M00_AXI_wvalid => NLW_axi_interconnect_0_M00_AXI_wvalid_UNCONNECTED,
      M01_ACLK => Clk_1,
      M01_ARESETN => M00_ARESETN_1,
      M01_AXI_araddr => NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED,
      M01_AXI_arburst => NLW_axi_interconnect_0_M01_AXI_arburst_UNCONNECTED,
      M01_AXI_arcache => NLW_axi_interconnect_0_M01_AXI_arcache_UNCONNECTED,
      M01_AXI_arlen => NLW_axi_interconnect_0_M01_AXI_arlen_UNCONNECTED,
      M01_AXI_arlock => NLW_axi_interconnect_0_M01_AXI_arlock_UNCONNECTED,
      M01_AXI_arprot => NLW_axi_interconnect_0_M01_AXI_arprot_UNCONNECTED,
      M01_AXI_arqos => NLW_axi_interconnect_0_M01_AXI_arqos_UNCONNECTED,
      M01_AXI_arready => '0',
      M01_AXI_arregion => NLW_axi_interconnect_0_M01_AXI_arregion_UNCONNECTED,
      M01_AXI_arsize => NLW_axi_interconnect_0_M01_AXI_arsize_UNCONNECTED,
      M01_AXI_arvalid => NLW_axi_interconnect_0_M01_AXI_arvalid_UNCONNECTED,
      M01_AXI_awaddr => NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED,
      M01_AXI_awburst => NLW_axi_interconnect_0_M01_AXI_awburst_UNCONNECTED,
      M01_AXI_awcache => NLW_axi_interconnect_0_M01_AXI_awcache_UNCONNECTED,
      M01_AXI_awlen => NLW_axi_interconnect_0_M01_AXI_awlen_UNCONNECTED,
      M01_AXI_awlock => NLW_axi_interconnect_0_M01_AXI_awlock_UNCONNECTED,
      M01_AXI_awprot => NLW_axi_interconnect_0_M01_AXI_awprot_UNCONNECTED,
      M01_AXI_awqos => NLW_axi_interconnect_0_M01_AXI_awqos_UNCONNECTED,
      M01_AXI_awready => '0',
      M01_AXI_awregion => NLW_axi_interconnect_0_M01_AXI_awregion_UNCONNECTED,
      M01_AXI_awsize => NLW_axi_interconnect_0_M01_AXI_awsize_UNCONNECTED,
      M01_AXI_awvalid => NLW_axi_interconnect_0_M01_AXI_awvalid_UNCONNECTED,
      M01_AXI_bready => NLW_axi_interconnect_0_M01_AXI_bready_UNCONNECTED,
      M01_AXI_bresp => '0',
      M01_AXI_bvalid => '0',
      M01_AXI_rdata => '0',
      M01_AXI_rlast => '0',
      M01_AXI_rready => NLW_axi_interconnect_0_M01_AXI_rready_UNCONNECTED,
      M01_AXI_rresp => '0',
      M01_AXI_rvalid => '0',
      M01_AXI_wdata => NLW_axi_interconnect_0_M01_AXI_wdata_UNCONNECTED,
      M01_AXI_wlast => NLW_axi_interconnect_0_M01_AXI_wlast_UNCONNECTED,
      M01_AXI_wready => '0',
      M01_AXI_wstrb => NLW_axi_interconnect_0_M01_AXI_wstrb_UNCONNECTED,
      M01_AXI_wvalid => NLW_axi_interconnect_0_M01_AXI_wvalid_UNCONNECTED,
      S00_ACLK => Clk_1,
      S00_ARESETN => M00_ARESETN_1,
      S00_AXI_araddr => '0',
      S00_AXI_arburst => '0',
      S00_AXI_arcache => '0',
      S00_AXI_arlen => '0',
      S00_AXI_arlock => '0',
      S00_AXI_arprot => '0',
      S00_AXI_arqos => '0',
      S00_AXI_arready => NLW_axi_interconnect_0_S00_AXI_arready_UNCONNECTED,
      S00_AXI_arsize => '0',
      S00_AXI_arvalid => '0',
      S00_AXI_awaddr => '0',
      S00_AXI_awburst => '0',
      S00_AXI_awcache => '0',
      S00_AXI_awlen => '0',
      S00_AXI_awlock => '0',
      S00_AXI_awprot => '0',
      S00_AXI_awqos => '0',
      S00_AXI_awready => NLW_axi_interconnect_0_S00_AXI_awready_UNCONNECTED,
      S00_AXI_awsize => '0',
      S00_AXI_awvalid => '0',
      S00_AXI_bready => '0',
      S00_AXI_bresp => NLW_axi_interconnect_0_S00_AXI_bresp_UNCONNECTED,
      S00_AXI_bvalid => NLW_axi_interconnect_0_S00_AXI_bvalid_UNCONNECTED,
      S00_AXI_rdata => NLW_axi_interconnect_0_S00_AXI_rdata_UNCONNECTED,
      S00_AXI_rlast => NLW_axi_interconnect_0_S00_AXI_rlast_UNCONNECTED,
      S00_AXI_rready => '0',
      S00_AXI_rresp => NLW_axi_interconnect_0_S00_AXI_rresp_UNCONNECTED,
      S00_AXI_rvalid => NLW_axi_interconnect_0_S00_AXI_rvalid_UNCONNECTED,
      S00_AXI_wdata => '0',
      S00_AXI_wlast => '0',
      S00_AXI_wready => NLW_axi_interconnect_0_S00_AXI_wready_UNCONNECTED,
      S00_AXI_wstrb => '0',
      S00_AXI_wvalid => '0'
    );
mdm_1: component InputInterfaceLayer_mdm_1_0
     port map (
      Dbg_Capture_0 => mdm_1_MBDEBUG_0_CAPTURE,
      Dbg_Clk_0 => mdm_1_MBDEBUG_0_CLK,
      Dbg_Disable_0 => mdm_1_MBDEBUG_0_DISABLE,
      Dbg_Reg_En_0(0 to 7) => mdm_1_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Rst_0 => mdm_1_MBDEBUG_0_RST,
      Dbg_Shift_0 => mdm_1_MBDEBUG_0_SHIFT,
      Dbg_TDI_0 => mdm_1_MBDEBUG_0_TDI,
      Dbg_TDO_0 => mdm_1_MBDEBUG_0_TDO,
      Dbg_Update_0 => mdm_1_MBDEBUG_0_UPDATE,
      Debug_SYS_Rst => mdm_1_Debug_SYS_Rst
    );
microblaze_0: component InputInterfaceLayer_microblaze_0_0
     port map (
      Byte_Enable(0 to 3) => microblaze_0_DLMB_BE(0 to 3),
      Clk => Clk_1,
      DCE => microblaze_0_DLMB_CE,
      DReady => microblaze_0_DLMB_READY,
      DUE => microblaze_0_DLMB_UE,
      DWait => microblaze_0_DLMB_WAIT,
      D_AS => microblaze_0_DLMB_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_DLMB_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_DLMB_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_DLMB_WRITEDBUS(0 to 31),
      Dbg_Capture => mdm_1_MBDEBUG_0_CAPTURE,
      Dbg_Clk => mdm_1_MBDEBUG_0_CLK,
      Dbg_Disable => mdm_1_MBDEBUG_0_DISABLE,
      Dbg_Reg_En(0 to 7) => mdm_1_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Shift => mdm_1_MBDEBUG_0_SHIFT,
      Dbg_TDI => mdm_1_MBDEBUG_0_TDI,
      Dbg_TDO => mdm_1_MBDEBUG_0_TDO,
      Dbg_Update => mdm_1_MBDEBUG_0_UPDATE,
      Debug_Rst => mdm_1_MBDEBUG_0_RST,
      ICE => microblaze_0_ILMB_CE,
      IFetch => microblaze_0_ILMB_READSTROBE,
      IReady => microblaze_0_ILMB_READY,
      IUE => microblaze_0_ILMB_UE,
      IWAIT => microblaze_0_ILMB_WAIT,
      I_AS => microblaze_0_ILMB_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ILMB_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ILMB_ABUS(0 to 31),
      Interrupt => Interrupt_1,
      Interrupt_Ack(0 to 1) => NLW_microblaze_0_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_M_AXI_DP_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_0_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_M_AXI_DP_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_0_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_M_AXI_DP_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_M_AXI_DP_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_M_AXI_DP_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_M_AXI_DP_WVALID,
      Read_Strobe => microblaze_0_DLMB_READSTROBE,
      Reset => Reset_1,
      Write_Strobe => microblaze_0_DLMB_WRITESTROBE
    );
microblaze_0_axi_periph: entity work.InputInterfaceLayer_microblaze_0_axi_periph_0
     port map (
      ACLK => Clk_1,
      ARESETN => S00_ARESETN_1,
      M00_ACLK => Clk_1,
      M00_ARESETN => S00_ARESETN_1,
      M00_AXI_araddr(31 downto 0) => Conn7_ARADDR(31 downto 0),
      M00_AXI_arready(0) => Conn7_ARREADY(0),
      M00_AXI_arvalid(0) => Conn7_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => Conn7_AWADDR(31 downto 0),
      M00_AXI_awready(0) => Conn7_AWREADY(0),
      M00_AXI_awvalid(0) => Conn7_AWVALID(0),
      M00_AXI_bready(0) => Conn7_BREADY(0),
      M00_AXI_bresp(1 downto 0) => Conn7_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => Conn7_BVALID(0),
      M00_AXI_rdata(31 downto 0) => Conn7_RDATA(31 downto 0),
      M00_AXI_rready(0) => Conn7_RREADY(0),
      M00_AXI_rresp(1 downto 0) => Conn7_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => Conn7_RVALID(0),
      M00_AXI_wdata(31 downto 0) => Conn7_WDATA(31 downto 0),
      M00_AXI_wready(0) => Conn7_WREADY(0),
      M00_AXI_wstrb(3 downto 0) => Conn7_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => Conn7_WVALID(0),
      M01_ACLK => Clk_1,
      M01_ARESETN => S00_ARESETN_1,
      M01_AXI_araddr(31 downto 0) => Conn10_ARADDR(31 downto 0),
      M01_AXI_arready(0) => Conn10_ARREADY(0),
      M01_AXI_arvalid(0) => Conn10_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => Conn10_AWADDR(31 downto 0),
      M01_AXI_awready(0) => Conn10_AWREADY(0),
      M01_AXI_awvalid(0) => Conn10_AWVALID(0),
      M01_AXI_bready(0) => Conn10_BREADY(0),
      M01_AXI_bresp(1 downto 0) => Conn10_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => Conn10_BVALID(0),
      M01_AXI_rdata(31 downto 0) => Conn10_RDATA(31 downto 0),
      M01_AXI_rready(0) => Conn10_RREADY(0),
      M01_AXI_rresp(1 downto 0) => Conn10_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => Conn10_RVALID(0),
      M01_AXI_wdata(31 downto 0) => Conn10_WDATA(31 downto 0),
      M01_AXI_wready(0) => Conn10_WREADY(0),
      M01_AXI_wstrb(3 downto 0) => Conn10_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => Conn10_WVALID(0),
      M02_ACLK => Clk_1,
      M02_ARESETN => S00_ARESETN_1,
      M02_AXI_araddr(31 downto 0) => Conn6_ARADDR(31 downto 0),
      M02_AXI_arready(0) => Conn6_ARREADY(0),
      M02_AXI_arvalid(0) => Conn6_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => Conn6_AWADDR(31 downto 0),
      M02_AXI_awready(0) => Conn6_AWREADY(0),
      M02_AXI_awvalid(0) => Conn6_AWVALID(0),
      M02_AXI_bready(0) => Conn6_BREADY(0),
      M02_AXI_bresp(1 downto 0) => Conn6_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => Conn6_BVALID(0),
      M02_AXI_rdata(31 downto 0) => Conn6_RDATA(31 downto 0),
      M02_AXI_rready(0) => Conn6_RREADY(0),
      M02_AXI_rresp(1 downto 0) => Conn6_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => Conn6_RVALID(0),
      M02_AXI_wdata(31 downto 0) => Conn6_WDATA(31 downto 0),
      M02_AXI_wready(0) => Conn6_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => Conn6_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => Conn6_WVALID(0),
      M03_ACLK => Clk_1,
      M03_ARESETN => S00_ARESETN_1,
      M03_AXI_araddr(31 downto 0) => Conn4_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => Conn4_ARPROT(2 downto 0),
      M03_AXI_arready(0) => Conn4_ARREADY(0),
      M03_AXI_arvalid(0) => Conn4_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => Conn4_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => Conn4_AWPROT(2 downto 0),
      M03_AXI_awready(0) => Conn4_AWREADY(0),
      M03_AXI_awvalid(0) => Conn4_AWVALID(0),
      M03_AXI_bready(0) => Conn4_BREADY(0),
      M03_AXI_bresp(1 downto 0) => Conn4_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => Conn4_BVALID(0),
      M03_AXI_rdata(31 downto 0) => Conn4_RDATA(31 downto 0),
      M03_AXI_rready(0) => Conn4_RREADY(0),
      M03_AXI_rresp(1 downto 0) => Conn4_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => Conn4_RVALID(0),
      M03_AXI_wdata(31 downto 0) => Conn4_WDATA(31 downto 0),
      M03_AXI_wready(0) => Conn4_WREADY(0),
      M03_AXI_wstrb(3 downto 0) => Conn4_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => Conn4_WVALID(0),
      M04_ACLK => Clk_1,
      M04_ARESETN => S00_ARESETN_1,
      M04_AXI_araddr(31 downto 0) => Conn8_ARADDR(31 downto 0),
      M04_AXI_arready(0) => Conn8_ARREADY(0),
      M04_AXI_arvalid(0) => Conn8_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => Conn8_AWADDR(31 downto 0),
      M04_AXI_awready(0) => Conn8_AWREADY(0),
      M04_AXI_awvalid(0) => Conn8_AWVALID(0),
      M04_AXI_bready(0) => Conn8_BREADY(0),
      M04_AXI_bresp(1 downto 0) => Conn8_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => Conn8_BVALID(0),
      M04_AXI_rdata(31 downto 0) => Conn8_RDATA(31 downto 0),
      M04_AXI_rready(0) => Conn8_RREADY(0),
      M04_AXI_rresp(1 downto 0) => Conn8_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => Conn8_RVALID(0),
      M04_AXI_wdata(31 downto 0) => Conn8_WDATA(31 downto 0),
      M04_AXI_wready(0) => Conn8_WREADY(0),
      M04_AXI_wstrb(3 downto 0) => Conn8_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => Conn8_WVALID(0),
      M05_ACLK => Clk_1,
      M05_ARESETN => S00_ARESETN_1,
      M05_AXI_araddr(31 downto 0) => Conn9_ARADDR(31 downto 0),
      M05_AXI_arready(0) => Conn9_ARREADY(0),
      M05_AXI_arvalid(0) => Conn9_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => Conn9_AWADDR(31 downto 0),
      M05_AXI_awready(0) => Conn9_AWREADY(0),
      M05_AXI_awvalid(0) => Conn9_AWVALID(0),
      M05_AXI_bready(0) => Conn9_BREADY(0),
      M05_AXI_bresp(1 downto 0) => Conn9_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => Conn9_BVALID(0),
      M05_AXI_rdata(31 downto 0) => Conn9_RDATA(31 downto 0),
      M05_AXI_rready(0) => Conn9_RREADY(0),
      M05_AXI_rresp(1 downto 0) => Conn9_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => Conn9_RVALID(0),
      M05_AXI_wdata(31 downto 0) => Conn9_WDATA(31 downto 0),
      M05_AXI_wready(0) => Conn9_WREADY(0),
      M05_AXI_wstrb(3 downto 0) => Conn9_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => Conn9_WVALID(0),
      M06_ACLK => Clk_1,
      M06_ARESETN => S00_ARESETN_1,
      M06_AXI_araddr(31 downto 0) => Conn3_ARADDR(31 downto 0),
      M06_AXI_arready(0) => Conn3_ARREADY(0),
      M06_AXI_arvalid(0) => Conn3_ARVALID(0),
      M06_AXI_awaddr(31 downto 0) => Conn3_AWADDR(31 downto 0),
      M06_AXI_awready(0) => Conn3_AWREADY(0),
      M06_AXI_awvalid(0) => Conn3_AWVALID(0),
      M06_AXI_bready(0) => Conn3_BREADY(0),
      M06_AXI_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      M06_AXI_bvalid(0) => Conn3_BVALID(0),
      M06_AXI_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      M06_AXI_rready(0) => Conn3_RREADY(0),
      M06_AXI_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      M06_AXI_rvalid(0) => Conn3_RVALID(0),
      M06_AXI_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      M06_AXI_wready(0) => Conn3_WREADY(0),
      M06_AXI_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      M06_AXI_wvalid(0) => Conn3_WVALID(0),
      M07_ACLK => Clk_1,
      M07_ARESETN => S00_ARESETN_1,
      M07_AXI_araddr(31 downto 0) => Conn5_ARADDR(31 downto 0),
      M07_AXI_arprot(2 downto 0) => Conn5_ARPROT(2 downto 0),
      M07_AXI_arready(0) => Conn5_ARREADY(0),
      M07_AXI_arvalid(0) => Conn5_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => Conn5_AWADDR(31 downto 0),
      M07_AXI_awprot(2 downto 0) => Conn5_AWPROT(2 downto 0),
      M07_AXI_awready(0) => Conn5_AWREADY(0),
      M07_AXI_awvalid(0) => Conn5_AWVALID(0),
      M07_AXI_bready(0) => Conn5_BREADY(0),
      M07_AXI_bresp(1 downto 0) => Conn5_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => Conn5_BVALID(0),
      M07_AXI_rdata(31 downto 0) => Conn5_RDATA(31 downto 0),
      M07_AXI_rready(0) => Conn5_RREADY(0),
      M07_AXI_rresp(1 downto 0) => Conn5_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => Conn5_RVALID(0),
      M07_AXI_wdata(31 downto 0) => Conn5_WDATA(31 downto 0),
      M07_AXI_wready(0) => Conn5_WREADY(0),
      M07_AXI_wstrb(3 downto 0) => Conn5_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => Conn5_WVALID(0),
      M08_ACLK => Clk_1,
      M08_ARESETN => S00_ARESETN_1,
      M08_AXI_araddr(31 downto 0) => Conn11_ARADDR(31 downto 0),
      M08_AXI_arready(0) => Conn11_ARREADY(0),
      M08_AXI_arvalid(0) => Conn11_ARVALID(0),
      M08_AXI_awaddr(31 downto 0) => Conn11_AWADDR(31 downto 0),
      M08_AXI_awready(0) => Conn11_AWREADY(0),
      M08_AXI_awvalid(0) => Conn11_AWVALID(0),
      M08_AXI_bready(0) => Conn11_BREADY(0),
      M08_AXI_bresp(1 downto 0) => Conn11_BRESP(1 downto 0),
      M08_AXI_bvalid(0) => Conn11_BVALID(0),
      M08_AXI_rdata(31 downto 0) => Conn11_RDATA(31 downto 0),
      M08_AXI_rready(0) => Conn11_RREADY(0),
      M08_AXI_rresp(1 downto 0) => Conn11_RRESP(1 downto 0),
      M08_AXI_rvalid(0) => Conn11_RVALID(0),
      M08_AXI_wdata(31 downto 0) => Conn11_WDATA(31 downto 0),
      M08_AXI_wready(0) => Conn11_WREADY(0),
      M08_AXI_wstrb(3 downto 0) => Conn11_WSTRB(3 downto 0),
      M08_AXI_wvalid(0) => Conn11_WVALID(0),
      S00_ACLK => Clk_1,
      S00_ARESETN => S00_ARESETN_1,
      S00_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_0_M_AXI_DP_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_0_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_0_M_AXI_DP_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_0_M_AXI_DP_AWVALID,
      S00_AXI_bready(0) => microblaze_0_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_M_AXI_DP_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_0_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_M_AXI_DP_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_0_M_AXI_DP_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_M_AXI_DP_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_47HO4M
     port map (
      DLMB_abus(0 to 31) => microblaze_0_DLMB_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_DLMB_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_DLMB_BE(0 to 3),
      DLMB_ce => microblaze_0_DLMB_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_DLMB_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_DLMB_READSTROBE,
      DLMB_ready => microblaze_0_DLMB_READY,
      DLMB_ue => microblaze_0_DLMB_UE,
      DLMB_wait => microblaze_0_DLMB_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_DLMB_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_DLMB_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ILMB_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ILMB_ADDRSTROBE,
      ILMB_ce => microblaze_0_ILMB_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ILMB_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ILMB_READSTROBE,
      ILMB_ready => microblaze_0_ILMB_READY,
      ILMB_ue => microblaze_0_ILMB_UE,
      ILMB_wait => microblaze_0_ILMB_WAIT,
      LMB_Clk => Clk_1,
      SYS_Rst => SYS_Rst_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer is
  port (
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
    data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dip_switches_16bits_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    enable : in STD_LOGIC;
    encrypted_data_out_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out_0 : out STD_LOGIC;
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
    reset : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    temp_sensor_scl_i : in STD_LOGIC;
    temp_sensor_scl_o : out STD_LOGIC;
    temp_sensor_scl_t : out STD_LOGIC;
    temp_sensor_sda_i : in STD_LOGIC;
    temp_sensor_sda_o : out STD_LOGIC;
    temp_sensor_sda_t : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    valid_in : in STD_LOGIC;
    valid_out_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of InputInterfaceLayer : entity is "InputInterfaceLayer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=InputInterfaceLayer,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=52,numReposBlks=27,numNonXlnxBlks=1,numHierBlks=25,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=22,da_board_cnt=11,da_clkrst_cnt=11,da_mb_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of InputInterfaceLayer : entity is "InputInterfaceLayer.hwdef";
end InputInterfaceLayer;

architecture STRUCTURE of InputInterfaceLayer is
  signal AXI_LITE_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_LITE_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_LITE_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal AXI_LITE_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_LITE_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal AXI_LITE_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_LITE_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_LITE_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AXI_LITE_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In5_1 : STD_LOGIC;
  signal Reset_2 : STD_LOGIC;
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SYS_Rst_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI1_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI1_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI1_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI2_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI2_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI2_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI2_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI3_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI3_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI3_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI3_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI3_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI3_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI3_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI3_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI4_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI4_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI4_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI4_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI4_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI4_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI4_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI4_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_2_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_2_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_2_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_2_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_2_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_INTR_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_INTR_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_INTR_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_INTR_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_INTR_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_INTR_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_INTR_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_INTR_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_INTR_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_INTR_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_ethernetlite_0_MDIO_MDC : STD_LOGIC;
  signal axi_ethernetlite_0_MDIO_MDIO_I : STD_LOGIC;
  signal axi_ethernetlite_0_MDIO_MDIO_O : STD_LOGIC;
  signal axi_ethernetlite_0_MDIO_MDIO_T : STD_LOGIC;
  signal axi_ethernetlite_0_MII_COL : STD_LOGIC;
  signal axi_ethernetlite_0_MII_CRS : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RST_N : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RXD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernetlite_0_MII_RX_CLK : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RX_DV : STD_LOGIC;
  signal axi_ethernetlite_0_MII_RX_ER : STD_LOGIC;
  signal axi_ethernetlite_0_MII_TXD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ethernetlite_0_MII_TX_CLK : STD_LOGIC;
  signal axi_ethernetlite_0_MII_TX_EN : STD_LOGIC;
  signal axi_ethernetlite_0_ip2intc_irpt : STD_LOGIC;
  signal axi_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_I : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_O : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_T : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_I : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_O : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_T : STD_LOGIC;
  signal axi_iic_0_iic2intc_irpt : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_T : STD_LOGIC;
  signal axi_quad_spi_0_ip2intc_irpt : STD_LOGIC;
  signal axi_uartlite_0_UART_RxD : STD_LOGIC;
  signal axi_uartlite_0_UART_TxD : STD_LOGIC;
  signal axi_uartlite_0_interrupt : STD_LOGIC;
  signal clk_wiz_locked : STD_LOGIC;
  signal cpu_layer_Debug_SYS_Rst : STD_LOGIC;
  signal data_in_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decryption_layer_data_out_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decryption_layer_valid_out_0 : STD_LOGIC;
  signal enable_0_1 : STD_LOGIC;
  signal encrypted_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encryption_block_encrypted_valid_out : STD_LOGIC;
  signal interrupt_layer_irq : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal reception_layer_received_data_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reception_layer_received_valid_0 : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal scrambler_block_data_out_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scrambler_block_valid_out_0 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal transmission_layer_tx_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal transmission_layer_tx_valid_out : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of acl_spi_io0_i : signal is "xilinx.com:interface:spi:1.0 acl_spi IO0_I";
  attribute X_INTERFACE_INFO of acl_spi_io0_o : signal is "xilinx.com:interface:spi:1.0 acl_spi IO0_O";
  attribute X_INTERFACE_INFO of acl_spi_io0_t : signal is "xilinx.com:interface:spi:1.0 acl_spi IO0_T";
  attribute X_INTERFACE_INFO of acl_spi_io1_i : signal is "xilinx.com:interface:spi:1.0 acl_spi IO1_I";
  attribute X_INTERFACE_INFO of acl_spi_io1_o : signal is "xilinx.com:interface:spi:1.0 acl_spi IO1_O";
  attribute X_INTERFACE_INFO of acl_spi_io1_t : signal is "xilinx.com:interface:spi:1.0 acl_spi IO1_T";
  attribute X_INTERFACE_INFO of acl_spi_sck_i : signal is "xilinx.com:interface:spi:1.0 acl_spi SCK_I";
  attribute X_INTERFACE_INFO of acl_spi_sck_o : signal is "xilinx.com:interface:spi:1.0 acl_spi SCK_O";
  attribute X_INTERFACE_INFO of acl_spi_sck_t : signal is "xilinx.com:interface:spi:1.0 acl_spi SCK_T";
  attribute X_INTERFACE_INFO of acl_spi_ss_i : signal is "xilinx.com:interface:spi:1.0 acl_spi SS_I";
  attribute X_INTERFACE_INFO of acl_spi_ss_o : signal is "xilinx.com:interface:spi:1.0 acl_spi SS_O";
  attribute X_INTERFACE_INFO of acl_spi_ss_t : signal is "xilinx.com:interface:spi:1.0 acl_spi SS_T";
  attribute X_INTERFACE_INFO of mdio_rtl_mdc : signal is "xilinx.com:interface:mdio:1.0 mdio_rtl MDC";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of mdio_rtl_mdc : signal is "XIL_INTERFACENAME mdio_rtl, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of mdio_rtl_mdio_i : signal is "xilinx.com:interface:mdio:1.0 mdio_rtl MDIO_I";
  attribute X_INTERFACE_INFO of mdio_rtl_mdio_o : signal is "xilinx.com:interface:mdio:1.0 mdio_rtl MDIO_O";
  attribute X_INTERFACE_INFO of mdio_rtl_mdio_t : signal is "xilinx.com:interface:mdio:1.0 mdio_rtl MDIO_T";
  attribute X_INTERFACE_INFO of mii_rtl_col : signal is "xilinx.com:interface:mii:1.0 mii_rtl COL";
  attribute X_INTERFACE_INFO of mii_rtl_crs : signal is "xilinx.com:interface:mii:1.0 mii_rtl CRS";
  attribute X_INTERFACE_INFO of mii_rtl_rst_n : signal is "xilinx.com:interface:mii:1.0 mii_rtl RST_N";
  attribute X_INTERFACE_INFO of mii_rtl_rx_clk : signal is "xilinx.com:interface:mii:1.0 mii_rtl RX_CLK";
  attribute X_INTERFACE_INFO of mii_rtl_rx_dv : signal is "xilinx.com:interface:mii:1.0 mii_rtl RX_DV";
  attribute X_INTERFACE_INFO of mii_rtl_rx_er : signal is "xilinx.com:interface:mii:1.0 mii_rtl RX_ER";
  attribute X_INTERFACE_INFO of mii_rtl_tx_clk : signal is "xilinx.com:interface:mii:1.0 mii_rtl TX_CLK";
  attribute X_INTERFACE_INFO of mii_rtl_tx_en : signal is "xilinx.com:interface:mii:1.0 mii_rtl TX_EN";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN InputInterfaceLayer_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of temp_sensor_scl_i : signal is "xilinx.com:interface:iic:1.0 temp_sensor SCL_I";
  attribute X_INTERFACE_INFO of temp_sensor_scl_o : signal is "xilinx.com:interface:iic:1.0 temp_sensor SCL_O";
  attribute X_INTERFACE_INFO of temp_sensor_scl_t : signal is "xilinx.com:interface:iic:1.0 temp_sensor SCL_T";
  attribute X_INTERFACE_INFO of temp_sensor_sda_i : signal is "xilinx.com:interface:iic:1.0 temp_sensor SDA_I";
  attribute X_INTERFACE_INFO of temp_sensor_sda_o : signal is "xilinx.com:interface:iic:1.0 temp_sensor SDA_O";
  attribute X_INTERFACE_INFO of temp_sensor_sda_t : signal is "xilinx.com:interface:iic:1.0 temp_sensor SDA_T";
  attribute X_INTERFACE_INFO of usb_uart_rxd : signal is "xilinx.com:interface:uart:1.0 usb_uart RxD";
  attribute X_INTERFACE_INFO of usb_uart_txd : signal is "xilinx.com:interface:uart:1.0 usb_uart TxD";
  attribute X_INTERFACE_INFO of dip_switches_16bits_tri_i : signal is "xilinx.com:interface:gpio:1.0 dip_switches_16bits TRI_I";
  attribute X_INTERFACE_INFO of mii_rtl_rxd : signal is "xilinx.com:interface:mii:1.0 mii_rtl RXD";
  attribute X_INTERFACE_INFO of mii_rtl_txd : signal is "xilinx.com:interface:mii:1.0 mii_rtl TXD";
begin
  acl_spi_io0_o <= axi_quad_spi_0_SPI_0_IO0_O;
  acl_spi_io0_t <= axi_quad_spi_0_SPI_0_IO0_T;
  acl_spi_io1_o <= axi_quad_spi_0_SPI_0_IO1_O;
  acl_spi_io1_t <= axi_quad_spi_0_SPI_0_IO1_T;
  acl_spi_sck_o <= axi_quad_spi_0_SPI_0_SCK_O;
  acl_spi_sck_t <= axi_quad_spi_0_SPI_0_SCK_T;
  acl_spi_ss_o <= axi_quad_spi_0_SPI_0_SS_O;
  acl_spi_ss_t <= axi_quad_spi_0_SPI_0_SS_T;
  axi_ethernetlite_0_MDIO_MDIO_I <= mdio_rtl_mdio_i;
  axi_ethernetlite_0_MII_COL <= mii_rtl_col;
  axi_ethernetlite_0_MII_CRS <= mii_rtl_crs;
  axi_ethernetlite_0_MII_RXD(3 downto 0) <= mii_rtl_rxd(3 downto 0);
  axi_ethernetlite_0_MII_RX_CLK <= mii_rtl_rx_clk;
  axi_ethernetlite_0_MII_RX_DV <= mii_rtl_rx_dv;
  axi_ethernetlite_0_MII_RX_ER <= mii_rtl_rx_er;
  axi_ethernetlite_0_MII_TX_CLK <= mii_rtl_tx_clk;
  axi_gpio_0_GPIO_TRI_I(15 downto 0) <= dip_switches_16bits_tri_i(15 downto 0);
  axi_iic_0_IIC_SCL_I <= temp_sensor_scl_i;
  axi_iic_0_IIC_SDA_I <= temp_sensor_sda_i;
  axi_quad_spi_0_SPI_0_IO0_I <= acl_spi_io0_i;
  axi_quad_spi_0_SPI_0_IO1_I <= acl_spi_io1_i;
  axi_quad_spi_0_SPI_0_SCK_I <= acl_spi_sck_i;
  axi_quad_spi_0_SPI_0_SS_I <= acl_spi_ss_i;
  axi_uartlite_0_UART_RxD <= usb_uart_rxd;
  data_out_0(7 downto 0) <= decryption_layer_data_out_0(7 downto 0);
  enable_0_1 <= enable;
  mdio_rtl_mdc <= axi_ethernetlite_0_MDIO_MDC;
  mdio_rtl_mdio_o <= axi_ethernetlite_0_MDIO_MDIO_O;
  mdio_rtl_mdio_t <= axi_ethernetlite_0_MDIO_MDIO_T;
  mii_rtl_rst_n <= axi_ethernetlite_0_MII_RST_N;
  mii_rtl_tx_en <= axi_ethernetlite_0_MII_TX_EN;
  mii_rtl_txd(3 downto 0) <= axi_ethernetlite_0_MII_TXD(3 downto 0);
  reset_0_1 <= reset_0;
  reset_1 <= reset;
  sys_clock_1 <= sys_clock;
  temp_sensor_scl_o <= axi_iic_0_IIC_SCL_O;
  temp_sensor_scl_t <= axi_iic_0_IIC_SCL_T;
  temp_sensor_sda_o <= axi_iic_0_IIC_SDA_O;
  temp_sensor_sda_t <= axi_iic_0_IIC_SDA_T;
  usb_uart_txd <= axi_uartlite_0_UART_TxD;
  valid_out_0 <= decryption_layer_valid_out_0;
  encrypted_valid_out_0 <= 'Z';
  encrypted_data_out_0(0) <= 'Z';
  encrypted_data_out_0(1) <= 'Z';
  encrypted_data_out_0(2) <= 'Z';
  encrypted_data_out_0(3) <= 'Z';
  encrypted_data_out_0(4) <= 'Z';
  encrypted_data_out_0(5) <= 'Z';
  encrypted_data_out_0(6) <= 'Z';
  encrypted_data_out_0(7) <= 'Z';
clock_layer: entity work.clock_layer_imp_TOT2HB
     port map (
      bus_struct_reset(0) => SYS_Rst_1(0),
      clk_out1 => microblaze_0_Clk,
      locked => clk_wiz_locked,
      mb_debug_sys_rst => cpu_layer_Debug_SYS_Rst,
      mb_reset => Reset_2,
      peripheral_aresetn(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
      reset(0) => reset_1,
      reset_0 => reset_0_1,
      sys_clock => sys_clock_1
    );
cpu_layer: entity work.cpu_layer_imp_71O1LI
     port map (
      Clk => microblaze_0_Clk,
      Debug_SYS_Rst => cpu_layer_Debug_SYS_Rst,
      Interrupt => interrupt_layer_irq,
      M00_ARESETN => clk_wiz_locked,
      M00_AXI_araddr(31 downto 0) => S_AXI1_1_ARADDR(31 downto 0),
      M00_AXI_arready(0) => S_AXI1_1_ARREADY(0),
      M00_AXI_arvalid(0) => S_AXI1_1_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => S_AXI1_1_AWADDR(31 downto 0),
      M00_AXI_awready(0) => S_AXI1_1_AWREADY(0),
      M00_AXI_awvalid(0) => S_AXI1_1_AWVALID(0),
      M00_AXI_bready(0) => S_AXI1_1_BREADY(0),
      M00_AXI_bresp(1 downto 0) => S_AXI1_1_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => S_AXI1_1_BVALID(0),
      M00_AXI_rdata(31 downto 0) => S_AXI1_1_RDATA(31 downto 0),
      M00_AXI_rready(0) => S_AXI1_1_RREADY(0),
      M00_AXI_rresp(1 downto 0) => S_AXI1_1_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => S_AXI1_1_RVALID(0),
      M00_AXI_wdata(31 downto 0) => S_AXI1_1_WDATA(31 downto 0),
      M00_AXI_wready(0) => S_AXI1_1_WREADY(0),
      M00_AXI_wstrb(3 downto 0) => S_AXI1_1_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => S_AXI1_1_WVALID(0),
      M01_AXI_araddr(31 downto 0) => S_AXI3_1_ARADDR(31 downto 0),
      M01_AXI_arready(0) => S_AXI3_1_ARREADY(0),
      M01_AXI_arvalid(0) => S_AXI3_1_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => S_AXI3_1_AWADDR(31 downto 0),
      M01_AXI_awready(0) => S_AXI3_1_AWREADY(0),
      M01_AXI_awvalid(0) => S_AXI3_1_AWVALID(0),
      M01_AXI_bready(0) => S_AXI3_1_BREADY(0),
      M01_AXI_bresp(1 downto 0) => S_AXI3_1_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => S_AXI3_1_BVALID(0),
      M01_AXI_rdata(31 downto 0) => S_AXI3_1_RDATA(31 downto 0),
      M01_AXI_rready(0) => S_AXI3_1_RREADY(0),
      M01_AXI_rresp(1 downto 0) => S_AXI3_1_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => S_AXI3_1_RVALID(0),
      M01_AXI_wdata(31 downto 0) => S_AXI3_1_WDATA(31 downto 0),
      M01_AXI_wready(0) => S_AXI3_1_WREADY(0),
      M01_AXI_wstrb(3 downto 0) => S_AXI3_1_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => S_AXI3_1_WVALID(0),
      M02_AXI_araddr(31 downto 0) => S_AXI_2_ARADDR(31 downto 0),
      M02_AXI_arready(0) => S_AXI_2_ARREADY(0),
      M02_AXI_arvalid(0) => S_AXI_2_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => S_AXI_2_AWADDR(31 downto 0),
      M02_AXI_awready(0) => S_AXI_2_AWREADY(0),
      M02_AXI_awvalid(0) => S_AXI_2_AWVALID(0),
      M02_AXI_bready(0) => S_AXI_2_BREADY(0),
      M02_AXI_bresp(1 downto 0) => S_AXI_2_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => S_AXI_2_BVALID(0),
      M02_AXI_rdata(31 downto 0) => S_AXI_2_RDATA(31 downto 0),
      M02_AXI_rready(0) => S_AXI_2_RREADY(0),
      M02_AXI_rresp(1 downto 0) => S_AXI_2_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => S_AXI_2_RVALID(0),
      M02_AXI_wdata(31 downto 0) => S_AXI_2_WDATA(31 downto 0),
      M02_AXI_wready(0) => S_AXI_2_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => S_AXI_2_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => S_AXI_2_WVALID(0),
      M03_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      M03_AXI_arready(0) => S00_AXI_1_ARREADY(0),
      M03_AXI_arvalid(0) => S00_AXI_1_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      M03_AXI_awready(0) => S00_AXI_1_AWREADY(0),
      M03_AXI_awvalid(0) => S00_AXI_1_AWVALID(0),
      M03_AXI_bready(0) => S00_AXI_1_BREADY(0),
      M03_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => S00_AXI_1_BVALID(0),
      M03_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      M03_AXI_rready(0) => S00_AXI_1_RREADY(0),
      M03_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => S00_AXI_1_RVALID(0),
      M03_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      M03_AXI_wready(0) => S00_AXI_1_WREADY(0),
      M03_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => S00_AXI_1_WVALID(0),
      M04_AXI_araddr(31 downto 0) => AXI_LITE_1_ARADDR(31 downto 0),
      M04_AXI_arready(0) => AXI_LITE_1_ARREADY(0),
      M04_AXI_arvalid(0) => AXI_LITE_1_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => AXI_LITE_1_AWADDR(31 downto 0),
      M04_AXI_awready(0) => AXI_LITE_1_AWREADY(0),
      M04_AXI_awvalid(0) => AXI_LITE_1_AWVALID(0),
      M04_AXI_bready(0) => AXI_LITE_1_BREADY(0),
      M04_AXI_bresp(1 downto 0) => AXI_LITE_1_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => AXI_LITE_1_BVALID(0),
      M04_AXI_rdata(31 downto 0) => AXI_LITE_1_RDATA(31 downto 0),
      M04_AXI_rready(0) => AXI_LITE_1_RREADY(0),
      M04_AXI_rresp(1 downto 0) => AXI_LITE_1_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => AXI_LITE_1_RVALID(0),
      M04_AXI_wdata(31 downto 0) => AXI_LITE_1_WDATA(31 downto 0),
      M04_AXI_wready(0) => AXI_LITE_1_WREADY(0),
      M04_AXI_wstrb(3 downto 0) => AXI_LITE_1_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => AXI_LITE_1_WVALID(0),
      M05_AXI_araddr(31 downto 0) => S_AXI2_1_ARADDR(31 downto 0),
      M05_AXI_arready(0) => S_AXI2_1_ARREADY(0),
      M05_AXI_arvalid(0) => S_AXI2_1_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => S_AXI2_1_AWADDR(31 downto 0),
      M05_AXI_awready(0) => S_AXI2_1_AWREADY(0),
      M05_AXI_awvalid(0) => S_AXI2_1_AWVALID(0),
      M05_AXI_bready(0) => S_AXI2_1_BREADY(0),
      M05_AXI_bresp(1 downto 0) => S_AXI2_1_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => S_AXI2_1_BVALID(0),
      M05_AXI_rdata(31 downto 0) => S_AXI2_1_RDATA(31 downto 0),
      M05_AXI_rready(0) => S_AXI2_1_RREADY(0),
      M05_AXI_rresp(1 downto 0) => S_AXI2_1_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => S_AXI2_1_RVALID(0),
      M05_AXI_wdata(31 downto 0) => S_AXI2_1_WDATA(31 downto 0),
      M05_AXI_wready(0) => S_AXI2_1_WREADY(0),
      M05_AXI_wstrb(3 downto 0) => S_AXI2_1_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => S_AXI2_1_WVALID(0),
      M06_AXI_araddr(31 downto 0) => s_axi_1_ARADDR(31 downto 0),
      M06_AXI_arready(0) => s_axi_1_ARREADY(0),
      M06_AXI_arvalid(0) => s_axi_1_ARVALID(0),
      M06_AXI_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      M06_AXI_awready(0) => s_axi_1_AWREADY(0),
      M06_AXI_awvalid(0) => s_axi_1_AWVALID(0),
      M06_AXI_bready(0) => s_axi_1_BREADY(0),
      M06_AXI_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      M06_AXI_bvalid(0) => s_axi_1_BVALID(0),
      M06_AXI_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      M06_AXI_rready(0) => s_axi_1_RREADY(0),
      M06_AXI_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      M06_AXI_rvalid(0) => s_axi_1_RVALID(0),
      M06_AXI_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      M06_AXI_wready(0) => s_axi_1_WREADY(0),
      M06_AXI_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      M06_AXI_wvalid(0) => s_axi_1_WVALID(0),
      M07_AXI_araddr(31 downto 0) => S_AXI_INTR_1_ARADDR(31 downto 0),
      M07_AXI_arprot(2 downto 0) => S_AXI_INTR_1_ARPROT(2 downto 0),
      M07_AXI_arready(0) => S_AXI_INTR_1_ARREADY(0),
      M07_AXI_arvalid(0) => S_AXI_INTR_1_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => S_AXI_INTR_1_AWADDR(31 downto 0),
      M07_AXI_awprot(2 downto 0) => S_AXI_INTR_1_AWPROT(2 downto 0),
      M07_AXI_awready(0) => S_AXI_INTR_1_AWREADY(0),
      M07_AXI_awvalid(0) => S_AXI_INTR_1_AWVALID(0),
      M07_AXI_bready(0) => S_AXI_INTR_1_BREADY(0),
      M07_AXI_bresp(1 downto 0) => S_AXI_INTR_1_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => S_AXI_INTR_1_BVALID(0),
      M07_AXI_rdata(31 downto 0) => S_AXI_INTR_1_RDATA(31 downto 0),
      M07_AXI_rready(0) => S_AXI_INTR_1_RREADY(0),
      M07_AXI_rresp(1 downto 0) => S_AXI_INTR_1_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => S_AXI_INTR_1_RVALID(0),
      M07_AXI_wdata(31 downto 0) => S_AXI_INTR_1_WDATA(31 downto 0),
      M07_AXI_wready(0) => S_AXI_INTR_1_WREADY(0),
      M07_AXI_wstrb(3 downto 0) => S_AXI_INTR_1_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => S_AXI_INTR_1_WVALID(0),
      M08_AXI_araddr(31 downto 0) => S_AXI4_1_ARADDR(31 downto 0),
      M08_AXI_arready(0) => S_AXI4_1_ARREADY(0),
      M08_AXI_arvalid(0) => S_AXI4_1_ARVALID(0),
      M08_AXI_awaddr(31 downto 0) => S_AXI4_1_AWADDR(31 downto 0),
      M08_AXI_awready(0) => S_AXI4_1_AWREADY(0),
      M08_AXI_awvalid(0) => S_AXI4_1_AWVALID(0),
      M08_AXI_bready(0) => S_AXI4_1_BREADY(0),
      M08_AXI_bresp(1 downto 0) => S_AXI4_1_BRESP(1 downto 0),
      M08_AXI_bvalid(0) => S_AXI4_1_BVALID(0),
      M08_AXI_rdata(31 downto 0) => S_AXI4_1_RDATA(31 downto 0),
      M08_AXI_rready(0) => S_AXI4_1_RREADY(0),
      M08_AXI_rresp(1 downto 0) => S_AXI4_1_RRESP(1 downto 0),
      M08_AXI_rvalid(0) => S_AXI4_1_RVALID(0),
      M08_AXI_wdata(31 downto 0) => S_AXI4_1_WDATA(31 downto 0),
      M08_AXI_wready(0) => S_AXI4_1_WREADY(0),
      M08_AXI_wstrb(3 downto 0) => S_AXI4_1_WSTRB(3 downto 0),
      M08_AXI_wvalid(0) => S_AXI4_1_WVALID(0),
      Reset => Reset_2,
      S00_ARESETN => rst_clk_wiz_100M_peripheral_aresetn(0),
      SYS_Rst => SYS_Rst_1(0)
    );
decryption_layer: entity work.decryption_layer_imp_1YBVKRC
     port map (
      clk => microblaze_0_Clk,
      data_in(7 downto 0) => reception_layer_received_data_0(7 downto 0),
      data_out_0(7 downto 0) => decryption_layer_data_out_0(7 downto 0),
      reset => rst_clk_wiz_100M_peripheral_aresetn(0),
      valid_in => reception_layer_received_valid_0,
      valid_out_0 => decryption_layer_valid_out_0
    );
encryption_block: entity work.encryption_block_imp_U7QD42
     port map (
      clk => microblaze_0_Clk,
      encrypted_data_out(7 downto 0) => encrypted_data_out(7 downto 0),
      encrypted_valid_out => encryption_block_encrypted_valid_out,
      reset => rst_clk_wiz_100M_peripheral_aresetn(0),
      scrambled_data_in(7 downto 0) => scrambler_block_data_out_0(7 downto 0),
      scrambled_valid_in => scrambler_block_valid_out_0
    );
input_layer: entity work.input_layer_imp_GBM9VX
     port map (
      AXI_LITE_araddr(31 downto 0) => AXI_LITE_1_ARADDR(31 downto 0),
      AXI_LITE_arready(0) => AXI_LITE_1_ARREADY(0),
      AXI_LITE_arvalid(0) => AXI_LITE_1_ARVALID(0),
      AXI_LITE_awaddr(31 downto 0) => AXI_LITE_1_AWADDR(31 downto 0),
      AXI_LITE_awready(0) => AXI_LITE_1_AWREADY(0),
      AXI_LITE_awvalid(0) => AXI_LITE_1_AWVALID(0),
      AXI_LITE_bready(0) => AXI_LITE_1_BREADY(0),
      AXI_LITE_bresp(1 downto 0) => AXI_LITE_1_BRESP(1 downto 0),
      AXI_LITE_bvalid(0) => AXI_LITE_1_BVALID(0),
      AXI_LITE_rdata(31 downto 0) => AXI_LITE_1_RDATA(31 downto 0),
      AXI_LITE_rready(0) => AXI_LITE_1_RREADY(0),
      AXI_LITE_rresp(1 downto 0) => AXI_LITE_1_RRESP(1 downto 0),
      AXI_LITE_rvalid(0) => AXI_LITE_1_RVALID(0),
      AXI_LITE_wdata(31 downto 0) => AXI_LITE_1_WDATA(31 downto 0),
      AXI_LITE_wready(0) => AXI_LITE_1_WREADY(0),
      AXI_LITE_wstrb(3 downto 0) => AXI_LITE_1_WSTRB(3 downto 0),
      AXI_LITE_wvalid(0) => AXI_LITE_1_WVALID(0),
      S_AXI1_araddr(31 downto 0) => S_AXI1_1_ARADDR(31 downto 0),
      S_AXI1_arready(0) => S_AXI1_1_ARREADY(0),
      S_AXI1_arvalid(0) => S_AXI1_1_ARVALID(0),
      S_AXI1_awaddr(31 downto 0) => S_AXI1_1_AWADDR(31 downto 0),
      S_AXI1_awready(0) => S_AXI1_1_AWREADY(0),
      S_AXI1_awvalid(0) => S_AXI1_1_AWVALID(0),
      S_AXI1_bready(0) => S_AXI1_1_BREADY(0),
      S_AXI1_bresp(1 downto 0) => S_AXI1_1_BRESP(1 downto 0),
      S_AXI1_bvalid(0) => S_AXI1_1_BVALID(0),
      S_AXI1_rdata(31 downto 0) => S_AXI1_1_RDATA(31 downto 0),
      S_AXI1_rready(0) => S_AXI1_1_RREADY(0),
      S_AXI1_rresp(1 downto 0) => S_AXI1_1_RRESP(1 downto 0),
      S_AXI1_rvalid(0) => S_AXI1_1_RVALID(0),
      S_AXI1_wdata(31 downto 0) => S_AXI1_1_WDATA(31 downto 0),
      S_AXI1_wready(0) => S_AXI1_1_WREADY(0),
      S_AXI1_wstrb(3 downto 0) => S_AXI1_1_WSTRB(3 downto 0),
      S_AXI1_wvalid(0) => S_AXI1_1_WVALID(0),
      S_AXI2_araddr(31 downto 0) => S_AXI2_1_ARADDR(31 downto 0),
      S_AXI2_arready(0) => S_AXI2_1_ARREADY(0),
      S_AXI2_arvalid(0) => S_AXI2_1_ARVALID(0),
      S_AXI2_awaddr(31 downto 0) => S_AXI2_1_AWADDR(31 downto 0),
      S_AXI2_awready(0) => S_AXI2_1_AWREADY(0),
      S_AXI2_awvalid(0) => S_AXI2_1_AWVALID(0),
      S_AXI2_bready(0) => S_AXI2_1_BREADY(0),
      S_AXI2_bresp(1 downto 0) => S_AXI2_1_BRESP(1 downto 0),
      S_AXI2_bvalid(0) => S_AXI2_1_BVALID(0),
      S_AXI2_rdata(31 downto 0) => S_AXI2_1_RDATA(31 downto 0),
      S_AXI2_rready(0) => S_AXI2_1_RREADY(0),
      S_AXI2_rresp(1 downto 0) => S_AXI2_1_RRESP(1 downto 0),
      S_AXI2_rvalid(0) => S_AXI2_1_RVALID(0),
      S_AXI2_wdata(31 downto 0) => S_AXI2_1_WDATA(31 downto 0),
      S_AXI2_wready(0) => S_AXI2_1_WREADY(0),
      S_AXI2_wstrb(3 downto 0) => S_AXI2_1_WSTRB(3 downto 0),
      S_AXI2_wvalid(0) => S_AXI2_1_WVALID(0),
      S_AXI3_araddr(31 downto 0) => S_AXI3_1_ARADDR(31 downto 0),
      S_AXI3_arready(0) => S_AXI3_1_ARREADY(0),
      S_AXI3_arvalid(0) => S_AXI3_1_ARVALID(0),
      S_AXI3_awaddr(31 downto 0) => S_AXI3_1_AWADDR(31 downto 0),
      S_AXI3_awready(0) => S_AXI3_1_AWREADY(0),
      S_AXI3_awvalid(0) => S_AXI3_1_AWVALID(0),
      S_AXI3_bready(0) => S_AXI3_1_BREADY(0),
      S_AXI3_bresp(1 downto 0) => S_AXI3_1_BRESP(1 downto 0),
      S_AXI3_bvalid(0) => S_AXI3_1_BVALID(0),
      S_AXI3_rdata(31 downto 0) => S_AXI3_1_RDATA(31 downto 0),
      S_AXI3_rready(0) => S_AXI3_1_RREADY(0),
      S_AXI3_rresp(1 downto 0) => S_AXI3_1_RRESP(1 downto 0),
      S_AXI3_rvalid(0) => S_AXI3_1_RVALID(0),
      S_AXI3_wdata(31 downto 0) => S_AXI3_1_WDATA(31 downto 0),
      S_AXI3_wready(0) => S_AXI3_1_WREADY(0),
      S_AXI3_wstrb(3 downto 0) => S_AXI3_1_WSTRB(3 downto 0),
      S_AXI3_wvalid(0) => S_AXI3_1_WVALID(0),
      S_AXI4_araddr(31 downto 0) => S_AXI4_1_ARADDR(31 downto 0),
      S_AXI4_arready(0) => S_AXI4_1_ARREADY(0),
      S_AXI4_arvalid(0) => S_AXI4_1_ARVALID(0),
      S_AXI4_awaddr(31 downto 0) => S_AXI4_1_AWADDR(31 downto 0),
      S_AXI4_awready(0) => S_AXI4_1_AWREADY(0),
      S_AXI4_awvalid(0) => S_AXI4_1_AWVALID(0),
      S_AXI4_bready(0) => S_AXI4_1_BREADY(0),
      S_AXI4_bresp(1 downto 0) => S_AXI4_1_BRESP(1 downto 0),
      S_AXI4_bvalid(0) => S_AXI4_1_BVALID(0),
      S_AXI4_rdata(31 downto 0) => S_AXI4_1_RDATA(31 downto 0),
      S_AXI4_rready(0) => S_AXI4_1_RREADY(0),
      S_AXI4_rresp(1 downto 0) => S_AXI4_1_RRESP(1 downto 0),
      S_AXI4_rvalid(0) => S_AXI4_1_RVALID(0),
      S_AXI4_wdata(31 downto 0) => S_AXI4_1_WDATA(31 downto 0),
      S_AXI4_wready(0) => S_AXI4_1_WREADY(0),
      S_AXI4_wstrb(3 downto 0) => S_AXI4_1_WSTRB(3 downto 0),
      S_AXI4_wvalid(0) => S_AXI4_1_WVALID(0),
      S_AXI_araddr(31 downto 0) => S_AXI_2_ARADDR(31 downto 0),
      S_AXI_arready(0) => S_AXI_2_ARREADY(0),
      S_AXI_arvalid(0) => S_AXI_2_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => S_AXI_2_AWADDR(31 downto 0),
      S_AXI_awready(0) => S_AXI_2_AWREADY(0),
      S_AXI_awvalid(0) => S_AXI_2_AWVALID(0),
      S_AXI_bready(0) => S_AXI_2_BREADY(0),
      S_AXI_bresp(1 downto 0) => S_AXI_2_BRESP(1 downto 0),
      S_AXI_bvalid(0) => S_AXI_2_BVALID(0),
      S_AXI_rdata(31 downto 0) => S_AXI_2_RDATA(31 downto 0),
      S_AXI_rready(0) => S_AXI_2_RREADY(0),
      S_AXI_rresp(1 downto 0) => S_AXI_2_RRESP(1 downto 0),
      S_AXI_rvalid(0) => S_AXI_2_RVALID(0),
      S_AXI_wdata(31 downto 0) => S_AXI_2_WDATA(31 downto 0),
      S_AXI_wready(0) => S_AXI_2_WREADY(0),
      S_AXI_wstrb(3 downto 0) => S_AXI_2_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => S_AXI_2_WVALID(0),
      acl_spi_io0_i => axi_quad_spi_0_SPI_0_IO0_I,
      acl_spi_io0_o => axi_quad_spi_0_SPI_0_IO0_O,
      acl_spi_io0_t => axi_quad_spi_0_SPI_0_IO0_T,
      acl_spi_io1_i => axi_quad_spi_0_SPI_0_IO1_I,
      acl_spi_io1_o => axi_quad_spi_0_SPI_0_IO1_O,
      acl_spi_io1_t => axi_quad_spi_0_SPI_0_IO1_T,
      acl_spi_sck_i => axi_quad_spi_0_SPI_0_SCK_I,
      acl_spi_sck_o => axi_quad_spi_0_SPI_0_SCK_O,
      acl_spi_sck_t => axi_quad_spi_0_SPI_0_SCK_T,
      acl_spi_ss_i => axi_quad_spi_0_SPI_0_SS_I,
      acl_spi_ss_o => axi_quad_spi_0_SPI_0_SS_O,
      acl_spi_ss_t => axi_quad_spi_0_SPI_0_SS_T,
      dip_switches_16bits_tri_i(15 downto 0) => axi_gpio_0_GPIO_TRI_I(15 downto 0),
      ext_spi_clk => microblaze_0_Clk,
      gpio_io_o(7 downto 0) => data_in_1(7 downto 0),
      iic2intc_irpt => axi_iic_0_iic2intc_irpt,
      interrupt => axi_uartlite_0_interrupt,
      ip2intc_irpt => axi_ethernetlite_0_ip2intc_irpt,
      ip2intc_irpt1 => axi_quad_spi_0_ip2intc_irpt,
      ip2intc_irpt2 => axi_gpio_0_ip2intc_irpt,
      mdio_rtl_mdc => axi_ethernetlite_0_MDIO_MDC,
      mdio_rtl_mdio_i => axi_ethernetlite_0_MDIO_MDIO_I,
      mdio_rtl_mdio_o => axi_ethernetlite_0_MDIO_MDIO_O,
      mdio_rtl_mdio_t => axi_ethernetlite_0_MDIO_MDIO_T,
      mii_rtl_col => axi_ethernetlite_0_MII_COL,
      mii_rtl_crs => axi_ethernetlite_0_MII_CRS,
      mii_rtl_rst_n => axi_ethernetlite_0_MII_RST_N,
      mii_rtl_rx_clk => axi_ethernetlite_0_MII_RX_CLK,
      mii_rtl_rx_dv => axi_ethernetlite_0_MII_RX_DV,
      mii_rtl_rx_er => axi_ethernetlite_0_MII_RX_ER,
      mii_rtl_rxd(3 downto 0) => axi_ethernetlite_0_MII_RXD(3 downto 0),
      mii_rtl_tx_clk => axi_ethernetlite_0_MII_TX_CLK,
      mii_rtl_tx_en => axi_ethernetlite_0_MII_TX_EN,
      mii_rtl_txd(3 downto 0) => axi_ethernetlite_0_MII_TXD(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn(0),
      temp_sensor_scl_i => axi_iic_0_IIC_SCL_I,
      temp_sensor_scl_o => axi_iic_0_IIC_SCL_O,
      temp_sensor_scl_t => axi_iic_0_IIC_SCL_T,
      temp_sensor_sda_i => axi_iic_0_IIC_SDA_I,
      temp_sensor_sda_o => axi_iic_0_IIC_SDA_O,
      temp_sensor_sda_t => axi_iic_0_IIC_SDA_T,
      usb_uart_rxd => axi_uartlite_0_UART_RxD,
      usb_uart_txd => axi_uartlite_0_UART_TxD
    );
interrupt_layer: entity work.interrupt_layer_imp_NF5PM6
     port map (
      In0(0) => axi_gpio_0_ip2intc_irpt,
      In1(0) => axi_uartlite_0_interrupt,
      In2(0) => axi_iic_0_iic2intc_irpt,
      In3(0) => axi_quad_spi_0_ip2intc_irpt,
      In4(0) => axi_ethernetlite_0_ip2intc_irpt,
      In5(0) => In5_1,
      irq => interrupt_layer_irq,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(31 downto 0) => s_axi_1_ARADDR(31 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn(0),
      s_axi_arready(0) => s_axi_1_ARREADY(0),
      s_axi_arvalid(0) => s_axi_1_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      s_axi_awready(0) => s_axi_1_AWREADY(0),
      s_axi_awvalid(0) => s_axi_1_AWVALID(0),
      s_axi_bready(0) => s_axi_1_BREADY(0),
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid(0) => s_axi_1_BVALID(0),
      s_axi_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      s_axi_rready(0) => s_axi_1_RREADY(0),
      s_axi_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid(0) => s_axi_1_RVALID(0),
      s_axi_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      s_axi_wready(0) => s_axi_1_WREADY(0),
      s_axi_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s_axi_1_WVALID(0)
    );
reception_layer: entity work.reception_layer_imp_CD6Y5D
     port map (
      clk => microblaze_0_Clk,
      received_data_0(7 downto 0) => reception_layer_received_data_0(7 downto 0),
      received_valid_0 => reception_layer_received_valid_0,
      rst => rst_clk_wiz_100M_peripheral_aresetn(0),
      rx_data_in(7 downto 0) => transmission_layer_tx_data_out(7 downto 0),
      rx_valid_in => transmission_layer_tx_valid_out
    );
scrambler_block: entity work.scrambler_block_imp_1XD6MLR
     port map (
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => S00_AXI_1_ARREADY(0),
      S00_AXI_arvalid(0) => S00_AXI_1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => S00_AXI_1_AWREADY(0),
      S00_AXI_awvalid(0) => S00_AXI_1_AWVALID(0),
      S00_AXI_bready(0) => S00_AXI_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rready(0) => S00_AXI_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wready(0) => S00_AXI_1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_1_WVALID(0),
      S_AXI_INTR_araddr(31 downto 0) => S_AXI_INTR_1_ARADDR(31 downto 0),
      S_AXI_INTR_arprot(2 downto 0) => S_AXI_INTR_1_ARPROT(2 downto 0),
      S_AXI_INTR_arready(0) => S_AXI_INTR_1_ARREADY(0),
      S_AXI_INTR_arvalid(0) => S_AXI_INTR_1_ARVALID(0),
      S_AXI_INTR_awaddr(31 downto 0) => S_AXI_INTR_1_AWADDR(31 downto 0),
      S_AXI_INTR_awprot(2 downto 0) => S_AXI_INTR_1_AWPROT(2 downto 0),
      S_AXI_INTR_awready(0) => S_AXI_INTR_1_AWREADY(0),
      S_AXI_INTR_awvalid(0) => S_AXI_INTR_1_AWVALID(0),
      S_AXI_INTR_bready(0) => S_AXI_INTR_1_BREADY(0),
      S_AXI_INTR_bresp(1 downto 0) => S_AXI_INTR_1_BRESP(1 downto 0),
      S_AXI_INTR_bvalid(0) => S_AXI_INTR_1_BVALID(0),
      S_AXI_INTR_rdata(31 downto 0) => S_AXI_INTR_1_RDATA(31 downto 0),
      S_AXI_INTR_rready(0) => S_AXI_INTR_1_RREADY(0),
      S_AXI_INTR_rresp(1 downto 0) => S_AXI_INTR_1_RRESP(1 downto 0),
      S_AXI_INTR_rvalid(0) => S_AXI_INTR_1_RVALID(0),
      S_AXI_INTR_wdata(31 downto 0) => S_AXI_INTR_1_WDATA(31 downto 0),
      S_AXI_INTR_wready(0) => S_AXI_INTR_1_WREADY(0),
      S_AXI_INTR_wstrb(3 downto 0) => S_AXI_INTR_1_WSTRB(3 downto 0),
      S_AXI_INTR_wvalid(0) => S_AXI_INTR_1_WVALID(0),
      clk => microblaze_0_Clk,
      data_in(7 downto 0) => data_in_1(7 downto 0),
      data_out(7 downto 0) => scrambler_block_data_out_0(7 downto 0),
      enable => enable_0_1,
      irq => In5_1,
      rst => rst_clk_wiz_100M_peripheral_aresetn(0),
      valid_in => valid_in,
      valid_out => scrambler_block_valid_out_0
    );
transmission_layer: entity work.transmission_layer_imp_16F2NUM
     port map (
      clk => microblaze_0_Clk,
      din(7 downto 0) => encrypted_data_out(7 downto 0),
      rst => rst_clk_wiz_100M_peripheral_aresetn(0),
      tx_data_out(7 downto 0) => transmission_layer_tx_data_out(7 downto 0),
      tx_valid_out => transmission_layer_tx_valid_out,
      wr_en => encryption_block_encrypted_valid_out
    );
end STRUCTURE;
