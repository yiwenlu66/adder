vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/7bd1/xup_xor2.srcs/sources_1/new/xup_xor2.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_xor2_0_0/sim/full_adder_1_bit_xup_xor2_0_0.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/35a3/xup_nand2.srcs/sources_1/new/xup_nand2.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_0_0/sim/full_adder_1_bit_xup_nand2_0_0.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_1_0/sim/full_adder_1_bit_xup_nand2_1_0.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_nand2_2_0/sim/full_adder_1_bit_xup_nand2_2_0.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/e3e7/xup_inv.srcs/sources_1/new/xup_inv.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_inv_0_0/sim/full_adder_1_bit_xup_inv_0_0.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/ipshared/fb55/xup_xnor2.srcs/sources_1/new/xup_xnor2.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/src/full_adder_1_bit_xup_xnor2_0_0/sim/full_adder_1_bit_xup_xnor2_0_0.v" \
"../../../bd/full_adder_4_bit/ipshared/49fc/src/full_adder_1_bit.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_0/sim/full_adder_4_bit_full_adder_1_bit_0_0.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_1/sim/full_adder_4_bit_full_adder_1_bit_0_1.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_2/sim/full_adder_4_bit_full_adder_1_bit_0_2.v" \
"../../../bd/full_adder_4_bit/ip/full_adder_4_bit_full_adder_1_bit_0_3/sim/full_adder_4_bit_full_adder_1_bit_0_3.v" \
"../../../bd/full_adder_4_bit/hdl/full_adder_4_bit.v" \


vlog -work xil_defaultlib "glbl.v"

