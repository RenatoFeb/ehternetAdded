onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xpm -L fifo_generator_v13_2_10 -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_13 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.eth xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {eth.udo}

run 1000ns

quit -force
