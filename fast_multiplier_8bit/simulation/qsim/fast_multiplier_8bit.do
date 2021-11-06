onerror {exit -code 1}
vlib work
vlog -work work fast_multiplier_8bit.vo
vlog -work work fast_multiplier_8bit_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fast_multiplier_8bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction fast_multiplier_8bit.msim.vcd
vcd add -internal fast_multiplier_8bit_vlg_vec_tst/*
vcd add -internal fast_multiplier_8bit_vlg_vec_tst/i1/*
run -all
quit -f