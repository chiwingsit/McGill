#include <stdio.h>
#include <stdlib.h>
#include <alloca.h>

extern char _start, _fini;
extern char data_start, edata, end;

int main(int argc, char *argv[])
{
	unsigned int size_heap;
	unsigned int size_stack = 1;
	
	FILE *f;
	
	void* buffer,*heap_start, *stack_start;
	buffer = malloc(1);
	heap_start = buffer;
	
	for(size_heap = 1024*1024*25; 1; size_heap += 1024*1024){
		buffer = (void*) malloc(size_heap);
		if(buffer == NULL)
			break;
		free(buffer);
	}

	stack_start = alloca(size_stack);
	
	while(1){
		alloca(size_stack);
		size_stack++;
		
		f = fopen("MemoryLayout.txt", "w");
		
		fprintf(f,"Section		Start		End		Size\n");
		fprintf(f,"text		%p	%p	%#x\n", &_start, &_fini, &_fini-&_start);
		fprintf(f,"data		%p	%p	%#x\n", &data_start, &edata, &edata-&data_start);
		fprintf(f,"bss 		%p	%p	%#x\n", &edata, &end, &end-&edata);
		fprintf(f,"heap 		%p	%p	%#x\n", heap_start, heap_start + size_heap, size_heap);
		fprintf(f,"stack		%p	%p	%#x\n", stack_start, stack_start - size_stack, size_stack);

		fclose(f);
	}
	
	exit(EXIT_SUCCESS);
		
}
