#include <stdio.h>

int main () { 

	/* Creating variables using auto 
	 * achiving both internal linkage 
	 * and external linkage  
	 *  
	 * prototype of internal linkage declaration 
	 * internal-linkage  type  identifier terminate 
	 *    static          int    age         ;
	 * 
	 * prototype of internal linkage definition
	 * internal-linkage  type   identifier  assignment  constant  terminate
	 *     static         int     age          =          25         ;
	 * 
	 * prototype of external linkage definition;(no declaration in external linkage)
	 * external-linkage   type   identifier    terminate
	 *     extern	      int       age           ; 

	/* auto keyword allocate memory 
	 * space size of the type. 
	 *  auto create local and global variables
	 */
	
	/* A variables are memory address space 
	 * variables have the following prototype 
	 * which is declaration and  definition 
	 * declaration : auto int age;
	 * definition : auto int age = 25;
	 * 
	 * prototype of declaration
	 * memory-space  type  identifier  terminate
	 *     auto 	 int 	 age	      ;
	 *
	 *
	 * prototype of definition
	 * memory-space   type   identifier   assignment  constant  terminate
	 *     auto 	   int 	     age 	 =	     25 	;
	 * 
	 * 
	 * this can be either global variable or local variable */
 
	/* variables uses scope to set global and local scope 
	 *  static at global scope : 
	 * 		1. scope: file level  (only accessible in the file where it declared)
	 * 		2. linkage : internal 
	 * 		3. lifetime:  (entire program duration)
	 * 
	 * static inside a function : 
	 * 		1. scope : block-level (only accessible inside the function)
	 *		2. linkage: none (not visible outside function)
	 * 		3. lifetime: entire program duration (not initialize on each call)
	 * 
	 * static function: 
	 * 		1. scope : file-level (not visible outside the current source file)
	 * 		2. linkage : internal 
	 * 		3. lifetime : entire program duration  
	return 0;

}
