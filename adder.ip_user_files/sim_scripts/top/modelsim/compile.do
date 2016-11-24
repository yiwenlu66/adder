vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xbip_utils_v3_0_7
vlib msim/c_reg_fd_v12_0_3
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_pipe_v3_0_3
vlib msim/xbip_dsp48_addsub_v3_0_3
vlib msim/xbip_addsub_v3_0_3
vlib msim/c_addsub_v12_0_10
vlib msim/c_gate_bit_v12_0_3
vlib msim/xbip_counter_v3_0_3
vlib msim/c_counter_binary_v12_0_10

vmap xil_defaultlib msim/xil_defaultlib
vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap c_reg_fd_v12_0_3 msim/c_reg_fd_v12_0_3
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_3 msim/xbip_pipe_v3_0_3
vmap xbip_dsp48_addsub_v3_0_3 msim/xbip_dsp48_addsub_v3_0_3
vmap xbip_addsub_v3_0_3 msim/xbip_addsub_v3_0_3
vmap c_addsub_v12_0_10 msim/c_addsub_v12_0_10
vmap c_gate_bit_v12_0_3 msim/c_gate_bit_v12_0_3
vmap xbip_counter_v3_0_3 msim/xbip_counter_v3_0_3
vmap c_counter_binary_v12_0_10 msim/c_counter_binary_v12_0_10

vlog -work xil_defaultlib -64 -incr \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/7bd1/xup_xor2.srcs/sources_1/new/xup_xor2.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_xor2_0_0/sim/full_adder_1_bit_xup_xor2_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/35a3/xup_nand2.srcs/sources_1/new/xup_nand2.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_0_0/sim/full_adder_1_bit_xup_nand2_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_1_0/sim/full_adder_1_bit_xup_nand2_1_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_2_0/sim/full_adder_1_bit_xup_nand2_2_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/e3e7/xup_inv.srcs/sources_1/new/xup_inv.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_inv_0_0/sim/full_adder_1_bit_xup_inv_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/fb55/xup_xnor2.srcs/sources_1/new/xup_xnor2.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_xnor2_0_0/sim/full_adder_1_bit_xup_xnor2_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/ipshared/49fc/src/full_adder_1_bit.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_0/sim/full_adder_4_bit_full_adder_1_bit_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_1/sim/full_adder_4_bit_full_adder_1_bit_0_1.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_2/sim/full_adder_4_bit_full_adder_1_bit_0_2.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/src/full_adder_4_bit_full_adder_1_bit_0_3/sim/full_adder_4_bit_full_adder_1_bit_0_3.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/ipshared/a5f8/src/full_adder_4_bit.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_full_adder_4_bit_0_0/sim/complement_full_adder_4_bit_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/ipshared/e147/xlconstant.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xlconstant_1_0/sim/complement_xlconstant_1_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_0_0/sim/complement_xup_xor2_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_1_0/sim/complement_xup_xor2_1_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_2_0/sim/complement_xup_xor2_2_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/src/complement_xup_xor2_3_0/sim/complement_xup_xor2_3_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/ipshared/360c/src/complement.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_0_0/sim/calculator_complement_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_1_0/sim/calculator_complement_1_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_complement_2_0/sim/calculator_complement_2_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_full_adder_4_bit_0_0/sim/calculator_full_adder_4_bit_0_0.v" \
"../../../bd/top/ip/top_calculator_0_0_1/src/calculator_xlconstant_0_0/sim/calculator_xlconstant_0_0.v" \
"../../../bd/top/ipshared/961e/src/calculator.v" \
"../../../bd/top/ip/top_calculator_0_0_1/sim/top_calculator_0_0.v" \
"../../../bd/top/ipshared/625c/xup_4_to_1_mux_vector.srcs/sources_1/new/xup_4_to_1_mux_vector.v" \
"../../../bd/top/ip/top_xup_4_to_1_mux_vector_0_0_1/sim/top_xup_4_to_1_mux_vector_0_0.v" \
"../../../bd/top/ipshared/2e37/xlconcat.v" \
"../../../bd/top/ip/top_xlconcat_0_0/sim/top_xlconcat_0_0.v" \
"../../../bd/top/ip/top_xlconstant_0_0/sim/top_xlconstant_0_0.v" \
"../../../bd/top/ip/top_xlconcat_1_0/sim/top_xlconcat_1_0.v" \
"../../../bd/top/ip/top_xlconcat_2_0/sim/top_xlconcat_2_0.v" \
"../../../bd/top/ip/top_xlconstant_1_1/sim/top_xlconstant_1_1.v" \
"../../../bd/top/ip/top_xlconcat_0_1/sim/top_xlconcat_0_1.v" \

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/6fc3/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_3 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_3 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_10 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_3 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/b6ab/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_3 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/de69/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_10 -64 -93 \
"../../../../adder.srcs/sources_1/bd/top/ipshared/d6cf/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/top/ip/top_c_counter_binary_0_0/sim/top_c_counter_binary_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/top/ipshared/4c27/xup_clk_divider.srcs/sources_1/new/xup_clk_divider.v" \
"../../../bd/top/ip/top_xup_clk_divider_0_0_1/sim/top_xup_clk_divider_0_0.v" \
"../../../bd/top/hdl/top.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/ipshared/c49f/xlslice.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xlslice_0_0/sim/two_four_decoder_xlslice_0_0.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xlslice_1_0/sim/two_four_decoder_xlslice_1_0.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_inv_0_0/sim/two_four_decoder_xup_inv_0_0.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_inv_1_0/sim/two_four_decoder_xup_inv_1_0.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/ipshared/778c/xup_and2.srcs/sources_1/new/xup_and2.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_0_0/sim/two_four_decoder_xup_and2_0_0.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_1_0/sim/two_four_decoder_xup_and2_1_0.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_0_1/sim/two_four_decoder_xup_and2_0_1.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/src/two_four_decoder_xup_and2_0_2/sim/two_four_decoder_xup_and2_0_2.v" \
"../../../bd/top/ipshared/0d3e/src/two_four_decoder.v" \
"../../../bd/top/ip/top_two_four_decoder_0_0/sim/top_two_four_decoder_0_0.v" \

vlog -work xil_defaultlib "glbl.v"

