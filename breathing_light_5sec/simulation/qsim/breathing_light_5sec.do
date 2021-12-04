onerror {exit -code 1}
vlib work
vlog -work work breathing_light_5sec.vo
vlog -work work breathing_light_5sec_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.breathing_light_5sec_vlg_vec_tst -voptargs="+acc"
vcd file -direction breathing_light_5sec.msim.vcd
vcd add -internal breathing_light_5sec_vlg_vec_tst/*
vcd add -internal breathing_light_5sec_vlg_vec_tst/i1/*
run -all
quit -f
