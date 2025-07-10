				What is a Bus?

A bus is a communication system that transfer data between component. in embedded 
linux or C systems. 

	Commonly Buses include : 

Bus Type					Usage					C Access example
1. I2C (This is pronounce I square C)		Sensors, EEPROMs, LCDs			/dev/i2c-X
2. SPI	(serial peripherial interface)		High-Speed ADCs, Flash, LCDs		/dev/spidevX.Y
3. UART (universal async trans/receive)		serial devices				/dev/ttyS0
4. PICe	(peripheral interface controller)	Hardware cards (WI-FI, GPU)		Linux kernel/dev
5. USB	(universal serial bus)			Mice, USB disks, Moderms		libusb


Example : RAW I2C BUS COMMUNICATION IN C

#include <linux/i2c-dev.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>

#define I2C_ADDR 0x48  // Replace with your device's address

int main() {
    int fd = open("/dev/i2c-1", O_RDWR);
    if (fd < 0) return 1;

    if (ioctl(fd, I2C_SLAVE, I2C_ADDR) < 0) return 1;

    // Write register 0x01
    unsigned char config[] = {0x01, 0x60};  // Reg 0x01, value 0x60
    write(fd, config, 2);

    // Read 2 bytes from register 0x00
    unsigned char reg = 0x00;
    write(fd, &reg, 1);
    unsigned char data[2];
    read(fd, data, 2);

    close(fd);

    // Print raw result
    printf("Raw I2C data: 0x%02X 0x%02X\n", data[0], data[1]);

    return 0;
}





Example : RAW SPI BUS COMMUNICATION IN C

#include <linux/spi/spidev.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

int main() {
    int fd = open("/dev/spidev0.0", O_RDWR);
    if (fd < 0) return 1;

    uint8_t tx[] = {0x9F};  // Example command (JEDEC ID read)
    uint8_t rx[3] = {0};

    struct spi_ioc_transfer tr = {
        .tx_buf = (unsigned long)tx,
        .rx_buf = (unsigned long)rx,
        .len = 3,
        .speed_hz = 1000000,
        .bits_per_word = 8,
    };

    ioctl(fd, SPI_IOC_MESSAGE(1), &tr);
    close(fd);

    printf("SPI Response: %02X %02X %02X\n", rx[0], rx[1], rx[2]);
    return 0;
}




EXAMPLE : RAW UART (SERIAL BUS) COMMUNICATION IN C 

#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <stdio.h>

int main() {
    int fd = open("/dev/ttyS0", O_RDWR);
    if (fd < 0) return 1;

    struct termios tty;
    tcgetattr(fd, &tty);
    cfsetospeed(&tty, B9600);
    cfsetispeed(&tty, B9600);
    tty.c_cflag |= (CLOCAL | CREAD);
    tcsetattr(fd, TCSANOW, &tty);

    const char *msg = "Hello UART\n";
    write(fd, msg, strlen(msg));

    char buf[100];
    int n = read(fd, buf, sizeof(buf));
    buf[n] = 0;
    printf("UART received: %s\n", buf);

    close(fd);
    return 0;
}




OTHER BUS TYPES 

BUS	HOW TO ACCESS IN C 

USB	Use libusb to control USB endpoints.
PCIe	kernel-level driver use /sys/bus/pci/devices/ or write kernel module.



SUMMARY

BUS	INTERFACE		RAW ACCESS API / FILE 

GPIO	Parallel		/sys/class/gpio/
I2C	Serial			/dev/i2C-X ioctl()
SPI	Serial			/dev/spidevX.Y ioctl()
UART	Serial			/dev/ttyS* read() write()
USB	Host Controller		libusb /dev/bus/usb/
PCIe	High-Speed		kernel driver /sys/






































































