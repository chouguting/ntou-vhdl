transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/choug/fpgaProjects/ntou-vhdl/breathing_light_5sec/breathing_light_5sec.vhd}

vcom -93 -work work {C:/Users/choug/fpgaProjects/ntou-vhdl/breathing_light_5sec/tb_light.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_light

add wave *
view structure
view signals
run -all
