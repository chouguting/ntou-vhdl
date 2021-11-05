onerror {exit -code 1}
vlib work
vlog -work work generic_shift_register_8bit_ex.vo
vlog -work work generic_shift_register_8bit_ex_wave.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.generic_shift_register_8bit_ex_vlg_vec_tst -voptargs="+acc"
vcd file -direction generic_shift_register_8bit_ex.msim.vcd
vcd add -internal generic_shift_register_8bit_ex_vlg_vec_tst/*
vcd add -internal generic_shift_register_8bit_ex_vlg_vec_tst/i1/*
run -all
quit -f
