#include <stdio.h>

struct Node {
	int teenager_age;
  	int adult_age; 
} Head;

int main() {



	Head.teenager_age = 10;
	Head.adult_age = 18;

	printf("Head.teenager_age = %d\n", Head.teenager_age);
	printf("Head.adult_age = %d\n", Head.adult_age);

	return 0; 

}
