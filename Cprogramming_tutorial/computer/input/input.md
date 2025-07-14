				RAW INPUT COMMUNICATION


To read raw input directly from hardware in C, you typically need to : 

1. know the hardware you are talking to (keyboard, mouse, serial, etc)

2. know the I/O ports or memory-mapping registers it uses 

3. have permission (kernel mode or embedded/bare-meta environment)



COMPLETE LIST : Direct Raw Input Devices In C 

Here is a table listing common devices, how you can read raw input from them in C, and 
whether you need kernel mode or not. 


INPUT DEVICE		INTERFACE TYPE		ACCESS METHOD 			I/O PORT / DEVICE FILES		PRIVILAGE REQUIRED

PS/2 Keyboard		I/O port (x86)		inb(0x60)			Port 0x60 (data), 0x64		kernel mode

USB keyboard		USB HID			USB stack (UHCI/EHCI/XHCI)	/dev/input/event* 		kernel or root
						or /dev/input/	

MOUSE (PS/2)		I/O port		inb(0x60)			port 0x60, /dev/input/mice	kernel or root

USB Mouse		USB HID			USB Host controller driver	/dev/input/mice			root

SERIAL Input(eg,	UART			read() or direct port		/dev/ttyS*, or inb() if kernel	root or kernel 
barcode scanner)

Game Controller(USB)	USB HID			/dev/input/js* or HID 		/dev/input/js0, /dev/hidraw*	root or libevdev

touch screen		I2C/SPI or USB		/dev/input/event*		/dev/input/event*, /dev/i2c-*	root

IR remote		GPIO, LIRC		/dev/lirc* or read()		/dev/lirc0			root

GPIO button (on SBC)	memory-mapped I/O	mmap() or /sys/class/gpio	GPIO address			root

CAMERA button /		I2C/SPI			/dev/i2c-* + sensor address	/dev/i2c-*			root	
Accelerometer

Custom input hardware 	custom (I2C/SPI/UART)	read(), mmap(), or inb()	depends on bus			root or kernel




EXAMPLE: PS/2 KEYBOARD INPUT (X86) PC
Only works in kernel mode: 


#include <asm/io.h>  // inb(), outb()
#define KBD_DATA 0x60

	unsigned char read_key() {
    	return inb(KBD_DATA);
}


EXAMPLE : SERIAL INPUT DEVICE (dev/ttyS0)

#include <fcntl.h>
#include <termios.h>
#include <unistd.h>

int fd = open("/dev/ttyS0", O_RDONLY | O_NOCTTY);
char c;
read(fd, &c, 1);


EXAMPLE : READ RAW EVENT FROM /dev/input/event*

#include <linux/input.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

int main() {
    struct input_event ev;
    int fd = open("/dev/input/event3", O_RDONLY);  // Adjust as needed

    while (read(fd, &ev, sizeof(ev))) {
        if (ev.type == EV_KEY)
            printf("Key: %d, value: %d\n", ev.code, ev.value);
    }
    close(fd);
    return 0;
}



How To Find Your Devices 

1. 	keyboard : 	ls -l /dev/input/by-id/ | grep kbd

2. 	Mouse 	 : 	ls -l /dev/input/by-id/ | grep mouse

3. 	Serial   :	dmesg | grep tty

4.	GPIO	 : 	/sys/class/gpio or /dev/gpiochip*

5. 	touchscreen/joystick: 	evtest, lsinput


NOTE : 

1. user-space programs can't use inb() or outb() only kernel code can.

2. use ioperm() or iopl() (x86) in DOS or embedded linux for direct port access (not recommended for modern system)

3. always run as root for /dev/input, /dev/ttyS*, /dev/i2c-*
