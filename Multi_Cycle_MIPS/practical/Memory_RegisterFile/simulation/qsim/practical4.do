onerror {exit -code 1}
vlib work
vlog -work work practical4.vo
vlog -work work RegisterFileTest.vwf.vt
vsim -novopt -c -t 1ps -L arriaii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RegisterFile_vlg_vec_tst -voptargs="+acc"
vcd file -direction practical4.msim.vcd
vcd add -internal RegisterFile_vlg_vec_tst/*
vcd add -internal RegisterFile_vlg_vec_tst/i1/*
run -all
quit -f
