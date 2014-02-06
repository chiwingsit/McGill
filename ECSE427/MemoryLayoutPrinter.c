#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <alloca.h>

extern char _start, _fini;
extern char data_start, edata, end;

int main(int argc, char *argv[])
{
	unsigned int size_heap, size_mms;
	unsigned int size_stack = 1024;
	
	FILE *f;
	
	void *buffer,*ptr, *heap_start, *stack_start, *mms_start;
	buffer = malloc(1);
	heap_start = buffer;
	
	for(size_heap = 1024*1024*25; 1; size_heap += 1024*1024){
		buffer = (void*) malloc(size_heap);
		if(buffer == NULL)
			break;
		free(buffer);
	}
	
	size_mms = 1024*1024*64;
	
	while(ptr != (void *) -1){
		ptr = mmap(NULL, size_mms, PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
		
		if(ptr != (void *) -1)
			 mms_start = ptr;
			
		munmap(ptr, size_mms);
		size_mms +=1024*1024;
	}
	
	stack_start = alloca(size_stack);
	
	while(1){
		stack_start = alloca(1024);
		size_stack+=1024;
		
		printf("\nSection		Start		End		Size\n");
		printf("text		%p	%p	%#x\n", &_start, &_fini, &_fini-&_start);
		printf("data		%p	%p	%#x\n", &data_start, &edata, &edata-&data_start);
		printf("bss 		%p	%p	%#x\n", &edata, &end, &end-&edata);
		printf("heap 		%p	%p	%#x\n", heap_start, heap_start + size_heap, size_heap);
		printf("mms	 	%p	%p	%#x\n", mms_start, mms_start - size_heap, size_mms);
		printf("stack		%p	%p	%#x\n", stack_start, stack_start - size_stack, size_stack);
		
		f = fopen("MemoryLayout", "w");
		
		fprintf(f,"Section		Start		End		Size\n");
		fprintf(f,"text		%p	%p	%#x\n", &_start, &_fini, &_fini-&_start);
		fprintf(f,"data		%p	%p	%#x\n", &data_start, &edata, &edata-&data_start);
		fprintf(f,"bss 		%p	%p	%#x\n", &edata, &end, &end-&edata);
		fprintf(f,"heap 		%p	%p	%#x\n", heap_start, heap_start + size_heap, size_heap);
		fprintf(f,"mms	 	%p	%p	%#x\n", mms_start, mms_start - size_heap, size_mms);
		fprintf(f,"stack		%p	%p	%#x\n", stack_start, stack_start - size_stack, size_stack);

		fclose(f);
	}
	
	exit(EXIT_SUCCESS);
		
}
