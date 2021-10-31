onerror {exit -code 1}
vlib work
vlog -work work bcd_counter_100_to_499.vo
vlog -work work bcd_counter_100_to_499_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bcd_counter_100_to_499_vlg_vec_tst -voptargs="+acc"
vcd file -direction bcd_counter_100_to_499.msim.vcd
vcd add -internal bcd_counter_100_to_499_vlg_vec_tst/*
vcd add -internal bcd_counter_100_to_499_vlg_vec_tst/i1/*
run -all
quit -f
