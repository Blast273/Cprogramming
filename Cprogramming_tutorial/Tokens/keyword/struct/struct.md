Understanding struct in terms of scope, linkage and lifetime


1. scope
 scope refers to where the struct or structs variable can be accessed from in the program.

struct Node {
	int age;
};


1.1 if defined outside any function (global), the type is visible throughout the file (and 
    other files if extern is used).

1.2  if defined inside a function, the type name is local to that function.


Struct Variable Scope


struct Node global_node; /* global scope */

void pen() {
	struct Node local_node; /* local scope */
}


Location			Scope
outside any function		global
inside a function		local to that function




2. Linkage 
 linkage refers to whether a name can be referred to from other source files 

Struct Type

/* type definitions (struct itself) have no linkage. */

struct Node {
	int age;
};


2.1 The type name Node has no linkage, you must redeclare it in each file that need it.

Struct Variales 

/* file1.c */
struct Node node; /* external linkage by default */


/* file2.c */
extern struct Node node; /* refers to same variable */


Storage_Class 		Linkage 		
extern 			external 
static (global)		internal
local variable		no linkage



3. Lifetime
 Lifetime refers to how long the struct variable exist in memory during program execution.



Location 		Lifetime
global 			entire program
static local		entire program
local (non static)	unit function ends


Example: 


struct Node {
	int age;
};


void pen() {
	struct Node node; /* automatic storage (stack), lifetime = during pen() */
	static struct Node node; /* static storage (data segment), lifetime = whole program */
}



SUMMARY TABLE 


Property	Struct Type		Struct Variable (global)	Struct Variable (local)		Static Struct Variable
scope		file/function-level	file-wide (or global)		local to block/function		local to block/function
linkage		none 		      external (or internal if static)	    none 			internal
lifetime	N/A			entire program			unit function/block ends	entire program



  		
 
