/*preprocessing directives
 * under first transformation phase
 * which are : 
 * 1. macro substitution
 * 2. condition compilation
 * 3. inclusion of name files
 * each of this file must begin with a hash (#) */

/* macro substitution */ 

#define FOO()	printf("Hello World\n")
#define LOG(msg) printf("MSG: %s\n", msg)
#define ADD(a, b) ((a) + (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))


/* condition compilation using #if #elif #else #endif and macro substitution #define*/

#define VERSION 2

#if VERSION == 1 
	printf("version1 selected\n");
#elif VERSION == 2
	printf("version2 selected\n");
#else 
	printf("unknown version\n");
#endif 

/*condition compilation using #ifdef #ifndef #endif*/

#define DEBUG

#ifdef DEBUG
	printf("debug mode is on\n");
#endif

#ifndef RELEASE 
	printf("release mode is off\n");
#endif

/*condition compilation using #ifdef #elif #else #endif and macro substitution #define*/
#ifdef _WIN32
	#define OS "Windows"
#elif __LINUX__
	#define OS "Linux"
#elif __APPLE__ 
	#define OS "Apple"
#else 
	#define OS "unknown OS"
#endif 


/*condition compilation using #if #else #endif and macro substitution #define*/

#define DEBUG 1


#if DEBUG
	#define LOG(msg) printf("DEBUG: %s \n", msg)
#else 
	#define LOG(msg) 
#endif


/*inclusion of name files*/

/* there are two type of inclusion of name files
 * 1. system headers (angle bracket <>)
 * 2. user define header (double quote "")*/


/*system headers (angle bracket <>)*/

#include <stdio.h>
#include <unistd.h>
#include <socket.h>

/*user define header (double qoute "")*/

#include "myheader.h" 
#include "pen.h" 
#include "ken.h"























