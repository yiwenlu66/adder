
################################################################
# This is a generated script based on design: display
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
# source display_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name display

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
  set SGN_M [ create_bd_port -dir I SGN_M ]
  set SGN_N [ create_bd_port -dir I SGN_N ]
  set a [ create_bd_port -dir O a ]
  set b [ create_bd_port -dir O b ]
  set c [ create_bd_port -dir O c ]
  set d [ create_bd_port -dir O d ]
  set e [ create_bd_port -dir O e ]
  set f [ create_bd_port -dir O f ]
  set g [ create_bd_port -dir O g ]

  # Create instance: BCD2SEG7_0, and set properties
  set BCD2SEG7_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:BCD2SEG7:1.0 BCD2SEG7_0 ]

  # Create instance: calculator_0, and set properties
  set calculator_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:calculator:1.0 calculator_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net BCD2SEG7_0_a [get_bd_ports a] [get_bd_pins BCD2SEG7_0/a]
  connect_bd_net -net BCD2SEG7_0_b [get_bd_ports b] [get_bd_pins BCD2SEG7_0/b]
  connect_bd_net -net BCD2SEG7_0_c [get_bd_ports c] [get_bd_pins BCD2SEG7_0/c]
  connect_bd_net -net BCD2SEG7_0_d [get_bd_ports d] [get_bd_pins BCD2SEG7_0/d]
  connect_bd_net -net BCD2SEG7_0_e [get_bd_ports e] [get_bd_pins BCD2SEG7_0/e]
  connect_bd_net -net BCD2SEG7_0_f [get_bd_ports f] [get_bd_pins BCD2SEG7_0/f]
  connect_bd_net -net BCD2SEG7_0_g [get_bd_ports g] [get_bd_pins BCD2SEG7_0/g]
  connect_bd_net -net M0_1 [get_bd_ports M0] [get_bd_pins calculator_0/M0]
  connect_bd_net -net M1_1 [get_bd_ports M1] [get_bd_pins calculator_0/M1]
  connect_bd_net -net N0_1 [get_bd_ports N0] [get_bd_pins calculator_0/N0]
  connect_bd_net -net N1_1 [get_bd_ports N1] [get_bd_pins calculator_0/N1]
  connect_bd_net -net SGN_M_1 [get_bd_ports SGN_M] [get_bd_pins calculator_0/SGN_M]
  connect_bd_net -net SGN_N_1 [get_bd_ports SGN_N] [get_bd_pins calculator_0/SGN_N]
  connect_bd_net -net calculator_0_S0 [get_bd_pins BCD2SEG7_0/BCD_A] [get_bd_pins calculator_0/S0]
  connect_bd_net -net calculator_0_S1 [get_bd_pins BCD2SEG7_0/BCD_B] [get_bd_pins calculator_0/S1]
  connect_bd_net -net calculator_0_S2 [get_bd_pins BCD2SEG7_0/BCD_C] [get_bd_pins calculator_0/S2]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins BCD2SEG7_0/LT_n] [get_bd_pins BCD2SEG7_0/RBI_n] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins BCD2SEG7_0/BCD_D] [get_bd_pins xlconstant_1/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port SGN_N -pg 1 -y 140 -defaultsOSRD
preplace port a -pg 1 -y 180 -defaultsOSRD
preplace port b -pg 1 -y 200 -defaultsOSRD
preplace port M0 -pg 1 -y 40 -defaultsOSRD
preplace port c -pg 1 -y 220 -defaultsOSRD
preplace port M1 -pg 1 -y 60 -defaultsOSRD
preplace port d -pg 1 -y 240 -defaultsOSRD
preplace port e -pg 1 -y 260 -defaultsOSRD
preplace port f -pg 1 -y 280 -defaultsOSRD
preplace port N0 -pg 1 -y 80 -defaultsOSRD
preplace port g -pg 1 -y 300 -defaultsOSRD
preplace port N1 -pg 1 -y 100 -defaultsOSRD
preplace port SGN_M -pg 1 -y 120 -defaultsOSRD
preplace inst calculator_0 -pg 1 -lvl 1 -y 90 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 220 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 1 -y 300 -defaultsOSRD
preplace inst BCD2SEG7_0 -pg 1 -lvl 2 -y 250 -defaultsOSRD
preplace netloc xlconstant_1_dout 1 1 1 190J
preplace netloc SGN_N_1 1 0 1 NJ
preplace netloc calculator_0_S0 1 1 1 210
preplace netloc calculator_0_S1 1 1 1 200
preplace netloc SGN_M_1 1 0 1 NJ
preplace netloc BCD2SEG7_0_a 1 2 1 NJ
preplace netloc calculator_0_S2 1 1 1 180
preplace netloc BCD2SEG7_0_b 1 2 1 NJ
preplace netloc BCD2SEG7_0_c 1 2 1 NJ
preplace netloc M0_1 1 0 1 NJ
preplace netloc BCD2SEG7_0_d 1 2 1 NJ
preplace netloc xlconstant_0_dout 1 1 1 220
preplace netloc BCD2SEG7_0_e 1 2 1 NJ
preplace netloc N0_1 1 0 1 NJ
preplace netloc BCD2SEG7_0_f 1 2 1 NJ
preplace netloc BCD2SEG7_0_g 1 2 1 NJ
preplace netloc M1_1 1 0 1 NJ
preplace netloc N1_1 1 0 1 NJ
levelinfo -pg 1 0 100 340 480 -top 0 -bot 370
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


