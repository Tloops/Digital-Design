onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib four_sixteen_opt

do {wave.do}

view wave
view structure
view signals

do {four_sixteen.udo}

run -all

quit -force
