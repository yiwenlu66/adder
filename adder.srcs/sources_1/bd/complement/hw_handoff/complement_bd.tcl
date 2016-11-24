
################################################################
# This is a generated script based on design: complement
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
# source complement_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name complement

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
  set COMP [ create_bd_port -dir I COMP ]
  set Y0 [ create_bd_port -dir O Y0 ]
  set Y1 [ create_bd_port -dir O Y1 ]
  set Y2 [ create_bd_port -dir O Y2 ]
  set Y3 [ create_bd_port -dir O Y3 ]

  # Create instance: full_adder_4_bit_0, and set properties
  set full_adder_4_bit_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:full_adder_4_bit:1.0 full_adder_4_bit_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xup_xor2_0, and set properties
  set xup_xor2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_0 ]

  # Create instance: xup_xor2_1, and set properties
  set xup_xor2_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_1 ]

  # Create instance: xup_xor2_2, and set properties
  set xup_xor2_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_2 ]

  # Create instance: xup_xor2_3, and set properties
  set xup_xor2_3 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_3 ]

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_ports A0] [get_bd_pins xup_xor2_0/a]
  connect_bd_net -net A1_1 [get_bd_ports A1] [get_bd_pins xup_xor2_1/a]
  connect_bd_net -net A2_1 [get_bd_ports A2] [get_bd_pins xup_xor2_2/a]
  connect_bd_net -net A3_1 [get_bd_ports A3] [get_bd_pins xup_xor2_3/a]
  connect_bd_net -net COMP_1 [get_bd_ports COMP] [get_bd_pins full_adder_4_bit_0/A0] [get_bd_pins xup_xor2_0/b] [get_bd_pins xup_xor2_1/b] [get_bd_pins xup_xor2_2/b] [get_bd_pins xup_xor2_3/b]
  connect_bd_net -net full_adder_4_bit_0_S0 [get_bd_ports Y0] [get_bd_pins full_adder_4_bit_0/S0]
  connect_bd_net -net full_adder_4_bit_0_S1 [get_bd_ports Y1] [get_bd_pins full_adder_4_bit_0/S1]
  connect_bd_net -net full_adder_4_bit_0_S2 [get_bd_ports Y2] [get_bd_pins full_adder_4_bit_0/S2]
  connect_bd_net -net full_adder_4_bit_0_S3 [get_bd_ports Y3] [get_bd_pins full_adder_4_bit_0/S3]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins full_adder_4_bit_0/A1] [get_bd_pins full_adder_4_bit_0/A2] [get_bd_pins full_adder_4_bit_0/A3] [get_bd_pins full_adder_4_bit_0/CI] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xup_xor2_0_y [get_bd_pins full_adder_4_bit_0/B0] [get_bd_pins xup_xor2_0/y]
  connect_bd_net -net xup_xor2_1_y [get_bd_pins full_adder_4_bit_0/B1] [get_bd_pins xup_xor2_1/y]
  connect_bd_net -net xup_xor2_2_y [get_bd_pins full_adder_4_bit_0/B2] [get_bd_pins xup_xor2_2/y]
  connect_bd_net -net xup_xor2_3_y [get_bd_pins full_adder_4_bit_0/B3] [get_bd_pins xup_xor2_3/y]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port Y0 -pg 1 -y 150 -defaultsOSRD
preplace port A0 -pg 1 -y 140 -defaultsOSRD
preplace port Y1 -pg 1 -y 170 -defaultsOSRD
preplace port A1 -pg 1 -y 240 -defaultsOSRD
preplace port Y2 -pg 1 -y 190 -defaultsOSRD
preplace port A2 -pg 1 -y 340 -defaultsOSRD
preplace port COMP -pg 1 -y 90 -defaultsOSRD
preplace port Y3 -pg 1 -y 210 -defaultsOSRD
preplace port A3 -pg 1 -y 440 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 1 -y 40 -defaultsOSRD
preplace inst xup_xor2_0 -pg 1 -lvl 1 -y 150 -defaultsOSRD
preplace inst xup_xor2_1 -pg 1 -lvl 1 -y 250 -defaultsOSRD
preplace inst xup_xor2_2 -pg 1 -lvl 1 -y 350 -defaultsOSRD
preplace inst xup_xor2_3 -pg 1 -lvl 1 -y 450 -defaultsOSRD
preplace inst full_adder_4_bit_0 -pg 1 -lvl 2 -y 170 -defaultsOSRD
preplace netloc full_adder_4_bit_0_S3 1 2 1 NJ
preplace netloc xlconstant_1_dout 1 1 1 190
preplace netloc xup_xor2_1_y 1 1 1 180
preplace netloc A3_1 1 0 1 NJ
preplace netloc xup_xor2_0_y 1 1 1 180
preplace netloc COMP_1 1 0 2 20 90 NJ
preplace netloc A2_1 1 0 1 NJ
preplace netloc xup_xor2_2_y 1 1 1 200
preplace netloc A1_1 1 0 1 NJ
preplace netloc full_adder_4_bit_0_S0 1 2 1 NJ
preplace netloc xup_xor2_3_y 1 1 1 210
preplace netloc A0_1 1 0 1 NJ
preplace netloc full_adder_4_bit_0_S1 1 2 1 NJ
preplace netloc full_adder_4_bit_0_S2 1 2 1 NJ
levelinfo -pg 1 0 100 300 410 -top 0 -bot 510
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


