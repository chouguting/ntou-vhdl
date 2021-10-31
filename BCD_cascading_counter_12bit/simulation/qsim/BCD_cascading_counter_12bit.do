onerror {exit -code 1}
vlib work
vlog -work work BCD_cascading_counter_12bit.vo
vlog -work work BCD_cascading_counter_12bit.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BCD_cascading_counter_12bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction BCD_cascading_counter_12bit.msim.vcd
vcd add -internal BCD_cascading_counter_12bit_vlg_vec_tst/*
vcd add -internal BCD_cascading_counter_12bit_vlg_vec_tst/i1/*
run -all
quit -f
