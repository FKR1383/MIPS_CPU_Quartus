onerror {exit -code 1}
vlib work
vlog -work work Practical3.vo
vlog -work work Test1.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Practical3_vlg_vec_tst -voptargs="+acc"
vcd file -direction Practical3.msim.vcd
vcd add -internal Practical3_vlg_vec_tst/*
vcd add -internal Practical3_vlg_vec_tst/i1/*
run -all
quit -f
