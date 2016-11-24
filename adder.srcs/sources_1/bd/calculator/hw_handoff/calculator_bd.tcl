
################################################################
# This is a generated script based on design: calculator
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
set scripts_vivado_version 2016.3
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
# source calculator_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name calculator

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
  set M0 [ create_bd_port -dir I M0 ]
  set M1 [ create_bd_port -dir I M1 ]
  set N0 [ create_bd_port -dir I N0 ]
  set N1 [ create_bd_port -dir I N1 ]
  set S0 [ create_bd_port -dir O S0 ]
  set S1 [ create_bd_port -dir O S1 ]
  set S2 [ create_bd_port -dir O S2 ]
  set SGN_M [ create_bd_port -dir I SGN_M ]
  set SGN_N [ create_bd_port -dir I SGN_N ]
  set SGN_S [ create_bd_port -dir O SGN_S ]

  # Create instance: complement_0, and set properties
  set complement_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:complement:1.0 complement_0 ]

  # Create instance: complement_1, and set properties
  set complement_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:complement:1.0 complement_1 ]

  # Create instance: complement_2, and set properties
  set complement_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:complement:1.0 complement_2 ]

  # Create instance: full_adder_4_bit_0, and set properties
  set full_adder_4_bit_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:full_adder_4_bit:1.0 full_adder_4_bit_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net M0_1 [get_bd_ports M0] [get_bd_pins complement_0/A0]
  connect_bd_net -net M1_1 [get_bd_ports M1] [get_bd_pins complement_0/A1]
  connect_bd_net -net N0_1 [get_bd_ports N0] [get_bd_pins complement_2/A0]
  connect_bd_net -net N1_1 [get_bd_ports N1] [get_bd_pins complement_2/A1]
  connect_bd_net -net SGN_M_1 [get_bd_ports SGN_M] [get_bd_pins complement_0/COMP]
  connect_bd_net -net SGN_N_1 [get_bd_ports SGN_N] [get_bd_pins complement_2/COMP]
  connect_bd_net -net complement_0_Y0 [get_bd_pins complement_0/Y0] [get_bd_pins full_adder_4_bit_0/A0]
  connect_bd_net -net complement_0_Y1 [get_bd_pins complement_0/Y1] [get_bd_pins full_adder_4_bit_0/A1]
  connect_bd_net -net complement_0_Y2 [get_bd_pins complement_0/Y2] [get_bd_pins full_adder_4_bit_0/A2]
  connect_bd_net -net complement_0_Y3 [get_bd_pins complement_0/Y3] [get_bd_pins full_adder_4_bit_0/A3]
  connect_bd_net -net complement_1_Y0 [get_bd_ports S0] [get_bd_pins complement_1/Y0]
  connect_bd_net -net complement_1_Y1 [get_bd_ports S1] [get_bd_pins complement_1/Y1]
  connect_bd_net -net complement_1_Y2 [get_bd_ports S2] [get_bd_pins complement_1/Y2]
  connect_bd_net -net complement_2_Y0 [get_bd_pins complement_2/Y0] [get_bd_pins full_adder_4_bit_0/B0]
  connect_bd_net -net complement_2_Y1 [get_bd_pins complement_2/Y1] [get_bd_pins full_adder_4_bit_0/B1]
  connect_bd_net -net complement_2_Y2 [get_bd_pins complement_2/Y2] [get_bd_pins full_adder_4_bit_0/B2]
  connect_bd_net -net complement_2_Y3 [get_bd_pins complement_2/Y3] [get_bd_pins full_adder_4_bit_0/B3]
  connect_bd_net -net full_adder_4_bit_0_S0 [get_bd_pins complement_1/A0] [get_bd_pins full_adder_4_bit_0/S0]
  connect_bd_net -net full_adder_4_bit_0_S1 [get_bd_pins complement_1/A1] [get_bd_pins full_adder_4_bit_0/S1]
  connect_bd_net -net full_adder_4_bit_0_S2 [get_bd_pins complement_1/A2] [get_bd_pins full_adder_4_bit_0/S2]
  connect_bd_net -net full_adder_4_bit_0_S3 [get_bd_ports SGN_S] [get_bd_pins complement_1/A3] [get_bd_pins complement_1/COMP] [get_bd_pins full_adder_4_bit_0/S3]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins complement_0/A2] [get_bd_pins complement_0/A3] [get_bd_pins complement_2/A2] [get_bd_pins complement_2/A3] [get_bd_pins full_adder_4_bit_0/CI] [get_bd_pins xlconstant_0/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port SGN_N -pg 1 -y 120 -defaultsOSRD
preplace port SGN_S -pg 1 -y 20 -defaultsOSRD
preplace port M0 -pg 1 -y -80 -defaultsOSRD
preplace port M1 -pg 1 -y -60 -defaultsOSRD
preplace port S0 -pg 1 -y 80 -defaultsOSRD
preplace port S1 -pg 1 -y 60 -defaultsOSRD
preplace port N0 -pg 1 -y 60 -defaultsOSRD
preplace port S2 -pg 1 -y 40 -defaultsOSRD
preplace port N1 -pg 1 -y 80 -defaultsOSRD
preplace port SGN_M -pg 1 -y 0 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y -270 -defaultsOSRD
preplace inst complement_0 -pg 1 -lvl 2 -y -40 -defaultsOSRD
preplace inst complement_1 -pg 1 -lvl 4 -y 40 -defaultsOSRD
preplace inst complement_2 -pg 1 -lvl 2 -y 160 -defaultsOSRD
preplace inst full_adder_4_bit_0 -pg 1 -lvl 3 -y 50 -defaultsOSRD
preplace netloc full_adder_4_bit_0_S3 1 3 2 540 -50 750J
preplace netloc SGN_N_1 1 0 2 -60J 200 N
preplace netloc complement_1_Y0 1 4 1 740
preplace netloc complement_1_Y1 1 4 1 730
preplace netloc complement_1_Y2 1 4 1 750
preplace netloc SGN_M_1 1 0 2 NJ 0 N
preplace netloc complement_0_Y0 1 2 1 310
preplace netloc complement_0_Y1 1 2 1 300
preplace netloc M0_1 1 0 2 NJ -80 N
preplace netloc complement_0_Y2 1 2 1 280
preplace netloc xlconstant_0_dout 1 1 2 90 -270 290
preplace netloc complement_0_Y3 1 2 1 270
preplace netloc N0_1 1 0 2 NJ 60 80
preplace netloc complement_2_Y0 1 2 1 270
preplace netloc full_adder_4_bit_0_S0 1 3 1 530
preplace netloc complement_2_Y1 1 2 1 280
preplace netloc M1_1 1 0 2 NJ -60 N
preplace netloc full_adder_4_bit_0_S1 1 3 1 550
preplace netloc complement_2_Y2 1 2 1 300
preplace netloc N1_1 1 0 2 -50J 140 N
preplace netloc full_adder_4_bit_0_S2 1 3 1 560
preplace netloc complement_2_Y3 1 2 1 310
levelinfo -pg 1 -80 20 190 440 650 1380 -top -550 -bot 250
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


