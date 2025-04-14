
################################################################
# This is a generated script based on design: InputInterfaceLayer
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source InputInterfaceLayer_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# data_reception, data_transmission, decoding, decryption_logic, encoder_layer, encryption_layer, encryption_to_fifo_bridge, input_layer_top, output_display, scrambler, unscrambler

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys-a7-100t:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name InputInterfaceLayer

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.0} \
 ] $sys_clock

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: data_reception_0, and set properties
  set block_name data_reception
  set block_cell_name data_reception_0
  if { [catch {set data_reception_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_reception_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_transmission_0, and set properties
  set block_name data_transmission
  set block_cell_name data_transmission_0
  if { [catch {set data_transmission_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_transmission_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoding_0, and set properties
  set block_name decoding
  set block_cell_name decoding_0
  if { [catch {set decoding_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoding_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decryption_logic_0, and set properties
  set block_name decryption_logic
  set block_cell_name decryption_logic_0
  if { [catch {set decryption_logic_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decryption_logic_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: encoder_layer_0, and set properties
  set block_name encoder_layer
  set block_cell_name encoder_layer_0
  if { [catch {set encoder_layer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $encoder_layer_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: encryption_layer_0, and set properties
  set block_name encryption_layer
  set block_cell_name encryption_layer_0
  if { [catch {set encryption_layer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $encryption_layer_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: encryption_to_fifo_b_0, and set properties
  set block_name encryption_to_fifo_bridge
  set block_cell_name encryption_to_fifo_b_0
  if { [catch {set encryption_to_fifo_b_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $encryption_to_fifo_b_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Full_Flag {false} \
   CONFIG.Data_Count_Width {10} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Full_Threshold_Assert_Value {1022} \
   CONFIG.Full_Threshold_Negate_Value {1021} \
   CONFIG.Performance_Options {Standard_FIFO} \
   CONFIG.Read_Data_Count_Width {10} \
   CONFIG.Use_Extra_Logic {false} \
   CONFIG.Write_Data_Count_Width {10} \
 ] $fifo_generator_0

  # Create instance: input_layer_top_0, and set properties
  set block_name input_layer_top
  set block_cell_name input_layer_top_0
  if { [catch {set input_layer_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $input_layer_top_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: output_display_0, and set properties
  set block_name output_display
  set block_cell_name output_display_0
  if { [catch {set output_display_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $output_display_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reset_inv_0, and set properties
  set reset_inv_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 reset_inv_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
 ] $reset_inv_0

  # Create instance: scrambler_0, and set properties
  set block_name scrambler
  set block_cell_name scrambler_0
  if { [catch {set scrambler_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $scrambler_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: unscrambler_0, and set properties
  set block_name unscrambler
  set block_cell_name unscrambler_0
  if { [catch {set unscrambler_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $unscrambler_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins data_reception_0/clk] [get_bd_pins data_transmission_0/clk] [get_bd_pins decoding_0/clk] [get_bd_pins decryption_logic_0/clk] [get_bd_pins encoder_layer_0/clk] [get_bd_pins encryption_layer_0/clk] [get_bd_pins encryption_to_fifo_b_0/clk] [get_bd_pins fifo_generator_0/clk] [get_bd_pins input_layer_top_0/clk] [get_bd_pins output_display_0/clk] [get_bd_pins scrambler_0/clk] [get_bd_pins unscrambler_0/clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins data_reception_0/rst] [get_bd_pins data_transmission_0/rst] [get_bd_pins decoding_0/rst] [get_bd_pins decryption_logic_0/reset] [get_bd_pins encoder_layer_0/rst] [get_bd_pins encryption_layer_0/reset] [get_bd_pins encryption_to_fifo_b_0/rst] [get_bd_pins fifo_generator_0/srst] [get_bd_pins input_layer_top_0/rst] [get_bd_pins output_display_0/rst] [get_bd_pins scrambler_0/rst] [get_bd_pins unscrambler_0/enable] [get_bd_pins unscrambler_0/rst]
  connect_bd_net -net data_reception_0_received_data [get_bd_pins data_reception_0/received_data] [get_bd_pins decryption_logic_0/data_in]
  connect_bd_net -net data_reception_0_received_valid [get_bd_pins data_reception_0/received_valid] [get_bd_pins decryption_logic_0/valid_in]
  connect_bd_net -net data_transmission_0_fifo_rd_en [get_bd_pins data_transmission_0/fifo_rd_en] [get_bd_pins fifo_generator_0/rd_en]
  connect_bd_net -net data_transmission_0_ready_for_data [get_bd_pins data_transmission_0/ready_for_data] [get_bd_pins encryption_to_fifo_b_0/ready_for_data]
  connect_bd_net -net data_transmission_0_tx_data_out [get_bd_pins data_reception_0/rx_data_in] [get_bd_pins data_transmission_0/tx_data_out]
  connect_bd_net -net data_transmission_0_tx_valid_out [get_bd_pins data_reception_0/rx_valid_in] [get_bd_pins data_transmission_0/tx_valid_out]
  connect_bd_net -net decoding_0_decoded_out [get_bd_pins decoding_0/decoded_out] [get_bd_pins output_display_0/data_in]
  connect_bd_net -net decoding_0_valid_out [get_bd_pins decoding_0/valid_out] [get_bd_pins output_display_0/valid_in]
  connect_bd_net -net decryption_logic_0_data_out [get_bd_pins decryption_logic_0/data_out] [get_bd_pins unscrambler_0/data_in]
  connect_bd_net -net decryption_logic_0_valid_out [get_bd_pins decryption_logic_0/valid_out] [get_bd_pins unscrambler_0/valid_in]
  connect_bd_net -net encoder_layer_0_crc_bit [get_bd_pins encoder_layer_0/crc_bit] [get_bd_pins scrambler_0/crc_in]
  connect_bd_net -net encoder_layer_0_data_encoded [get_bd_pins encoder_layer_0/data_encoded] [get_bd_pins scrambler_0/data_in]
  connect_bd_net -net encoder_layer_0_parity_bit [get_bd_pins encoder_layer_0/parity_bit] [get_bd_pins scrambler_0/parity_in]
  connect_bd_net -net encoder_layer_0_valid_out [get_bd_pins encoder_layer_0/valid_out] [get_bd_pins scrambler_0/valid_in]
  connect_bd_net -net encryption_layer_0_encrypted_data_out [get_bd_pins encryption_layer_0/encrypted_data_out] [get_bd_pins encryption_to_fifo_b_0/encrypted_data]
  connect_bd_net -net encryption_layer_0_encrypted_valid_out [get_bd_pins encryption_layer_0/encrypted_valid_out] [get_bd_pins encryption_to_fifo_b_0/valid_in]
  connect_bd_net -net encryption_to_fifo_b_0_fifo_din [get_bd_pins encryption_to_fifo_b_0/fifo_din] [get_bd_pins fifo_generator_0/din]
  connect_bd_net -net encryption_to_fifo_b_0_fifo_wr_en [get_bd_pins encryption_to_fifo_b_0/fifo_wr_en] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins data_transmission_0/fifo_dout] [get_bd_pins fifo_generator_0/dout]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins data_transmission_0/fifo_empty] [get_bd_pins fifo_generator_0/empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins data_transmission_0/fifo_full] [get_bd_pins fifo_generator_0/full]
  connect_bd_net -net input_layer_top_0_sensor_data_out [get_bd_pins encoder_layer_0/data_in] [get_bd_pins input_layer_top_0/data_out]
  connect_bd_net -net input_layer_top_0_valid_out [get_bd_pins encoder_layer_0/valid_in] [get_bd_pins input_layer_top_0/valid_out]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins reset_inv_0/Op1]
  connect_bd_net -net reset_inv_0_Res [get_bd_pins clk_wiz_0/reset] [get_bd_pins reset_inv_0/Res]
  connect_bd_net -net scrambler_0_crc_out [get_bd_pins encryption_to_fifo_b_0/crc_bitstream] [get_bd_pins scrambler_0/crc_out]
  connect_bd_net -net scrambler_0_data_out [get_bd_pins encryption_layer_0/scrambled_data_in] [get_bd_pins scrambler_0/data_out]
  connect_bd_net -net scrambler_0_lfsr_out [get_bd_pins scrambler_0/lfsr_out] [get_bd_pins unscrambler_0/lfsr_in]
  connect_bd_net -net scrambler_0_parity_out [get_bd_pins encryption_to_fifo_b_0/parity_bit] [get_bd_pins scrambler_0/parity_out]
  connect_bd_net -net scrambler_0_valid_out [get_bd_pins encryption_layer_0/scrambled_valid_in] [get_bd_pins scrambler_0/valid_out]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net unscrambler_0_data_out [get_bd_pins decoding_0/data_in] [get_bd_pins unscrambler_0/data_out]
  connect_bd_net -net unscrambler_0_valid_out [get_bd_pins decoding_0/valid_in] [get_bd_pins unscrambler_0/valid_out]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


