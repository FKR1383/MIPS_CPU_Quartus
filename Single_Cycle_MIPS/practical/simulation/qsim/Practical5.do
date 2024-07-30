onerror {exit -code 1}
vlib work
vlog -work work Practical5.vo
vlog -work work CPU_Test2.vwf.vt
vsim -novopt -c -t 1ps -L arriaii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MIPS_CPU_vlg_vec_tst -voptargs="+acc"
vcd file -direction Practical5.msim.vcd
vcd add -internal MIPS_CPU_vlg_vec_tst/*
vcd add -internal MIPS_CPU_vlg_vec_tst/i1/*
run -all
quit -f
