onerror {exit -code 1}
vlib work
vlog -work work generate_demux_1to8.vo
vlog -work work generate_demux_1to8_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.generate_demux_1to8_vlg_vec_tst -voptargs="+acc"
vcd file -direction generate_demux_1to8.msim.vcd
vcd add -internal generate_demux_1to8_vlg_vec_tst/*
vcd add -internal generate_demux_1to8_vlg_vec_tst/i1/*
run -all
quit -f
