onerror {exit -code 1}
vlib work
vlog -work work adder_subtractor_arithmetic.vo
vlog -work work adder_subtractor_arithmetic_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.adder_subtractor_arithmetic_vlg_vec_tst -voptargs="+acc"
vcd file -direction adder_subtractor_arithmetic.msim.vcd
vcd add -internal adder_subtractor_arithmetic_vlg_vec_tst/*
vcd add -internal adder_subtractor_arithmetic_vlg_vec_tst/i1/*
run -all
quit -f
