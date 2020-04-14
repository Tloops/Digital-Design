
################################################################
# This is a generated script based on design: four_sixteen
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
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source four_sixteen_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# three_eight, three_eight

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name four_sixteen

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
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

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

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
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
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set I0 [ create_bd_port -dir I -type data I0 ]
  set I1 [ create_bd_port -dir I -type data I1 ]
  set I2 [ create_bd_port -dir I I2 ]
  set I3 [ create_bd_port -dir I I3 ]
  set Y0 [ create_bd_port -dir O -from 0 -to 0 Y0 ]
  set Y1 [ create_bd_port -dir O -from 0 -to 0 Y1 ]
  set Y2 [ create_bd_port -dir O -from 0 -to 0 Y2 ]
  set Y3 [ create_bd_port -dir O -from 0 -to 0 Y3 ]
  set Y4 [ create_bd_port -dir O -from 0 -to 0 Y4 ]
  set Y5 [ create_bd_port -dir O -from 0 -to 0 Y5 ]
  set Y6 [ create_bd_port -dir O -from 0 -to 0 Y6 ]
  set Y7 [ create_bd_port -dir O -from 0 -to 0 Y7 ]
  set Y8 [ create_bd_port -dir O -from 0 -to 0 Y8 ]
  set Y9 [ create_bd_port -dir O -from 0 -to 0 Y9 ]
  set Y10 [ create_bd_port -dir O -from 0 -to 0 Y10 ]
  set Y11 [ create_bd_port -dir O -from 0 -to 0 Y11 ]
  set Y12 [ create_bd_port -dir O -from 0 -to 0 Y12 ]
  set Y13 [ create_bd_port -dir O -from 0 -to 0 Y13 ]
  set Y14 [ create_bd_port -dir O -from 0 -to 0 Y14 ]
  set Y15 [ create_bd_port -dir O -from 0 -to 0 Y15 ]
  set en [ create_bd_port -dir I en ]

  # Create instance: three_eight_0, and set properties
  set block_name three_eight
  set block_cell_name three_eight_0
  if { [catch {set three_eight_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $three_eight_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: three_eight_1, and set properties
  set block_name three_eight
  set block_cell_name three_eight_1
  if { [catch {set three_eight_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $three_eight_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create instance: util_vector_logic_6, and set properties
  set util_vector_logic_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_6 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_6

  # Create instance: util_vector_logic_7, and set properties
  set util_vector_logic_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_7 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_7

  # Create instance: util_vector_logic_8, and set properties
  set util_vector_logic_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_8 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_8

  # Create instance: util_vector_logic_9, and set properties
  set util_vector_logic_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_9 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_9

  # Create instance: util_vector_logic_10, and set properties
  set util_vector_logic_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_10 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_10

  # Create instance: util_vector_logic_11, and set properties
  set util_vector_logic_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_11 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_11

  # Create instance: util_vector_logic_12, and set properties
  set util_vector_logic_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_12 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_12

  # Create instance: util_vector_logic_13, and set properties
  set util_vector_logic_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_13 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_13

  # Create instance: util_vector_logic_14, and set properties
  set util_vector_logic_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_14 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_14

  # Create instance: util_vector_logic_15, and set properties
  set util_vector_logic_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_15 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_15

  # Create instance: util_vector_logic_16, and set properties
  set util_vector_logic_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_16 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_16

  # Create port connections
  connect_bd_net -net I0_1 [get_bd_ports I0] [get_bd_pins three_eight_0/I0] [get_bd_pins three_eight_1/I0]
  connect_bd_net -net I1_1 [get_bd_ports I1] [get_bd_pins three_eight_0/I1] [get_bd_pins three_eight_1/I1]
  connect_bd_net -net I2_1 [get_bd_ports I2] [get_bd_pins three_eight_0/I2] [get_bd_pins three_eight_1/I2]
  connect_bd_net -net I3_1 [get_bd_ports I3] [get_bd_pins three_eight_1/en] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net en_1 [get_bd_ports en] [get_bd_pins util_vector_logic_1/Op2] [get_bd_pins util_vector_logic_10/Op2] [get_bd_pins util_vector_logic_11/Op2] [get_bd_pins util_vector_logic_12/Op2] [get_bd_pins util_vector_logic_13/Op2] [get_bd_pins util_vector_logic_14/Op2] [get_bd_pins util_vector_logic_15/Op2] [get_bd_pins util_vector_logic_16/Op2] [get_bd_pins util_vector_logic_2/Op2] [get_bd_pins util_vector_logic_3/Op2] [get_bd_pins util_vector_logic_4/Op2] [get_bd_pins util_vector_logic_5/Op2] [get_bd_pins util_vector_logic_6/Op2] [get_bd_pins util_vector_logic_7/Op2] [get_bd_pins util_vector_logic_8/Op2] [get_bd_pins util_vector_logic_9/Op2]
  connect_bd_net -net three_eight_0_Y0 [get_bd_pins three_eight_0/Y0] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net three_eight_0_Y1 [get_bd_pins three_eight_0/Y1] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net three_eight_0_Y2 [get_bd_pins three_eight_0/Y2] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net three_eight_0_Y3 [get_bd_pins three_eight_0/Y3] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net three_eight_0_Y4 [get_bd_pins three_eight_0/Y4] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net three_eight_0_Y5 [get_bd_pins three_eight_0/Y5] [get_bd_pins util_vector_logic_6/Op1]
  connect_bd_net -net three_eight_0_Y6 [get_bd_pins three_eight_0/Y6] [get_bd_pins util_vector_logic_7/Op1]
  connect_bd_net -net three_eight_0_Y7 [get_bd_pins three_eight_0/Y7] [get_bd_pins util_vector_logic_8/Op1]
  connect_bd_net -net three_eight_1_Y0 [get_bd_pins three_eight_1/Y0] [get_bd_pins util_vector_logic_9/Op1]
  connect_bd_net -net three_eight_1_Y1 [get_bd_pins three_eight_1/Y1] [get_bd_pins util_vector_logic_10/Op1]
  connect_bd_net -net three_eight_1_Y2 [get_bd_pins three_eight_1/Y2] [get_bd_pins util_vector_logic_11/Op1]
  connect_bd_net -net three_eight_1_Y3 [get_bd_pins three_eight_1/Y3] [get_bd_pins util_vector_logic_13/Op1]
  connect_bd_net -net three_eight_1_Y4 [get_bd_pins three_eight_1/Y4] [get_bd_pins util_vector_logic_16/Op1]
  connect_bd_net -net three_eight_1_Y5 [get_bd_pins three_eight_1/Y5] [get_bd_pins util_vector_logic_15/Op1]
  connect_bd_net -net three_eight_1_Y6 [get_bd_pins three_eight_1/Y6] [get_bd_pins util_vector_logic_14/Op1]
  connect_bd_net -net three_eight_1_Y7 [get_bd_pins three_eight_1/Y7] [get_bd_pins util_vector_logic_12/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins three_eight_0/en] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_10_Res [get_bd_ports Y9] [get_bd_pins util_vector_logic_10/Res]
  connect_bd_net -net util_vector_logic_11_Res [get_bd_ports Y10] [get_bd_pins util_vector_logic_11/Res]
  connect_bd_net -net util_vector_logic_12_Res [get_bd_ports Y15] [get_bd_pins util_vector_logic_12/Res]
  connect_bd_net -net util_vector_logic_13_Res [get_bd_ports Y11] [get_bd_pins util_vector_logic_13/Res]
  connect_bd_net -net util_vector_logic_14_Res [get_bd_ports Y14] [get_bd_pins util_vector_logic_14/Res]
  connect_bd_net -net util_vector_logic_15_Res [get_bd_ports Y13] [get_bd_pins util_vector_logic_15/Res]
  connect_bd_net -net util_vector_logic_16_Res [get_bd_ports Y12] [get_bd_pins util_vector_logic_16/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_ports Y0] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_ports Y1] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_ports Y2] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_ports Y3] [get_bd_pins util_vector_logic_4/Res]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_ports Y4] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net util_vector_logic_6_Res [get_bd_ports Y5] [get_bd_pins util_vector_logic_6/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_ports Y6] [get_bd_pins util_vector_logic_7/Res]
  connect_bd_net -net util_vector_logic_8_Res [get_bd_ports Y7] [get_bd_pins util_vector_logic_8/Res]
  connect_bd_net -net util_vector_logic_9_Res [get_bd_ports Y8] [get_bd_pins util_vector_logic_9/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


