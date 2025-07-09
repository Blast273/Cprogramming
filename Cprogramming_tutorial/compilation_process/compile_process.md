
				Compilation Process Stages

		stage 1.
	preprocessing 
Tools : C preprocessor (gcc)
Command : gcc -E ex1.c -O ex1.i
Command to see only macros : gcc -dM -E ex1.c -o ex11.i

What Happens : 
	1. Handles #include #define #ifdef etc
	2. It removes comments
	3. Expands macros

Input : ex1.c

Output : ex1.i   (this is pure C code with all header and macros expanded)


		stage 2.
Tools : Compiler (gcc)
Command : gcc -S ex1.i -O ex1.s

What Happens : 
	1. Translate preprocessed C code into assembly code 
	2. Performs syntax checking, optimization, and code generation 

Input : ex1.i
Output : ex1.s 		(assembly code)



		Stage 3.
Tools : Assembler (as)
Command : gcc -c ex1.s -O ex1.o

What Happens : 
	1. Converts assembly code to machine code (object code)
	
Input : ex1.s
Output : ex1.o 		(object file)



		Stage 4.
Tools : Linker (ld)
Command : gcc ex1.o -O ex1 

What Happens : 
	1. Links object files and libraries to create an executable 
	2. Resolves function calls, external symbols, etc
	
Input : ex1.o 	(+ standard libraries (like libc)) 
Output : ex1 	(executable binary)


		Final 
Run : ./ex1
	

	

