transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Siriy/Desktop/Projects/VGA {C:/Users/Siriy/Desktop/Projects/VGA/VGA_TOP2.v}
vlog -vlog01compat -work work +incdir+C:/Users/Siriy/Desktop/Projects/VGA {C:/Users/Siriy/Desktop/Projects/VGA/VGA_TOP.v}
vlog -vlog01compat -work work +incdir+C:/Users/Siriy/Desktop/Projects/VGA {C:/Users/Siriy/Desktop/Projects/VGA/Chars.v}
vlog -vlog01compat -work work +incdir+C:/Users/Siriy/Desktop/Projects/VGA {C:/Users/Siriy/Desktop/Projects/VGA/VGA.v}

vlog -vlog01compat -work work +incdir+C:/Users/Siriy/Desktop/Projects/VGA/simulation/modelsim {C:/Users/Siriy/Desktop/Projects/VGA/simulation/modelsim/vga_TOP.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  vga_TOP_vlg_tst

add wave *
view structure
view signals
run -all
