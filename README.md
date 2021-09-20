# RIPTIDE-III
RIPTIDE-III CPU and platform based on 8X-RIPTIDE.  

The RIPTIDE-III processor is the third and last CPU in the RIPTIDE family. It has a considerably higher IPC than the RIPTIDE-II as well as a higher Fmax.  
In addition to the performance improvements the RIPTIDE-III has new features including 13 general purpose registers, readable address registers, and support for interrupts.  
Two 4KB direct mapped cache controllers are included with the platform, as well as an SDRAM controller that is especially designed to interface with the cache controllers.  
The SDRAM controller has a dedicated port for initializing the main memory from any kind of ROM during system startup, which eliminates the need to map a ROM to the program memory space.  
While the program and data spaces remain separate, it is possible to access and modify program memory by using the MSC (Memory Subsystem Control) module to synchronize the caches, as they both share the main memory. Data is byte addressable and is accessed in 64KB pages, while program memory is word addressable, and accessed in 128KB pages.  
Registers in the MSC can be used to set the program and data page offsets, and if desired the two pages can be set to overlap.  
The test platform also includes an RS-232 controller, a VGA controller based on the MC6847, a timer module, a PS/2 module, and an interrupt controller with 8 inputs.  

# Instruction Set and Assembler
The RIPTIDE-II processor has the same instruction set and encoding as the 8X-RIPTIDE processor, so the 8X-RIPTIDE assembler can be used to generate code for it.  
This CPU is not software compatible with previous riptide processors, as the OVF register cannot be rotated, and NZT and XEC instructions cannot use the IV bus as a source register.  
These changes were made to increase the IPC by reducing the frequency of pipeline stall cycles and allowing branch instructions to be resolved earlier.  
In addition to the architectural changes listed above, the bit-naming convention was changed from 0:7 to 7:0. This was done to avoid confusion, as 7:0 is far more common.  

# Sample Programs
A simple snake game is provided as an example. The code makes use of the PS/2, VGA, and interrupt controllers.  
