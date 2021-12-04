onerror {exit -code 1}
vlib work
vlog -work work breathing_light_5sec_x5_diff_brightness.vo
vlog -work work breathing_light_5sec_x5_diff_brightness_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.breathing_light_5sec_x5_diff_brightness_vlg_vec_tst -voptargs="+acc"
vcd file -direction breathing_light_5sec_x5_diff_brightness.msim.vcd
vcd add -internal breathing_light_5sec_x5_diff_brightness_vlg_vec_tst/*
vcd add -internal breathing_light_5sec_x5_diff_brightness_vlg_vec_tst/i1/*
run -all
quit -f
