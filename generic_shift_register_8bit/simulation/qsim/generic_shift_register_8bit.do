onerror {exit -code 1}
vlib work
vlog -work work generic_shift_register_8bit.vo
vlog -work work generic_shift_register_8bit_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.generic_shift_register_8bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction generic_shift_register_8bit.msim.vcd
vcd add -internal generic_shift_register_8bit_vlg_vec_tst/*
vcd add -internal generic_shift_register_8bit_vlg_vec_tst/i1/*
run -all
quit -f
