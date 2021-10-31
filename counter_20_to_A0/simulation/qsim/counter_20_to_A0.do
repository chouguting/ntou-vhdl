onerror {exit -code 1}
vlib work
vlog -work work counter_20_to_A0.vo
vlog -work work counter_20_to_A0_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.counter_20_to_A0_vlg_vec_tst -voptargs="+acc"
vcd file -direction counter_20_to_A0.msim.vcd
vcd add -internal counter_20_to_A0_vlg_vec_tst/*
vcd add -internal counter_20_to_A0_vlg_vec_tst/i1/*
run -all
quit -f
