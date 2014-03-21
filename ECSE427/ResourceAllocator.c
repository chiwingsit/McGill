#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int num_processes, num_resources, strategy; // Initial variables

int **hold, **need, **max, *avail;

unsigned long simTime = 0;

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER; // mutex variable
pthread_cond_t isDone = PTHREAD_COND_INITIALIZER; // CV indicating a process is done


int isSafe(){
	int i,j;
	int work[num_resources];
	int finish[num_processes];
	
	// Set all work[i] to avail[i]
	for(i = 0; i < num_resources; i++){
		work[i] = avail[i];
	}
	
	// Set all finish[i] to false
	for(i = 0; i < num_processes; i++){
		finish[i] = 0;
	}
	
	for(i = 0; i < num_processes; i++){
		if(finish[i] == 0){
			finish[i] = 1;
			for( j = 0; j < num_resources; j++){
				if(need[i][j] > work[j])
					finish[i] = 0;
			}
			
			if(finish[i]){
				for( j = 0; j < num_resources; j++){
					work[j] = work[j] + hold[i][j];
				}
				i = -1;
			}
		}
	}
	
	for(i = 0; i < num_processes; i++){
		if(finish[i] == 0) return 0;
	}
	
	return 1;
}

void printResources(){
	
	int i,j;
	
	// Print Hold
	printf("\n");
	
	printf("HOLD:\n");
	for( i = 0; i < num_processes; i++){
		for( j = 0; j < num_resources; j++){
			printf("%d ", hold[i][j]);
		}
		printf("\n");
	}
	
	// Print Need
	printf("\nNEED:\n");
	for( i = 0; i < num_processes; i++){
		for( j = 0; j < num_resources; j++){
			printf("%d ", need[i][j]);
		}
		printf("\n");
	}
	
	// Print Max	
	printf("\nMAX:\n");
	for( i = 0; i < num_processes; i++){
		for( j = 0; j < num_resources; j++){
			printf("%d ", max[i][j]);
		}
		printf("\n");
	}
	
	printf("\nAVAILABLE\n");
	for( j = 0; j < num_resources; j++){
		printf("%d ", avail[j]);
	}
	printf("\n\n");
	
}


void* bankerProcess(void *arg){
	int pid = (int *) arg;
	int i;
	
	//Create request array
	int req[num_resources];
	
	while(1){
		// Lock mutex
		pthread_mutex_lock(&mutex);
		
		// Random values for request
		for(i = 0; i < num_resources; i++){
			req[i] = rand() % (need[pid][i] + 1);
			printf("Process %d is requesting %d resources%d with %d available\n", pid, req[i], i, avail[i]);
		}
		
		// Update the arrays		
		for(i = 0; i < num_resources; i++){
			avail[i] = avail[i] - req[i];
			hold[pid][i] = hold[pid][i] + req[i];
			need[pid][i] = need[pid][i] - req[i];
		}
		
		// Check if safe
		if(!isSafe()){
			printf("State not safe, deallocating the resources\n");
			// Update the arrays		
			for(i = 0; i < num_resources; i++){
				avail[i] = avail[i] + req[i];
				hold[pid][i] = hold[pid][i] - req[i];
				need[pid][i] = need[pid][i] + req[i];
			}
			pthread_cond_wait(&isDone, &mutex);
			pthread_mutex_unlock(&mutex);
		}
		else{
			printf("State is safe, allocating resources\n");
			pthread_mutex_unlock(&mutex);
			pthread_cond_signal(&isDone);
			usleep(1);
			
			
			pthread_mutex_lock(&mutex);
			int release;
			for(i = 0; i < num_resources; i++){
				release = rand() % hold[pid][i];
				avail[i] = avail[i] + release;
				hold[pid][i] = hold[pid][i] - release;
				need[pid][i] = need[pid][i] + release;
				printf("Process %d is releasing %d resources%d\n", pid, release, i);
			}
			pthread_mutex_unlock(&mutex);
			pthread_cond_signal(&isDone);
			usleep(1);
			
		}
	}
}

void* detectionProcess(void *arg){
	int pid = (int *) arg;
	int i;
	
	//Create request array
	int req[num_resources];
	
	while(1){
		// Lock mutex
		pthread_mutex_lock(&mutex);
		
		// Random values for request
		for(i = 0; i < num_resources; i++){
			req[i] = rand() % (need[pid][i] + 1);
			printf("Process %d is requesting %d resources%d with %d available\n", pid, req[i], i, avail[i]);
		}
		
		// Update the arrays		
		for(i = 0; i < num_resources; i++){
			avail[i] = avail[i] - req[i];
			hold[pid][i] = hold[pid][i] + req[i];
			need[pid][i] = need[pid][i] - req[i];
		}
		
		// Check if safe
		if(!isSafe()){
			printf("State not safe, deallocating the resources\n");
			// Update the arrays		
			for(i = 0; i < num_resources; i++){
				avail[i] = avail[i] + req[i];
				hold[pid][i] = hold[pid][i] - req[i];
				need[pid][i] = need[pid][i] + req[i];
			}
			pthread_cond_wait(&isDone, &mutex);
			pthread_mutex_unlock(&mutex);
		}
		else{
			printf("State is safe, allocating resources\n");
			pthread_mutex_unlock(&mutex);
			pthread_cond_signal(&isDone);
			usleep(1);
			
			
			pthread_mutex_lock(&mutex);
			int release;
			for(i = 0; i < num_resources; i++){
				release = rand() % hold[pid][i];
				avail[i] = avail[i] + release;
				hold[pid][i] = hold[pid][i] - release;
				need[pid][i] = need[pid][i] + release;
				printf("Process %d is releasing %d resources%d\n", pid, release, i);
			}
			pthread_mutex_unlock(&mutex);
			pthread_cond_signal(&isDone);
			usleep(1);
			
		}
	}
}


int main(){
	
	// Get the number of processes
	printf("Number of processes : ");
	scanf("%d", &num_processes);
	
	// Get the number of resources
	printf("Number of resources : ");
	scanf("%d", &num_resources);
	
	// Get strategy type
	printf("Strategy type : \n");
	printf("  1. Deadlock Avoidance\n");
	printf("  2. Deadlock Detection\n");
	scanf("%d", &strategy);
	
	
	hold = (int**)malloc(num_processes * sizeof(int*));
	need = (int**)malloc(num_processes * sizeof(int*));
	max = (int**)malloc(num_processes * sizeof(int*));
		
	int i,j;
	
	for (i = 0; i < num_processes; i++) {
		hold[i] = (int*)malloc(num_resources * sizeof(int));
		need[i] = (int*)malloc(num_resources * sizeof(int));
		max[i] = (int*)malloc(num_resources * sizeof(int));
	}
	
	avail = (int *)malloc(num_resources * sizeof(int));
	
	srand(1500);
	
	for( i = 0; i < num_processes; i++){
		for( j = 0; j < num_resources; j++){
			avail[j] = 10 + rand() % 15;
			hold[i][j] = rand() % 50;
			need[i][j] = rand() % 20;
			max[i][j] = hold[i][j] + need[i][j];
		}
	}
	
	printResources();
	
	// Initialize processes thread arrays
	pthread_t processes[num_processes];
	
	
	// Creates the processes
	for(i = 0; i < num_processes; i++){
		int rc = pthread_create(&processes[i], NULL, bankerProcess, (void *) i);
		if (rc){
			printf("ERROR; return code from pthread_create() is %d\n", rc);
			exit(-1);
		}
	}
	usleep(5000);
	
	printResources();
	
	printf("EXIT\n");
	exit(0);
	pthread_exit(NULL);

	return 1;
}
