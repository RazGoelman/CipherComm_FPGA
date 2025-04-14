--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Sun Apr 13 23:08:29 2025
--Host        : razgo-Latitude-7400 running 64-bit Ubuntu 24.04.2 LTS
--Command     : generate_target InputInterfaceLayer.bd
--Design      : InputInterfaceLayer
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity InputInterfaceLayer is
  port (
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of InputInterfaceLayer : entity is "InputInterfaceLayer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=InputInterfaceLayer,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=22,da_board_cnt=13,da_clkrst_cnt=21,da_mb_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of InputInterfaceLayer : entity is "InputInterfaceLayer.hwdef";
end InputInterfaceLayer;

architecture STRUCTURE of InputInterfaceLayer is
  component InputInterfaceLayer_encryption_layer_0_5 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    scrambled_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scrambled_valid_in : in STD_LOGIC;
    encrypted_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    encrypted_valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_encryption_layer_0_5;
  component InputInterfaceLayer_data_transmission_0_1 is
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
  end component InputInterfaceLayer_data_transmission_0_1;
  component InputInterfaceLayer_data_reception_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_valid_in : in STD_LOGIC;
    received_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    received_valid : out STD_LOGIC
  );
  end component InputInterfaceLayer_data_reception_0_1;
  component InputInterfaceLayer_decryption_logic_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_decryption_logic_0_1;
  component InputInterfaceLayer_unscrambler_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lfsr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_unscrambler_0_0;
  component InputInterfaceLayer_decoding_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    decoded_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_decoding_0_0;
  component InputInterfaceLayer_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component InputInterfaceLayer_clk_wiz_0_0;
  component InputInterfaceLayer_reset_inv_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component InputInterfaceLayer_reset_inv_0_1;
  component InputInterfaceLayer_encryption_to_fifo_b_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    encrypted_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    crc_bitstream : in STD_LOGIC_VECTOR ( 7 downto 0 );
    parity_bit : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    ready_for_data : in STD_LOGIC;
    fifo_din : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fifo_wr_en : out STD_LOGIC
  );
  end component InputInterfaceLayer_encryption_to_fifo_b_0_0;
  component InputInterfaceLayer_output_display_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    leds_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component InputInterfaceLayer_output_display_0_0;
  component InputInterfaceLayer_input_layer_top_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    uart_rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_rx_valid : in STD_LOGIC;
    spi_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_valid_in : in STD_LOGIC;
    i2c_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i2c_valid_in : in STD_LOGIC;
    gpio_switches : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_valid : in STD_LOGIC;
    eth_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    eth_valid_in : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_input_layer_top_0_0;
  component InputInterfaceLayer_scrambler_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    parity_in : in STD_LOGIC;
    crc_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC;
    parity_out : out STD_LOGIC;
    crc_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lfsr_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component InputInterfaceLayer_scrambler_0_1;
  component InputInterfaceLayer_encoder_layer_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_in : in STD_LOGIC;
    data_encoded : out STD_LOGIC_VECTOR ( 7 downto 0 );
    parity_bit : out STD_LOGIC;
    crc_bit : out STD_LOGIC_VECTOR ( 7 downto 0 );
    valid_out : out STD_LOGIC
  );
  end component InputInterfaceLayer_encoder_layer_0_1;
  component InputInterfaceLayer_fifo_generator_0_2 is
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
  end component InputInterfaceLayer_fifo_generator_0_2;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal data_reception_0_received_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_reception_0_received_valid : STD_LOGIC;
  signal data_transmission_0_fifo_rd_en : STD_LOGIC;
  signal data_transmission_0_ready_for_data : STD_LOGIC;
  signal data_transmission_0_tx_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_transmission_0_tx_valid_out : STD_LOGIC;
  signal decoding_0_decoded_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decoding_0_valid_out : STD_LOGIC;
  signal decryption_logic_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal decryption_logic_0_valid_out : STD_LOGIC;
  signal encoder_layer_0_crc_bit : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encoder_layer_0_data_encoded : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encoder_layer_0_parity_bit : STD_LOGIC;
  signal encoder_layer_0_valid_out : STD_LOGIC;
  signal encryption_layer_0_encrypted_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encryption_layer_0_encrypted_valid_out : STD_LOGIC;
  signal encryption_to_fifo_b_0_fifo_din : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal encryption_to_fifo_b_0_fifo_wr_en : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal input_layer_top_0_sensor_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal input_layer_top_0_valid_out : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal reset_inv_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal scrambler_0_crc_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scrambler_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scrambler_0_lfsr_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scrambler_0_parity_out : STD_LOGIC;
  signal scrambler_0_valid_out : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal unscrambler_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal unscrambler_0_valid_out : STD_LOGIC;
  signal NLW_output_display_0_leds_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN InputInterfaceLayer_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  reset_1 <= reset;
  sys_clock_1 <= sys_clock;
clk_wiz_0: component InputInterfaceLayer_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      reset => reset_inv_0_Res(0)
    );
data_reception_0: component InputInterfaceLayer_data_reception_0_1
     port map (
      clk => clk_wiz_0_clk_out1,
      received_data(7 downto 0) => data_reception_0_received_data(7 downto 0),
      received_valid => data_reception_0_received_valid,
      rst => clk_wiz_0_locked,
      rx_data_in(7 downto 0) => data_transmission_0_tx_data_out(7 downto 0),
      rx_valid_in => data_transmission_0_tx_valid_out
    );
data_transmission_0: component InputInterfaceLayer_data_transmission_0_1
     port map (
      clk => clk_wiz_0_clk_out1,
      fifo_dout(17 downto 0) => fifo_generator_0_dout(17 downto 0),
      fifo_empty => fifo_generator_0_empty,
      fifo_full => fifo_generator_0_full,
      fifo_rd_en => data_transmission_0_fifo_rd_en,
      ready_for_data => data_transmission_0_ready_for_data,
      rst => clk_wiz_0_locked,
      tx_data_out(7 downto 0) => data_transmission_0_tx_data_out(7 downto 0),
      tx_valid_out => data_transmission_0_tx_valid_out
    );
decoding_0: component InputInterfaceLayer_decoding_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      data_in(7 downto 0) => unscrambler_0_data_out(7 downto 0),
      decoded_out(7 downto 0) => decoding_0_decoded_out(7 downto 0),
      rst => clk_wiz_0_locked,
      valid_in => unscrambler_0_valid_out,
      valid_out => decoding_0_valid_out
    );
decryption_logic_0: component InputInterfaceLayer_decryption_logic_0_1
     port map (
      clk => clk_wiz_0_clk_out1,
      data_in(7 downto 0) => data_reception_0_received_data(7 downto 0),
      data_out(7 downto 0) => decryption_logic_0_data_out(7 downto 0),
      reset => clk_wiz_0_locked,
      valid_in => data_reception_0_received_valid,
      valid_out => decryption_logic_0_valid_out
    );
encoder_layer_0: component InputInterfaceLayer_encoder_layer_0_1
     port map (
      clk => clk_wiz_0_clk_out1,
      crc_bit(7 downto 0) => encoder_layer_0_crc_bit(7 downto 0),
      data_encoded(7 downto 0) => encoder_layer_0_data_encoded(7 downto 0),
      data_in(7 downto 0) => input_layer_top_0_sensor_data_out(7 downto 0),
      parity_bit => encoder_layer_0_parity_bit,
      rst => clk_wiz_0_locked,
      valid_in => input_layer_top_0_valid_out,
      valid_out => encoder_layer_0_valid_out
    );
encryption_layer_0: component InputInterfaceLayer_encryption_layer_0_5
     port map (
      clk => clk_wiz_0_clk_out1,
      encrypted_data_out(7 downto 0) => encryption_layer_0_encrypted_data_out(7 downto 0),
      encrypted_valid_out => encryption_layer_0_encrypted_valid_out,
      reset => clk_wiz_0_locked,
      scrambled_data_in(7 downto 0) => scrambler_0_data_out(7 downto 0),
      scrambled_valid_in => scrambler_0_valid_out
    );
encryption_to_fifo_b_0: component InputInterfaceLayer_encryption_to_fifo_b_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      crc_bitstream(7 downto 0) => scrambler_0_crc_out(7 downto 0),
      encrypted_data(7 downto 0) => encryption_layer_0_encrypted_data_out(7 downto 0),
      fifo_din(17 downto 0) => encryption_to_fifo_b_0_fifo_din(17 downto 0),
      fifo_wr_en => encryption_to_fifo_b_0_fifo_wr_en,
      parity_bit => scrambler_0_parity_out,
      ready_for_data => data_transmission_0_ready_for_data,
      rst => clk_wiz_0_locked,
      valid_in => encryption_layer_0_encrypted_valid_out
    );
fifo_generator_0: component InputInterfaceLayer_fifo_generator_0_2
     port map (
      clk => clk_wiz_0_clk_out1,
      din(17 downto 0) => encryption_to_fifo_b_0_fifo_din(17 downto 0),
      dout(17 downto 0) => fifo_generator_0_dout(17 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_en => data_transmission_0_fifo_rd_en,
      srst => clk_wiz_0_locked,
      wr_en => encryption_to_fifo_b_0_fifo_wr_en
    );
input_layer_top_0: component InputInterfaceLayer_input_layer_top_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      data_out(7 downto 0) => input_layer_top_0_sensor_data_out(7 downto 0),
      eth_data_in(7 downto 0) => B"00000000",
      eth_valid_in => '0',
      gpio_switches(7 downto 0) => B"00000000",
      gpio_valid => '0',
      i2c_data_in(7 downto 0) => B"00000000",
      i2c_valid_in => '0',
      rst => clk_wiz_0_locked,
      spi_data_in(7 downto 0) => B"00000000",
      spi_valid_in => '0',
      uart_rx_data(7 downto 0) => B"00000000",
      uart_rx_valid => '0',
      valid_out => input_layer_top_0_valid_out
    );
output_display_0: component InputInterfaceLayer_output_display_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      data_in(7 downto 0) => decoding_0_decoded_out(7 downto 0),
      leds_out(7 downto 0) => NLW_output_display_0_leds_out_UNCONNECTED(7 downto 0),
      rst => clk_wiz_0_locked,
      valid_in => decoding_0_valid_out
    );
reset_inv_0: component InputInterfaceLayer_reset_inv_0_1
     port map (
      Op1(0) => reset_1,
      Res(0) => reset_inv_0_Res(0)
    );
scrambler_0: component InputInterfaceLayer_scrambler_0_1
     port map (
      clk => clk_wiz_0_clk_out1,
      crc_in(7 downto 0) => encoder_layer_0_crc_bit(7 downto 0),
      crc_out(7 downto 0) => scrambler_0_crc_out(7 downto 0),
      data_in(7 downto 0) => encoder_layer_0_data_encoded(7 downto 0),
      data_out(7 downto 0) => scrambler_0_data_out(7 downto 0),
      enable => '0',
      lfsr_out(7 downto 0) => scrambler_0_lfsr_out(7 downto 0),
      parity_in => encoder_layer_0_parity_bit,
      parity_out => scrambler_0_parity_out,
      rst => clk_wiz_0_locked,
      valid_in => encoder_layer_0_valid_out,
      valid_out => scrambler_0_valid_out
    );
unscrambler_0: component InputInterfaceLayer_unscrambler_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      data_in(7 downto 0) => decryption_logic_0_data_out(7 downto 0),
      data_out(7 downto 0) => unscrambler_0_data_out(7 downto 0),
      enable => clk_wiz_0_locked,
      lfsr_in(7 downto 0) => scrambler_0_lfsr_out(7 downto 0),
      rst => clk_wiz_0_locked,
      valid_in => decryption_logic_0_valid_out,
      valid_out => unscrambler_0_valid_out
    );
end STRUCTURE;
