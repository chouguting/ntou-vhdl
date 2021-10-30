onerror {exit -code 1}
vlib work
vlog -work work div_20.vo
vlog -work work div_20_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.div_20_vlg_vec_tst -voptargs="+acc"
vcd file -direction div_20.msim.vcd
vcd add -internal div_20_vlg_vec_tst/*
vcd add -internal div_20_vlg_vec_tst/i1/*
run -all
quit -f
