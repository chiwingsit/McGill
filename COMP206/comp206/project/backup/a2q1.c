#include <stdio.h>
int main(int argc, char *argv[]){
	int inputchar;

	printf("Welcome to ASCII:\n");
	
	if(argc > 1){
		int i;
		for(i = 1; i < argc; i++){
			inputchar = *argv[i];
			printf("----> %c\n", inputchar);
			printf("ascii: %d\n", inputchar);
		}
	}
	else{
		while(inputchar != 48){
			printf("----> ");
			inputchar = getchar();
			int ch;
			while((ch = getchar() ) != '\n');
			printf("ascii: %d\n", inputchar);
		}
	}

	printf("Done.\n");
	
	return 0;
}
