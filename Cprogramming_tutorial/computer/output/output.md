				OUTPUT UNIT		


	RAW OUTPUT UNIT EXPLANATION

The term raw output unit refer to sending data in it's low-level or unprocessed (raw) form
directly to an output device like a screen, speaker, printer, or port without formatting
or interpretation by high-level functions.

Examples of Raw Output Unit and Their Use in C

Device 			Raw Output Method			Description
Monitor (Terminal) 	write() system call			sends raw bytes directly to stdout (standard output) 
Printer			Raw bytes stream (/dev/usb/lp0)		Send unformatted bytes
Speaker			Write to /dev/dsp or use ALSA for PCM	Send raw audio samples 
GPIO (LEDs, etc)	Write to /sys/class/gpio/gpioX/value	Send high/low (1/0) data
Serial port		write to /dev/ttyS0 or /dev/ttyUSB0	Send raw serial bytes to external devices


EXAMPLE 1. RAW OUTPUT TO TERMINAL USING

write() 

#include <unistd.h>

int main() {
    const char *msg = "Raw output to stdout\n";
    write(1, msg, 21);  // 1 = STDOUT file descriptor
    return 0;
}




EXAMPLE 2. RAW OUTPUT TO PRINTER (via /dev/usb/lp0 or /dev/lp0)

This works if you have a printer connected via USB or parallel port in linux

#include <fcntl.h>
#include <unistd.h>

int main() {
    int fd = open("/dev/usb/lp0", O_WRONLY);
    if (fd < 0) {
        perror("Printer not found");
        return 1;
    }

    const char *raw_data = "Raw printer test page\n";
    write(fd, raw_data, 22);

    close(fd);
    return 0;
}


NOTE : You need sudo privillages to access this devices 

EXAMPLE 3. RAW OUTPUT TO SPEAKER 

#include <alsa/asoundlib.h>

int main() {
    snd_pcm_t *pcm;
    snd_pcm_open(&pcm, "default", SND_PCM_STREAM_PLAYBACK, 0);
    snd_pcm_set_params(pcm, SND_PCM_FORMAT_U8,
                       SND_PCM_ACCESS_RW_INTERLEAVED, 1,
                       44100, 1, 500000);

    // Generate a 440Hz tone
    unsigned char buffer[44100];
    for (int i = 0; i < 44100; i++)
        buffer[i] = 127 + 127 * sin(2 * M_PI * 440 * i / 44100);

    snd_pcm_writei(pcm, buffer, 44100);
    snd_pcm_drain(pcm);
    snd_pcm_close(pcm);
    return 0;
}



EXAMPLE 4. RAW OUTPUT TO GPIO 

#include <stdio.h>

int main() {
    FILE *gpio = fopen("/sys/class/gpio/gpio17/value", "w");
    if (gpio) {
        fputs("1", gpio);  // Send raw "1" to turn on pin
        fclose(gpio);
    
	}
   return 0;
}


EXAMPLE 5. RAW OUTPUT TO SERIAL PORT

#include <fcntl.h>
#include <unistd.h>

int main() {
    int fd = open("/dev/ttyUSB0", O_WRONLY);
    write(fd, "RAW_UART", 8);
    close(fd);
    return 0;
}










 
   
