#include <stdio.h>
/*auto int peace = 10; scope of auto, global variable can't be accessed*/

int add() {
	auto int peace = 10; /* scope of auto, local to function*/
	return peace;
}
 
int main () {
	auto int age = 80; /* scope of auto, local to function*/
	printf("age : %d\n", age);
	printf("peace : %d\n", add());

	void sub() {
		auto int x = 50; /* local to sub only */
		if (x > 10) {
			auto int y = 20; /* local to this if block only */
			printf("y: %d\n", y);
			printf("x: %d\n", x); /* x is local to both sub and if block */
		}
		/* y is not accessible here but only x */
		printf("x: %d\n", x);
		/*printf("y: %d\n", y); y is only local to if block not to sub block*/
	}

	sub();

	return 0;
}
