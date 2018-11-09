onerror {quit -f}
vlib work
vlog -work work projeto3sd.vo
vlog -work work projeto3sd.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.projeto3sd_vlg_vec_tst
vcd file -direction projeto3sd.msim.vcd
vcd add -internal projeto3sd_vlg_vec_tst/*
vcd add -internal projeto3sd_vlg_vec_tst/i1/*
add wave /*
run -all
