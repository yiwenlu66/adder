onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib complement_opt

do {wave.do}

view wave
view structure
view signals

do {complement.udo}

run -all

quit -force
