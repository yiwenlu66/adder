onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib calculator_opt

do {wave.do}

view wave
view structure
view signals

do {calculator.udo}

run -all

quit -force
