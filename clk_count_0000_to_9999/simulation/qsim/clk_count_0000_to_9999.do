onerror {exit -code 1}
vlib work
vlog -work work clk_count_0000_to_9999.vo
vlog -work work clk_count_0000_to_9999_wave1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.clk_count_0000_to_9999_vlg_vec_tst -voptargs="+acc"
vcd file -direction clk_count_0000_to_9999.msim.vcd
vcd add -internal clk_count_0000_to_9999_vlg_vec_tst/*
vcd add -internal clk_count_0000_to_9999_vlg_vec_tst/i1/*
run -all
quit -f
