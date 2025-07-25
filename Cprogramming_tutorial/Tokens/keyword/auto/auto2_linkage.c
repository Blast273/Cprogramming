#include <stdio.h>

void used_auto() {
	printf("age: %d\n", age); /*not visible to used_auto function */
}

int main () {
	auto int age = 100; /* linkage visible to main function */

	printf("age: %d\n", age); /* linkage visible to printf */

	
	used_auto(); /* function visible to main but age invisible to used_auto */ 
	return 0;

}
