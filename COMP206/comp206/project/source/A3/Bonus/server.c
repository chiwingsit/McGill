#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

FILE *data;

void consumer(){
	FILE *values;
	int count = 1;
	int num = 0;
	char line[1024];
	
	while(1){
		values = fopen( "../data/values.txt", "r" );
		while(values == NULL){
			values = fopen( "../data/values.txt", "r" );
		}
		num = 0;
		printf("Processing VALUES.TXT file number %d with values ", count);
		
		while(fscanf(values, "%s", line)!= EOF){
			printf("%s ", line);
			num++;
		}
		count++;
		printf("\nIt has %d odd numbers\n", num/2);
		fclose(values);
		remove("../data/values.txt");
	}
}

void producer(){
	//FILE *data = fopen( "../data/data.txt", "r" );
	FILE *values;
	
	int num;
	char line[1024];
	char buf[12];
	
	if(data != NULL){	
		while(fscanf(data,"%d", &num)!=EOF){
			values = fopen( "../data/values.txt", "r" );
			while(values != NULL){
				fclose(values);
				values = fopen( "../data/values.txt", "r" );
			}
			if(num >= 0){
				values =  fopen( "../data/values.txt", "w" );
				sprintf(buf, "%d", num);
				strcpy(line, buf);
				num--;
				for( ; num >= 0; num--){
					sprintf(buf, " %d", num);
					strcat(line, buf);
				}
				fprintf(values, "%s", line);
				fclose(values);
			}
		}
		fclose(data);
	}
	
}

int main(){
	data = fopen( "../data/data.txt", "r" );
	while(data == NULL){
		data = fopen( "../data/data.txt", "r" );
	}
	
	
	//producer();
	//consumer();
	int pid;
	pid = fork();
	
	if(pid < 0)
		exit(-1);
	if(pid == 0){
		producer();
		sleep(2);
		kill(pid, SIGTERM);
	}
	else{
		consumer();
	}
	
	return 0;
}
