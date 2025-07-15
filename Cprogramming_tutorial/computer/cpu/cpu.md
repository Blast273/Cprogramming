				RAW CPU ACCESS IN C

Accessing the cpu directly in C depends heavily on your target architecture, operating system,
and privilage level (user-space or kernel-space).

Here is a break-down of Raw cpu access in C, focusing on X86/X86_x64 Under linux


1. Accessing CPU registers (x86/x86_64) in C

	In User-Space : 

	You can not directly modify most cpu registers from User-Space, but you can read
	certain ones (like Time Stamp Counter) using inline assembly.


	Example : Read TSC (TIME STAMP COUNTER)
		
		#include <stdio.h>
		#include <stdint.h>

		uint64_t read_tsc() {
			unsigned int hi,lo;
			__asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));
			return ((uint64_t)hi << 32) | lo; 
		}

		int main() {
			uint64_t tsc = read_tsc();
			printf("TSC: %lu",tsc);
			return 0;

		}



2. ACCESSING CONTROL REGISTERS (CRO-CR4) OR MSRs 

	You need kernel mode or kernel module 

	Kernel Module Example : Read CRO

	#include <linux/module.h>
	#include <linux/kernel.h>
	#include <asm/processor.h>	/* for read_cr0() */

	static int __init cr0_init(void) {
		unsigned long cr0 = read_cr0();
		printk(KERN_INFO "CR0 = 0x%1x", cr0);
		return 0;
	}

	static void __exit cr0_exit(void) {
		printk(KERN_INFO "CR0 module unloaded");
	}

	module_init(cr0_init);
	module_exit(cr0_exit);
	
	MODULE_LICENSE("GPL");

	Compile with a Makefile and load using insmod



3. CPUID Instruction (CPU Identification)

	#include <stdio.h>
	
	void cpuid(int code, unsigned int* a, unsigned int* d) {
		__asm__ volatile("cpuid" : "=a"(*a), "=d"(*d) : "a"(code) : "ecx", "ebx");
	}

	int main() {
		unsigned int a, d;
		cpuid(0, &a, &d)
		printf("EAX: 0x%x EDX: 0x%x", a, d);
		return 0;
	}


4. ACCESSING CPU SPECIFIC FEATURES 

EXAMPLE : 

1. MSRs (model specific registers)	accessible via /dev/cpu/*/msr or kernel module

2. Hardware performance counterS	perf or via rdpmc (needs privilage mode)

3. Cache/timer/interrupt control	kernel-space only
					



5. TOOLS/RESOURCES YOU MIGHT USE

1. rdtsc, cpuid, rdpmc		via inline assembly

2. /devcpu/*/msr		access MSRs from users-space with msr-tools

3. perf_event_open		system call for cpu counter

4. kernel module for low-level access

5. Intel manual (for x86) intel SDM VOLUME 3



6. SAFETY AND PERMISSION

1. RAW CPU Access is dangerous and restricted 

2. Many features requires root or ring 0/kernel access 

3. Use with caution incorrect usage can crash your system.

 



















































		 
