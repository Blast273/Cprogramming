#include <stdio.h>

void function() {
	auto int age = 25; /* lifetime : begins at entry of function() {, and end at return or } */
	printf("age : %d\n", age);
}
 
int main() {

	/* lifetime : is how long a variable exist in memory
	 * the variable is created when the block/function is entered,
	 * and destroyed when the block exited*/
	
	function();


	return 0;


}
