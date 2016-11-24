
################################################################
# This is a generated script based on design: top
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
# source top_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
set design_name top

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
  set AN0 [ create_bd_port -dir O AN0 ]
  set AN1 [ create_bd_port -dir O AN1 ]
  set AN2 [ create_bd_port -dir O AN2 ]
  set AN3 [ create_bd_port -dir O AN3 ]
  set CLK [ create_bd_port -dir I CLK ]
  set M0 [ create_bd_port -dir I M0 ]
  set M1 [ create_bd_port -dir I M1 ]
  set N0 [ create_bd_port -dir I N0 ]
  set N1 [ create_bd_port -dir I N1 ]
  set SGN_M [ create_bd_port -dir I SGN_M ]
  set SGN_N [ create_bd_port -dir I SGN_N ]
  set Y [ create_bd_port -dir O -from 3 -to 0 Y ]

  # Create instance: GND, and set properties
  set GND [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $GND

  # Create instance: MUX, and set properties
  set MUX [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_4_to_1_mux_vector:1.0 MUX ]

  # Create instance: Vcc, and set properties
  set Vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Vcc ]

  # Create instance: calculator, and set properties
  set calculator [ create_bd_cell -type ip -vlnv xilinx.com:user:calculator:1.0 calculator ]

  # Create instance: clock_divider, and set properties
  set clock_divider [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_clk_divider:1.0 clock_divider ]
  set_property -dict [ list \
CONFIG.SIZE {400000} \
 ] $clock_divider

  # Create instance: concat_M, and set properties
  set concat_M [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_M ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {4} \
 ] $concat_M

  # Create instance: concat_N, and set properties
  set concat_N [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_N ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {4} \
 ] $concat_N

  # Create instance: concat_S, and set properties
  set concat_S [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_S ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {4} \
 ] $concat_S

  # Create instance: concat_SGN_S, and set properties
  set concat_SGN_S [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 concat_SGN_S ]
  set_property -dict [ list \
CONFIG.NUM_PORTS {4} \
 ] $concat_SGN_S

  # Create instance: counter, and set properties
  set counter [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 counter ]
  set_property -dict [ list \
CONFIG.Output_Width {2} \
 ] $counter

  # Create instance: two_four_decoder_0, and set properties
  set two_four_decoder_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:two_four_decoder:1.0 two_four_decoder_0 ]

  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins clock_divider/clkin] [get_bd_pins counter/CLK]
  connect_bd_net -net M0_1 [get_bd_ports M0] [get_bd_pins calculator/M0] [get_bd_pins concat_M/In0]
  connect_bd_net -net M1_1 [get_bd_ports M1] [get_bd_pins calculator/M1] [get_bd_pins concat_M/In1]
  connect_bd_net -net MUX_y [get_bd_ports Y] [get_bd_pins MUX/y]
  connect_bd_net -net N0_1 [get_bd_ports N0] [get_bd_pins calculator/N0] [get_bd_pins concat_N/In0]
  connect_bd_net -net N1_1 [get_bd_ports N1] [get_bd_pins calculator/N1] [get_bd_pins concat_N/In1]
  connect_bd_net -net SGN_M_1 [get_bd_ports SGN_M] [get_bd_pins calculator/SGN_M]
  connect_bd_net -net SGN_N_1 [get_bd_ports SGN_N] [get_bd_pins calculator/SGN_N]
  connect_bd_net -net calculator_0_S0 [get_bd_pins calculator/S0] [get_bd_pins concat_S/In0]
  connect_bd_net -net calculator_0_S1 [get_bd_pins calculator/S1] [get_bd_pins concat_S/In1]
  connect_bd_net -net calculator_0_S2 [get_bd_pins calculator/S2] [get_bd_pins concat_S/In2]
  connect_bd_net -net calculator_0_SGN_S [get_bd_pins calculator/SGN_S] [get_bd_pins concat_SGN_S/In3]
  connect_bd_net -net concat_N_dout [get_bd_pins MUX/b] [get_bd_pins concat_N/dout]
  connect_bd_net -net counter_Q [get_bd_pins MUX/sel] [get_bd_pins counter/Q] [get_bd_pins two_four_decoder_0/A]
  connect_bd_net -net two_four_decoder_0_Y0 [get_bd_ports AN3] [get_bd_pins two_four_decoder_0/Y0]
  connect_bd_net -net two_four_decoder_0_Y1 [get_bd_ports AN2] [get_bd_pins two_four_decoder_0/Y1]
  connect_bd_net -net two_four_decoder_0_Y2 [get_bd_ports AN1] [get_bd_pins two_four_decoder_0/Y2]
  connect_bd_net -net two_four_decoder_0_Y3 [get_bd_ports AN0] [get_bd_pins two_four_decoder_0/Y3]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins MUX/d] [get_bd_pins concat_S/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins MUX/c] [get_bd_pins concat_SGN_S/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins MUX/a] [get_bd_pins concat_M/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Vcc/dout] [get_bd_pins concat_M/In3] [get_bd_pins concat_N/In3] [get_bd_pins concat_S/In3] [get_bd_pins concat_SGN_S/In0] [get_bd_pins concat_SGN_S/In1] [get_bd_pins concat_SGN_S/In2]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins GND/dout] [get_bd_pins concat_M/In2] [get_bd_pins concat_N/In2]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port SGN_N -pg 1 -y 560 -defaultsOSRD
preplace port AN0 -pg 1 -y 250 -defaultsOSRD
preplace port CLK -pg 1 -lvl 2:-60 -defaultsOSRD -top
preplace port M0 -pg 1 -y 200 -defaultsOSRD
preplace port AN1 -pg 1 -y 230 -defaultsOSRD
preplace port M1 -pg 1 -y 220 -defaultsOSRD
preplace port AN2 -pg 1 -y 210 -defaultsOSRD
preplace port AN3 -pg 1 -y 190 -defaultsOSRD
preplace port N0 -pg 1 -y 620 -defaultsOSRD
preplace port SGN_M -pg 1 -y 540 -defaultsOSRD
preplace port N1 -pg 1 -y 520 -defaultsOSRD
preplace portBus Y -pg 1 -y 370 -defaultsOSRD
preplace inst Vcc -pg 1 -lvl 1 -y 760 -defaultsOSRD
preplace inst calculator -pg 1 -lvl 1 -y 510 -defaultsOSRD
preplace inst GND -pg 1 -lvl 1 -y 680 -defaultsOSRD
preplace inst counter -pg 1 -lvl 2 -y 120 -defaultsOSRD
preplace inst concat_S -pg 1 -lvl 2 -y 510 -defaultsOSRD
preplace inst clock_divider -pg 1 -lvl 1 -y 110 -defaultsOSRD
preplace inst concat_SGN_S -pg 1 -lvl 2 -y 370 -defaultsOSRD
preplace inst two_four_decoder_0 -pg 1 -lvl 3 -y 220 -defaultsOSRD
preplace inst concat_M -pg 1 -lvl 2 -y 230 -defaultsOSRD
preplace inst MUX -pg 1 -lvl 3 -y 370 -defaultsOSRD
preplace inst concat_N -pg 1 -lvl 2 -y 650 -defaultsOSRD
preplace netloc xlconstant_1_dout 1 1 1 200
preplace netloc SGN_N_1 1 0 1 NJ
preplace netloc CLK_1 1 0 2 30 40 220
preplace netloc calculator_0_S0 1 1 1 N
preplace netloc concat_N_dout 1 2 1 420
preplace netloc calculator_0_S1 1 1 1 N
preplace netloc SGN_M_1 1 0 1 NJ
preplace netloc counter_Q 1 2 1 410
preplace netloc xlconcat_1_dout 1 2 1 N
preplace netloc calculator_0_S2 1 1 1 N
preplace netloc M0_1 1 0 2 30 200 NJ
preplace netloc two_four_decoder_0_Y0 1 3 1 NJ
preplace netloc xlconstant_0_dout 1 1 1 220
preplace netloc xlconcat_0_dout 1 2 1 430
preplace netloc two_four_decoder_0_Y1 1 3 1 NJ
preplace netloc MUX_y 1 3 1 NJ
preplace netloc N0_1 1 0 2 30 620 NJ
preplace netloc two_four_decoder_0_Y2 1 3 1 NJ
preplace netloc two_four_decoder_0_Y3 1 3 1 NJ
preplace netloc M1_1 1 0 2 20 220 NJ
preplace netloc xlconcat_2_dout 1 2 1 400
preplace netloc calculator_0_SGN_S 1 1 1 210
preplace netloc N1_1 1 0 2 20 630 190J
levelinfo -pg 1 0 110 310 530 650 -top -30 -bot 810
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


