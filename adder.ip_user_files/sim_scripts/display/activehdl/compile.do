vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/display/hdl/display.v" \
"../../../bd/display/ipshared/080c/src/calculator.v" \
"../../../bd/display/ip/display_calculator_0_0_1/sim/display_calculator_0_0.v" \
"../../../bd/display/ipshared/5a5d/src/BCD2SEG7.v" \
"../../../bd/display/ip/display_BCD2SEG7_0_0/sim/display_BCD2SEG7_0_0.v" \
"../../../bd/display/ipshared/e147/xlconstant.v" \
"../../../bd/display/ip/display_xlconstant_0_0/sim/display_xlconstant_0_0.v" \
"../../../bd/display/ip/display_xlconstant_1_0/sim/display_xlconstant_1_0.v" \


vlog -work xil_defaultlib "glbl.v"

