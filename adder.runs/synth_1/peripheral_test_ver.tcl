# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/peter/adder/adder.cache/wt [current_project]
set_property parent.project_path C:/Users/peter/adder/adder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/peter/adder/ip_calculator
  c:/Users/peter/adder/ip_complement
  c:/Users/peter/mux21/74LSXX_LIB
  c:/Users/peter/adder/ip_full_adder_1_bit
  c:/Users/peter/adder/ip_full_adder_4_bit
  c:/Users/peter/mux21/XUP_LIB
} [current_project]
set_property ip_output_repo c:/Users/peter/adder/adder.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/peter/adder/adder.srcs/sources_1/new/seven_seg.v
  C:/Users/peter/adder/adder.srcs/sources_1/new/peripheral_test_ver.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/peter/adder/adder.srcs/constrs_2/new/ports.xdc
set_property used_in_implementation false [get_files C:/Users/peter/adder/adder.srcs/constrs_2/new/ports.xdc]


synth_design -top peripheral_test_ver -part xc7a35tcpg236-1


write_checkpoint -force -noxdef peripheral_test_ver.dcp

catch { report_utilization -file peripheral_test_ver_utilization_synth.rpt -pb peripheral_test_ver_utilization_synth.pb }