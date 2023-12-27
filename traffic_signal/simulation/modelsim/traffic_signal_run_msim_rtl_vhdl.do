transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documents/College Notes/2nd Year/EE214/lab9/one_hz_clock.vhd}
vcom -93 -work work {D:/Documents/College Notes/2nd Year/EE214/lab9/traffic.vhd}

vcom -93 -work work {D:/Documents/College Notes/2nd Year/EE214/lab9/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
