
################################################################
# This is a generated script based on design: full_adder_4_bit
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
# source full_adder_4_bit_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name full_adder_4_bit

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
  set A0 [ create_bd_port -dir I A0 ]
  set A1 [ create_bd_port -dir I A1 ]
  set A2 [ create_bd_port -dir I A2 ]
  set A3 [ create_bd_port -dir I A3 ]
  set B0 [ create_bd_port -dir I B0 ]
  set B1 [ create_bd_port -dir I B1 ]
  set B2 [ create_bd_port -dir I B2 ]
  set B3 [ create_bd_port -dir I B3 ]
  set CI [ create_bd_port -dir I CI ]
  set CO [ create_bd_port -dir O CO ]
  set S0 [ create_bd_port -dir O S0 ]
  set S1 [ create_bd_port -dir O S1 ]
  set S2 [ create_bd_port -dir O S2 ]
  set S3 [ create_bd_port -dir O S3 ]

  # Create instance: full_adder_1_bit_0, and set properties
  set full_adder_1_bit_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:full_adder_1_bit:1.0 full_adder_1_bit_0 ]

  # Create instance: full_adder_1_bit_1, and set properties
  set full_adder_1_bit_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:full_adder_1_bit:1.0 full_adder_1_bit_1 ]

  # Create instance: full_adder_1_bit_2, and set properties
  set full_adder_1_bit_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:full_adder_1_bit:1.0 full_adder_1_bit_2 ]

  # Create instance: full_adder_1_bit_3, and set properties
  set full_adder_1_bit_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:full_adder_1_bit:1.0 full_adder_1_bit_3 ]

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_ports A0] [get_bd_pins full_adder_1_bit_0/A]
  connect_bd_net -net A1_1 [get_bd_ports A1] [get_bd_pins full_adder_1_bit_1/A]
  connect_bd_net -net A2_1 [get_bd_ports A2] [get_bd_pins full_adder_1_bit_2/A]
  connect_bd_net -net A3_1 [get_bd_ports A3] [get_bd_pins full_adder_1_bit_3/A]
  connect_bd_net -net B0_1 [get_bd_ports B0] [get_bd_pins full_adder_1_bit_0/B]
  connect_bd_net -net B1_1 [get_bd_ports B1] [get_bd_pins full_adder_1_bit_1/B]
  connect_bd_net -net B2_1 [get_bd_ports B2] [get_bd_pins full_adder_1_bit_2/B]
  connect_bd_net -net B3_1 [get_bd_ports B3] [get_bd_pins full_adder_1_bit_3/B]
  connect_bd_net -net CI_1 [get_bd_ports CI] [get_bd_pins full_adder_1_bit_0/CI]
  connect_bd_net -net full_adder_1_bit_0_CO [get_bd_pins full_adder_1_bit_0/CO] [get_bd_pins full_adder_1_bit_1/CI]
  connect_bd_net -net full_adder_1_bit_0_S [get_bd_ports S0] [get_bd_pins full_adder_1_bit_0/S]
  connect_bd_net -net full_adder_1_bit_1_CO [get_bd_pins full_adder_1_bit_1/CO] [get_bd_pins full_adder_1_bit_2/CI]
  connect_bd_net -net full_adder_1_bit_1_S [get_bd_ports S1] [get_bd_pins full_adder_1_bit_1/S]
  connect_bd_net -net full_adder_1_bit_2_CO [get_bd_pins full_adder_1_bit_2/CO] [get_bd_pins full_adder_1_bit_3/CI]
  connect_bd_net -net full_adder_1_bit_2_S [get_bd_ports S2] [get_bd_pins full_adder_1_bit_2/S]
  connect_bd_net -net full_adder_1_bit_3_CO [get_bd_ports CO] [get_bd_pins full_adder_1_bit_3/CO]
  connect_bd_net -net full_adder_1_bit_3_S [get_bd_ports S3] [get_bd_pins full_adder_1_bit_3/S]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port S3 -pg 1 -lvl 4:-10 -defaultsOSRD -bot
preplace port B0 -pg 1 -lvl 1:0 -defaultsOSRD -top
preplace port B1 -pg 1 -lvl 2:0 -defaultsOSRD -top
preplace port B2 -pg 1 -lvl 3:0 -defaultsOSRD -top
preplace port CI -pg 1 -y -50 -defaultsOSRD
preplace port B3 -pg 1 -lvl 4:0 -defaultsOSRD -top
preplace port CO -pg 1 -y 110 -defaultsOSRD
preplace port A0 -pg 1 -lvl 1:20 -defaultsOSRD -top
preplace port S0 -pg 1 -lvl 1:-10 -defaultsOSRD -bot
preplace port A1 -pg 1 -lvl 2:20 -defaultsOSRD -top
preplace port S1 -pg 1 -lvl 2:-10 -defaultsOSRD -bot
preplace port A2 -pg 1 -lvl 3:20 -defaultsOSRD -top
preplace port S2 -pg 1 -lvl 3:-10 -defaultsOSRD -bot
preplace port A3 -pg 1 -lvl 4:20 -defaultsOSRD -top
preplace inst full_adder_1_bit_3 -pg 1 -lvl 4 -y 30 -defaultsOSRD -orient R270
preplace inst full_adder_1_bit_0 -pg 1 -lvl 1 -y 30 -defaultsOSRD -orient R270
preplace inst full_adder_1_bit_1 -pg 1 -lvl 2 -y 30 -defaultsOSRD -orient R270
preplace inst full_adder_1_bit_2 -pg 1 -lvl 3 -y 30 -defaultsOSRD -orient R270
preplace netloc full_adder_1_bit_2_CO 1 3 1 130
preplace netloc CI_1 1 0 1 NJ
preplace netloc full_adder_1_bit_3_CO 1 4 1 N
preplace netloc full_adder_1_bit_3_S 1 3 1 N
preplace netloc full_adder_1_bit_0_CO 1 1 1 -190
preplace netloc A3_1 1 3 1 N
preplace netloc B3_1 1 3 1 N
preplace netloc full_adder_1_bit_1_CO 1 2 1 -30
preplace netloc full_adder_1_bit_0_S 1 0 1 N
preplace netloc A2_1 1 2 1 N
preplace netloc full_adder_1_bit_2_S 1 2 1 N
preplace netloc B2_1 1 2 1 N
preplace netloc full_adder_1_bit_1_S 1 1 1 N
preplace netloc A1_1 1 1 1 N
preplace netloc B1_1 1 1 1 N
preplace netloc A0_1 1 0 1 N
preplace netloc B0_1 1 0 1 N
levelinfo -pg 1 -490 -270 -110 50 210 310 -top -210 -bot 370
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


