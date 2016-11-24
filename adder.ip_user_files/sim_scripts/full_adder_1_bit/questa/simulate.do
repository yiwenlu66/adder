onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib full_adder_1_bit_opt

do {wave.do}

view wave
view structure
view signals

do {full_adder_1_bit.udo}

run -all

quit -force
