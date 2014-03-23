#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int num_processes, num_resources; // Initial variables

int **hold, **need, **max, *avail, **request;
pthread_t *processes;
unsigned long *runTime;

// Mutex variable
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
// CV indicating a process is done
pthread_cond_t isDone = PTHREAD_COND_INITIALIZER;


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
	
	//Print Available
	printf("\nAVAILABLE\n");
	for( j = 0; j < num_resources; j++){
		printf("%d ", avail[j]);
	}
	printf("\n\n");
	
}


//////////////////////////////////////
// DETECT IF STATE IS SAFE

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
	
	// Check if system is currently safe
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

void* bankerProcess(void *arg){
	int pid = (int *) arg;
	int i;
	
	//Create request array
	int req[num_resources];
		
	int sleeptime;
	
	while(1){
		
		/////////////////////////////////
		// CRITICAL SECTION BEGINS
		pthread_mutex_lock(&mutex);
		
		// Random values for request
		for(i = 0; i < num_resources; i++){
			req[i] = rand() % (need[pid][i] + 1);
			//printf("Process %d is requesting %d resources%d with %d available\n", pid, req[i], i, avail[i]);
		}
		
		// Update the arrays		
		for(i = 0; i < num_resources; i++){
			avail[i] = avail[i] - req[i];
			hold[pid][i] = hold[pid][i] + req[i];
			need[pid][i] = need[pid][i] - req[i];
		}
		
		// Check if safe
		if(!isSafe()){
			printf("P%d : State not safe, deallocating the resources\n", pid);
			// Update the arrays		
			for(i = 0; i < num_resources; i++){
				avail[i] = avail[i] + req[i];
				hold[pid][i] = hold[pid][i] - req[i];
				need[pid][i] = need[pid][i] + req[i];
			}
			pthread_cond_wait(&isDone, &mutex);
			pthread_mutex_unlock(&mutex);
			/////////////////////////////////
			// CRITICAL SECTION ENDS
			
			usleep(1);
		}
		else{ // if safe
			printf("P%d : State is safe, allocating resources\n", pid);
			
			pthread_mutex_unlock(&mutex);
			pthread_cond_signal(&isDone);
						
			sleeptime = 1 + (rand() % 10);
			runTime[pid] = runTime[pid] + sleeptime;
			
			printf("P%d : Running for %d us\n", pid, sleeptime);
			usleep(sleeptime);
			
			/////////////////////////////////
			// CRITICAL SECTION BEGINS
			pthread_mutex_lock(&mutex);
			int release;
			
			// Release resources
			for(i = 0; i < num_resources; i++){
				release = rand() % hold[pid][i];
				avail[i] = avail[i] + release;
				hold[pid][i] = hold[pid][i] - release;
				need[pid][i] = need[pid][i] + release;
				//printf("P%d is releasing %d R%d\n", pid, release, i);
			}
						
			pthread_mutex_unlock(&mutex);
			pthread_cond_signal(&isDone);
			/////////////////////////////////
			// CRITICAL SECTION ENDS
			
			// Simulate run for a random amount of time
			sleeptime = 1 + (rand() % 10);
			runTime[pid] = runTime[pid] + sleeptime;			
			usleep(sleeptime);
			
		}
	}
}

//////////////////////////////////////
// DETECT IF SYSTEM IS IN DEADLOCK
int isDeadlock(){
	int work[num_resources];
	int finish[num_processes];
	int i,j;
	
	// Set all work[i] to avail[i]
	for(j = 0; j < num_resources; j++){
		work[j] = avail[j];
	}
		
	// Set all finish[i] to false
	for(i = 0; i < num_processes; i++){
		finish[i] = 0;
	}
	
	for(i = 0; i < num_processes; i++){
		finish[i] = 1;
		for(j = 0; j < num_resources; j++){
			if(avail[j] != 0)
				finish[i] = 0;
		}
	}
	
	// Check if system is in deadlock
	for(i = 0; i < num_processes; i++){
		if(finish[i] == 0){
			finish[i] = 1;
			for( j = 0; j < num_resources; j++){
				if(request[i][j] > work[j])
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
	
	// If one of the process is not done, the system is
	// in a deadlock
	for(i = 0; i < num_processes; i++){
		if(finish[i] == 0) return 1;
	}
	
	return 0;
}

void* detectionProcess(void *arg){
	int pid = (int *) arg;
	int i;
	
	int enoughRes;
	int deadlock;
	int sleeptime;
	
	while(1){
		
		/////////////////////////////////
		// CRITICAL SECTION BEGINS
		pthread_mutex_lock(&mutex);
		
		enoughRes = 1;
		for( i = 0; i < num_resources; i++){
			request[pid][i] = rand() % (need[pid][i] + 1);
			if(request[pid][i] > avail[i])
				enoughRes = 0;
		}

		if(enoughRes){
			// Allocate the resources and update the arrays
			printf("P%d : Enough resources allocating resources\n", pid);	
			for(i = 0; i < num_resources; i++){
				avail[i] = avail[i] - request[pid][i];
				hold[pid][i] = hold[pid][i] + request[pid][i];
				need[pid][i] = need[pid][i] - request[pid][i];
				request[pid][i] = 0;
			}
			deadlock = isDeadlock();
			pthread_mutex_unlock(&mutex);
			pthread_cond_signal(&isDone);
			
			// If deadlock terminates a process and free resources
			if(deadlock){
				printf("P%d : Deadlock detected\n", pid);
				int kill = rand() % num_processes;
				printf("P%d : Randomly terminates P%d\n", pid, kill);
				
				// Set the runtime of the process to 0
				runTime[kill] = 0;
				
				// Releasing the resource from the previously terminated thread
				for(i = 0; i < num_resources; i++){
					avail[i] = avail[i] + hold[kill][i];
				}
				
				// Terminate the process
				pthread_cancel(processes[kill]);
			}
			else{ // No deadlock
				printf("P%d : Running\n", pid);
				
				// Run for a random amount of time
				sleeptime = 1 + (rand() % 10);
				runTime[pid] = runTime[pid] + sleeptime;
				printf("P%d : Running for %d us\n", pid, sleeptime);
				usleep(sleeptime);

				printf("P%d : Releasing resources\n", pid);
										
				/////////////////////////////////
				// CRITICAL SECTION BEGINS
				pthread_mutex_lock(&mutex);
				
				// Release a random amount of resources
				int release;
				for(i = 0; i < num_resources; i++){
					release = rand() % hold[pid][i];
					avail[i] = avail[i] + release;
					hold[pid][i] = hold[pid][i] - release;
					need[pid][i] = need[pid][i] + release;
					//printf("P%d released %d R%d\n", pid, release, i);
				}
				pthread_mutex_unlock(&mutex);
				pthread_cond_signal(&isDone);
				/////////////////////////////////
				// CRITICAL SECTION ENDS
				
				// Run for a random amount of time
				sleeptime = 1 + (rand() % 10);
				runTime[pid] = runTime[pid] + sleeptime;
				printf("P%d : Running for %d us\n", pid, sleeptime);
				usleep(sleeptime);
			}
		}
		else{
			// Not enough resources to allocate, process has to wait
			printf("P%d : Not enough resources waiting...\n", pid);
			pthread_cond_wait(&isDone, &mutex);
			printf("P%d : Wakes up\n", pid);
			pthread_mutex_unlock(&mutex);
			/////////////////////////////////
			// CRITICAL SECTION ENDS
		}
		
	}
}


int main(){
	
	int i,j;
		
	//Get the simulation time
	int simTime;
	printf("Simulation time (msec): ");
	scanf("%d", &simTime);
	
	// Get the number of processes
	printf("Number of processes : ");
	scanf("%d", &num_processes);
	
	// Get the number of resources
	printf("Number of resources : ");
	scanf("%d", &num_resources);
	
	// Get strategy type
	int strategy;
	printf("Strategy type : \n");
	printf("  1. Deadlock Avoidance\n");
	printf("  2. Deadlock Detection\n");
	scanf("%d", &strategy);
	
	// Allocate the memory for the dynamic arrays
	hold = (int**)malloc(num_processes * sizeof(int*));
	need = (int**)malloc(num_processes * sizeof(int*));
	max = (int**)malloc(num_processes * sizeof(int*));
	request = (int**)malloc(num_processes * sizeof(int*));
	
	for (i = 0; i < num_processes; i++) {
		hold[i] = (int*)malloc(num_resources * sizeof(int));
		need[i] = (int*)malloc(num_resources * sizeof(int));
		max[i] = (int*)malloc(num_resources * sizeof(int));
		request[i] = (int*)malloc(num_resources * sizeof(int));
	}
	
	avail = (int *)malloc(num_resources * sizeof(int));
	runTime = (unsigned long *)malloc(num_processes * sizeof(unsigned long));
		
	srand(1500);
	
	// Generate random values for initial values of available,
	// hold, need, and max
	for( i = 0; i < num_processes; i++){
		runTime[i] = 0;
		for( j = 0; j < num_resources; j++){
			avail[j] = 15 + rand() % 15;
			hold[i][j] = rand() % 50;
			need[i][j] = rand() % 20;
			max[i][j] = hold[i][j] + need[i][j];
		}
	}
	
	printResources();
	
	// Initialize processes thread arrays
	processes = (pthread_t *)malloc(num_resources * sizeof(pthread_t));;
	
	
	// Create the processes with banker's algorithm
	if(strategy == 1){
		for(i = 0; i < num_processes; i++){
			int rc = pthread_create(&processes[i], NULL, bankerProcess, (void *) i);
			if (rc){
				printf("ERROR; return code from pthread_create() is %d\n", rc);
				exit(-1);
			}
		}
	}
	// Create the processes with detection algorithm
	else if(strategy == 2){
		for(i = 0; i < num_processes; i++){
			int rc = pthread_create(&processes[i], NULL, detectionProcess, (void *) i);
			if (rc){
				printf("ERROR; return code from pthread_create() is %d\n", rc);
				exit(-1);
			}
		}
	}

	
	usleep(simTime*1000);
	
	unsigned long totalRunTime = 0;
	
	// Terminate all the threads (processes) and calculate total run time
	for(i = 0; i < num_processes; i++){
		totalRunTime = totalRunTime + runTime[i];
		pthread_cancel(processes[i]);
	}
	
	printf("Simulation time - Total Run Time = %lu\n", ((simTime*1000) - totalRunTime));
	
	printResources();
	
	printf("EXIT\n");
	exit(0);
	pthread_exit(NULL);

	return 1;
}
