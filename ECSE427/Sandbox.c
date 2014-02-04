#include <stdio.h>
#include <stdlib.h>
#include <alloca.h>

extern char _start, _fini;
extern char data_start, edata, end;

int main(int argc, char *argv[])
{
	unsigned int i;
	void* buffer = 0;
	for(i = 2900000000; 1; i = i + 1000){
		buffer = malloc(i);
		printf("SIZE : %u\n", i);
		if(buffer == NULL)
			break;
		free(buffer);
	}
	printf("Section		Start		End		Size\n");
	printf("text		%p	%p	%#x\n", &_start, &_fini, &_fini-&_start);
	printf("data		%p	%p	%#x\n", &data_start, &edata, &edata-&data_start);
	printf("bss 		%p	%p	%#x\n", &edata, &end, &end-&edata);
	
	printf("SIZE : %u\n", i);
	exit(EXIT_SUCCESS);
		
}
