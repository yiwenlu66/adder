# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/peter/adder/adder.cache/wt [current_project]
set_property parent.project_path C:/Users/peter/adder/adder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/peter/adder/ip_complement
  c:/Users/peter/mux21/74LSXX_LIB
  c:/Users/peter/adder/ip_full_adder_1_bit
  c:/Users/peter/adder/ip_full_adder_4_bit
  c:/Users/peter/mux21/XUP_LIB
} [current_project]
set_property ip_output_repo c:/Users/peter/adder/adder.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0.xci
set_property is_locked true [get_files c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Users/peter/adder/adder.runs/complement_xlconstant_1_0_synth_1 -new_name complement_xlconstant_1_0 -ip [get_ips complement_xlconstant_1_0]]

if { $cached_ip eq {} } {

synth_design -top complement_xlconstant_1_0 -part xc7a35tcpg236-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix complement_xlconstant_1_0_ complement_xlconstant_1_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ complement_xlconstant_1_0_stub.v
 lappend ipCachedFiles complement_xlconstant_1_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ complement_xlconstant_1_0_stub.vhdl
 lappend ipCachedFiles complement_xlconstant_1_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ complement_xlconstant_1_0_sim_netlist.v
 lappend ipCachedFiles complement_xlconstant_1_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ complement_xlconstant_1_0_sim_netlist.vhdl
 lappend ipCachedFiles complement_xlconstant_1_0_sim_netlist.vhdl

 config_ip_cache -add -dcp complement_xlconstant_1_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips complement_xlconstant_1_0]
}

rename_ref -prefix_all complement_xlconstant_1_0_

write_checkpoint -force -noxdef complement_xlconstant_1_0.dcp

catch { report_utilization -file complement_xlconstant_1_0_utilization_synth.rpt -pb complement_xlconstant_1_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/peter/adder/adder.runs/complement_xlconstant_1_0_synth_1/complement_xlconstant_1_0.dcp c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/Users/peter/adder/adder.runs/complement_xlconstant_1_0_synth_1/complement_xlconstant_1_0.dcp c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/Users/peter/adder/adder.runs/complement_xlconstant_1_0_synth_1/complement_xlconstant_1_0_stub.v c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/peter/adder/adder.runs/complement_xlconstant_1_0_synth_1/complement_xlconstant_1_0_stub.vhdl c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/peter/adder/adder.runs/complement_xlconstant_1_0_synth_1/complement_xlconstant_1_0_sim_netlist.v c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/peter/adder/adder.runs/complement_xlconstant_1_0_synth_1/complement_xlconstant_1_0_sim_netlist.vhdl c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/Users/peter/adder/adder.ip_user_files/ip/complement_xlconstant_1_0]} {
  catch { 
    file copy -force c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_stub.v C:/Users/peter/adder/adder.ip_user_files/ip/complement_xlconstant_1_0
  }
}

if {[file isdir C:/Users/peter/adder/adder.ip_user_files/ip/complement_xlconstant_1_0]} {
  catch { 
    file copy -force c:/Users/peter/adder/adder.srcs/sources_1/bd/complement/ip/complement_xlconstant_1_0/complement_xlconstant_1_0_stub.vhdl C:/Users/peter/adder/adder.ip_user_files/ip/complement_xlconstant_1_0
  }
}
