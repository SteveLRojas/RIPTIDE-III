transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/shift_merge.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/RIPTIDE-III.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/right_rotate.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/PC.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/mask_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/internal_mem.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/hazard_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/decode_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/VGA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/toplevel.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/p_cache.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/MSC.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/d_cache.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/PLL0.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/p_mem.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/PRG_ROM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/VGA_RAM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CHR_ROM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/db {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/db/pll0_altpll.v}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/button_debounce.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/UART.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/timer.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/serial.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/SDRAM_SP8_B8_I.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/queue_8_8.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/ps2_host.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/MC6847_gen3.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/keyboard.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/interrupt_controller.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/I2C_phy.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/memory_arbiter.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/I2C_ri.sv}

vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CHR_ROM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/d_cache.v}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/I2C_phy.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/I2C_ri.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/interrupt_controller.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/keyboard.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/MC6847_gen3.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/memory_arbiter.sv}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/MSC.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/p_cache.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/p_mem.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/PLL0.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/PRG_ROM.v}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/ps2_host.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/queue_8_8.sv}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/VGA_RAM.v}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/sdr.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/sdr_parameters.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/SDRAM_SP8_B8_I.sv}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/serial.sv}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/testbench.v}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/timer.sv}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/toplevel.v}
vlog -sv -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/UART.sv}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10 {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/VGA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/decode_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/hazard_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/internal_mem.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/mask_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/PC.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/right_rotate.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/RIPTIDE-III.v}
vlog -vlog01compat -work work +incdir+C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU {C:/Users/Steve/Workspace/RIPTIDE-III_DragonBoard_V10/CPU/shift_merge.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 100 us
