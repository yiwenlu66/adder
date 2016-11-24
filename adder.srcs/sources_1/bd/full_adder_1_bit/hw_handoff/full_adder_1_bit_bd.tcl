
################################################################
# This is a generated script based on design: full_adder_1_bit
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
# source full_adder_1_bit_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name full_adder_1_bit

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
  set A [ create_bd_port -dir I A ]
  set B [ create_bd_port -dir I B ]
  set CI [ create_bd_port -dir I CI ]
  set CO [ create_bd_port -dir O CO ]
  set S [ create_bd_port -dir O S ]

  # Create instance: xup_inv_0, and set properties
  set xup_inv_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_inv:1.0 xup_inv_0 ]

  # Create instance: xup_nand2_0, and set properties
  set xup_nand2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_nand2:1.0 xup_nand2_0 ]

  # Create instance: xup_nand2_1, and set properties
  set xup_nand2_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_nand2:1.0 xup_nand2_1 ]

  # Create instance: xup_nand2_2, and set properties
  set xup_nand2_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_nand2:1.0 xup_nand2_2 ]

  # Create instance: xup_xnor2_0, and set properties
  set xup_xnor2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xnor2:1.0 xup_xnor2_0 ]

  # Create instance: xup_xor2_0, and set properties
  set xup_xor2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_0 ]

  # Create port connections
  connect_bd_net -net A_1 [get_bd_ports A] [get_bd_pins xup_nand2_2/a] [get_bd_pins xup_xor2_0/a]
  connect_bd_net -net B_1 [get_bd_ports B] [get_bd_pins xup_nand2_2/b] [get_bd_pins xup_xor2_0/b]
  connect_bd_net -net CI_1 [get_bd_ports CI] [get_bd_pins xup_inv_0/a] [get_bd_pins xup_nand2_0/b]
  connect_bd_net -net xup_inv_0_y [get_bd_pins xup_inv_0/y] [get_bd_pins xup_xnor2_0/b]
  connect_bd_net -net xup_nand2_0_y [get_bd_pins xup_nand2_0/y] [get_bd_pins xup_nand2_1/a]
  connect_bd_net -net xup_nand2_1_y [get_bd_ports CO] [get_bd_pins xup_nand2_1/y]
  connect_bd_net -net xup_nand2_2_y [get_bd_pins xup_nand2_1/b] [get_bd_pins xup_nand2_2/y]
  connect_bd_net -net xup_xnor2_0_y [get_bd_ports S] [get_bd_pins xup_xnor2_0/y]
  connect_bd_net -net xup_xor2_0_y [get_bd_pins xup_nand2_0/a] [get_bd_pins xup_xnor2_0/a] [get_bd_pins xup_xor2_0/y]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port A -pg 1 -y -290 -defaultsOSRD
preplace port B -pg 1 -y -200 -defaultsOSRD
preplace port CI -pg 1 -y -110 -defaultsOSRD
preplace port S -pg 1 -y -250 -defaultsOSRD
preplace port CO -pg 1 -y -50 -defaultsOSRD
preplace inst xup_nand2_0 -pg 1 -lvl 4 -y -120 -defaultsOSRD
preplace inst xup_nand2_1 -pg 1 -lvl 5 -y -50 -defaultsOSRD
preplace inst xup_nand2_2 -pg 1 -lvl 2 -y 20 -defaultsOSRD
preplace inst xup_inv_0 -pg 1 -lvl 3 -y -240 -defaultsOSRD
preplace inst xup_xor2_0 -pg 1 -lvl 1 -y -290 -defaultsOSRD
preplace inst xup_xnor2_0 -pg 1 -lvl 4 -y -250 -defaultsOSRD
preplace netloc A_1 1 0 2 -70 10 N
preplace netloc xup_xnor2_0_y 1 4 2 NJ -250 N
preplace netloc CI_1 1 0 4 NJ -110 NJ -110 320 -110 N
preplace netloc xup_xor2_0_y 1 1 3 N -290 N -290 570
preplace netloc xup_inv_0_y 1 3 1 N
preplace netloc xup_nand2_2_y 1 2 3 NJ 20 N 20 740
preplace netloc B_1 1 0 2 -60 30 N
preplace netloc xup_nand2_1_y 1 5 1 N
preplace netloc xup_nand2_0_y 1 4 1 740
levelinfo -pg 1 -90 70 240 490 660 820 920 -top -470 -bot 110
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


