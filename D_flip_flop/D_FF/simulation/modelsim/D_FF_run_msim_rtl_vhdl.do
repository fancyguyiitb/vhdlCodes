transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Sarthak Niranjan/Downloads/D_FF (1)/D_FF/JK_FF.vhd}
vcom -93 -work work {C:/Users/Sarthak Niranjan/Downloads/D_FF (1)/D_FF/Testbench.vhd}
vcom -93 -work work {C:/Users/Sarthak Niranjan/Downloads/D_FF (1)/D_FF/D_FF.vhd}


vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
