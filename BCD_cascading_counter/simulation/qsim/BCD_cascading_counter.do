onerror {exit -code 1}
vlib work
vlog -work work BCD_cascading_counter.vo
vlog -work work BCD_cascading_counter_0_to_99_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BCD_cascading_counting_0_to_99_vlg_vec_tst -voptargs="+acc"
vcd file -direction BCD_cascading_counter.msim.vcd
vcd add -internal BCD_cascading_counting_0_to_99_vlg_vec_tst/*
vcd add -internal BCD_cascading_counting_0_to_99_vlg_vec_tst/i1/*
run -all
quit -f
