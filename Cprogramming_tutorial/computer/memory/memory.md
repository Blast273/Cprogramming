				RAW MEMORY ACCESS

Accessing memory directly in C, outside of regular variable usage means reading or writing 
to specific physical or visual memory address.

This is common in :

1. Embedded system

2. OS/kernel development

3. Device drivers 

4. Memory-mapped I/O (MMIO)


Types Of Direct Memory Access In C :

SCENARIO			 	ACCESS METHOD 			PRIVILAGE REQUIRED		EXAMPLE PLATFORM

Access a memory address in RAM 		pointer casting			user or kernel			any

Access I/O device registers		MMIO via /dev/mem or mmap()	root				embedded linux

Access physical memory			/dev/mem + mmap()		root				linux pc

Access kernel memory			ioremap() or memremap()		kernel				linux kernel module

Access external memory (bare-metal)	direct pointer			supervisor			ARM, AVR



1. ACCESS VISUAL MEMORY VIA POINTER CAST (USER-SPACE OR KERNEL)

#include <stdio.h>

int main() {
    unsigned int *ptr = (unsigned int *)0xdeadbeef; // virtual address (example)

    printf("Value at 0xdeadbeef: 0x%x\n", *ptr); // Unsafe: can segfault
    return 0;
}


NOT SAVE UNLESS THE MEMORY IS MAPPED AND ACCESSIBLE


2. READ/WRITE PHYSICAL MEMORY VIA /dev/mem (LINUX, ROOT ONLY)

#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdint.h>

#define PHYS_ADDR  0x3F200000  // example: Raspberry Pi GPIO base
#define MAP_SIZE   4096

int main() {
    int mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd < 0) {
        perror("open");
        return 1;
    }

    void *mapped = mmap(NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, PHYS_ADDR);
    if (mapped == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    volatile uint32_t *reg = (uint32_t *)mapped;
    printf("Value at 0x%x: 0x%x\n", PHYS_ADDR, *reg);

    // Write (optional)
    // *reg = 0x12345678;

    munmap((void *)mapped, MAP_SIZE);
    close(mem_fd);
    return 0;
}


REQUIRES ROOT AND /dev/mem access, dangerous if misused


3. BARE-META OR EMBEDDED C (eg, ARM Cortex-M)

#define LED_REG   (*(volatile unsigned int *)0x40021018)

int main(void) {
    LED_REG = 0x1;  // Turn on LED by writing to hardware register
    while (1);
}


NO OPERATING SYSTEM HERE, Direct access to hardware registers via fixed addresses


4. LINUX KERNEL MODULE (access physical memory)

#include <linux/module.h>
#include <linux/init.h>
#include <linux/io.h>

#define PHYS_ADDR 0x3F200000
#define MAP_SIZE  4096

static void __iomem *mapped;

static int __init memmap_init(void) {
    mapped = ioremap(PHYS_ADDR, MAP_SIZE);
    if (!mapped) {
        pr_err("ioremap failed\n");
        return -ENOMEM;
    }

    pr_info("Mapped value: 0x%x\n", ioread32(mapped));
    return 0;
}

static void __exit memmap_exit(void) {
    iounmap(mapped);
}

module_init(memmap_init);
module_exit(memmap_exit);
MODULE_LICENSE("GPL");


			

USED IN LINUX KERNEL MODULE TO ACCESS PHYSICAL MEMORY SAFELY



IMPORTANT WARMING 

1. Don't access arbituary memory in user-space unless you are certain its mapped

2. use volatile when accessing hardware register to prevent compiler optimizations 

3. memory-mapped I/O can damage hardware if misused

4. LInux may restrict /dev/mem after kernel 4.x (only certain ranges allowed)


SUMMARY : 

USE CASE 			TOOLS/TECHNIQUE			PRIVILAGE

Saved access to RAM address	pointer cast			user

Physical memory read/write	/dev/mem + mmap()		root

Embedded device registers	direct pointers			supervisor or root

kernel-space memory access	ioremap() / iounmap()		kernel


 
