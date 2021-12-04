transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/choug/fpgaProjects/ntou-vhdl/breathing_light_5sec_x5_diff_brightness/breathing_light_5sec_1secStop.vhd}
vcom -93 -work work {C:/Users/choug/fpgaProjects/ntou-vhdl/breathing_light_5sec_x5_diff_brightness/breathing_light_5sec_x5_diff_brightness.vhd}

vcom -93 -work work {C:/Users/choug/fpgaProjects/ntou-vhdl/breathing_light_5sec_x5_diff_brightness/tb_light.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_light

add wave *
view structure
view signals
run -all
