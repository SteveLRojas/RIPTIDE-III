transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/RIPTIDE-III.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/VGA.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/toplevel.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/SDRAM_DP64_I.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/p_cache.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/MSC.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/d_cache.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/shift_merge.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/right_rotate.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/PC.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/mask_unit.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/internal_mem.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/hazard_unit.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/decode_unit.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/CPU {E:/RIPTIDE-III_SDRAM/CPU/ALU.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/PLL0.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/VGA_RAM.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/CHR_ROM.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/p_mem.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/PRG_ROM.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM/db {E:/RIPTIDE-III_SDRAM/db/pll0_altpll.v}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/UART.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/timer.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/serial.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/ps2_host.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/MULTIPLEXED_HEX_DRIVER.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/MC6847_gen3.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/keyboard.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/interrupt_controller.sv}

vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/CHR_ROM.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/d_cache.v}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/keyboard.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/MC6847_gen3.sv}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/MSC.v}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/MULTIPLEXED_HEX_DRIVER.sv}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/p_cache.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/p_mem.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/PLL0.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/testbench.v}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/serial.sv}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/SDRAM_DP64_I.v}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/sdr_parameters.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/sdr.sv}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/ps2_host.sv}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/PRG_ROM.v}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/timer.sv}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/toplevel.v}
vlog -sv -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/UART.sv}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/VGA.v}
vlog -vlog01compat -work work +incdir+E:/RIPTIDE-III_SDRAM {E:/RIPTIDE-III_SDRAM/VGA_RAM.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run 1 ms