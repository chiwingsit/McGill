#include <stdio.h>
#include <stdlib.h>

extern char etext, edata, end; /* The symbols must have some type,
									or "gcc -­-Wall" complains*/
int main(int argc, char *argv[])
{
	int x;
	label:
	printf("First address past:\n");
	printf("	program text (etext) 		%10p\n", &etext);
	printf("	initialized data (edata)	%10p\n", &edata);
	printf("	uninitialized data (end)	%10p\n", &end);
	printf("	Address of the main func	%10p\n", main);
	printf("	Location of variable x		%10p\n", &x);
	printf("	Location of a label			%10p\n", &&label);
	
	exit(EXIT_SUCCESS);
	
}
