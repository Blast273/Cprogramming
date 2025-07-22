#include <stdio.h>

int main() {
	char *name_of_a_person = "kenneth";
	char *ken123 = "moses";
	char *_ken = "james";
	char *_Ken123 = "john peter";
	/*char *auto = "happy";*/
	char *include = "jammy";
	/*char *__FILE__ = "BRAKE";*/

	printf("hello %s\n", ken123);
	printf("hello %s\n", _ken);
	printf("hello %s\n", _Ken123);
	printf("hello %s\n", name_of_a_person);
	/*printf("hello %s\n", auto);*/
	printf("hello %s\n", include);
	printf("file %s\n", __FILE__);
	printf("line %d\n", __LINE__);
	return 0;
}


