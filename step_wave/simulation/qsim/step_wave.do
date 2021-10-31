onerror {exit -code 1}
vlib work
vlog -work work step_wave.vo
vlog -work work step_wave_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.step_wave_vlg_vec_tst -voptargs="+acc"
vcd file -direction step_wave.msim.vcd
vcd add -internal step_wave_vlg_vec_tst/*
vcd add -internal step_wave_vlg_vec_tst/i1/*
run -all
quit -f
