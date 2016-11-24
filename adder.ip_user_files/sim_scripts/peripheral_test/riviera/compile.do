vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/peripheral_test/ipshared/5a5d/src/BCD2SEG7.v" \
"../../../bd/peripheral_test/ip/peripheral_test_BCD2SEG7_0_0/sim/peripheral_test_BCD2SEG7_0_0.v" \
"../../../bd/peripheral_test/ipshared/e147/xlconstant.v" \
"../../../bd/peripheral_test/ip/peripheral_test_xlconstant_0_0/sim/peripheral_test_xlconstant_0_0.v" \
"../../../bd/peripheral_test/ip/peripheral_test_xlconstant_1_0/sim/peripheral_test_xlconstant_1_0.v" \
"../../../bd/peripheral_test/hdl/peripheral_test.v" \


vlog -work xil_defaultlib "glbl.v"

