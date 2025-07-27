#include <stdio.h> 

struct Node {

	int teenager_age;
	int adult_age;
};


int main() {

	struct Node node;
	node.teenager_age = 11;
	node.adult_age =19;

	printf("node.teenager_age = %d\n", node.teenager_age);
	printf("node.adult_age = %d\n", node.adult_age);

	return 0;

}
