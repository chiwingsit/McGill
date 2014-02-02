#include <stdio.h>
#include <stdlib.h>

extern char _start, _fini;
extern char data_start, edata, end;

int main(int argc, char *argv[])
{
	printf("Section		Start		End		Size\n");
	printf("text		%p	%p	%#x\n", &_start, &_fini, &_fini - &_start);
	printf("data		%p	%p	%#x\n", &data_start, &edata, &edata-&data_start);
	printf("bss 		%p	%p	%#x\n", &edata, &end, &end-&edata);
	exit(EXIT_SUCCESS);
	
}
