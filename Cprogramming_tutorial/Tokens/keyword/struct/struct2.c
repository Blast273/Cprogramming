#include <stdio.h>

struct Node {
	int age;
	int adult;
};

int main () {

	struct Node node;
	struct Node node1;

	node.age = 20;
	node1.adult =30;
	
	printf("node.age = %d\n", node.age);
	printf("node1.adult = %d\n", node1.adult);

	return 0;

}
