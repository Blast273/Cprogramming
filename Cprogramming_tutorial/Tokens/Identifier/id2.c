#include <stdio.h>

int main () {
	extern int memory_number;
	extern char *name_of_a_person;

	printf("hello %s\n", name_of_a_person);
	printf("hello %d\n", memory_number);
	return 0;

}
