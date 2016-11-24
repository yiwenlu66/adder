onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+peripheral_test -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.peripheral_test xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {peripheral_test.udo}

run -all

endsim

quit -force
