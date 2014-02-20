#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int num_printers, num_clients, buffer_size; // Initial varaibles

pthread_cond_t not_full = PTHREAD_COND_INITIALIZER; // CV indicating not full buffer
pthread_cond_t not_empty = PTHREAD_COND_INITIALIZER; // CV indicating not empty buffer
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER; // mutex variable

int *buffer; // buffer array

// variables for circular array
int printer_index = 0;
int client_index = 0;
int buffer_count = 0;

void* printer(void *ptr){
	// infinite loop
	while(1){
		
		// Locks mutex
		pthread_mutex_lock(&mutex);
		long tid;
		tid = (long)ptr;
		
		// if buffer is empty
		if(buffer_count == 0){
			// Printer sleeps
			printf("No request in buffer, Printer %ld sleeps\n", tid);
			pthread_cond_wait(&not_empty, &mutex);
		}
		
		// When buffer is not empty
		int pages = buffer[printer_index]; // get the number of pages
		int index = printer_index; // appropriate buffer index
		
		// Starts printing
		printf("Printer %ld starts printing %d pages from Buffer[%d]\n", tid, pages, index);
		
		// Decrements the buffer_count
		buffer_count--;
		// Updates circular array index for printer
		printer_index = (printer_index + 1)%buffer_size;
		
		// Unlocks mutex
		pthread_mutex_unlock(&mutex);
		// Signal that the buffer is not full
		pthread_cond_signal(&not_full);
		
		// Sleeps for number of pages to print
		sleep(pages);
		printf("Printer %ld finishes printing %d pages from Buffer[%d]\n", tid, pages, index);
	}
	pthread_exit(0);
}

void* client(void *ptr){
	
	// Infinite loop
	while(1){
		
		// Locks mutex
		pthread_mutex_lock(&mutex);
		long tid;
		tid = (long)ptr;
		
		// Generates random number of pages between 1 and 10
		int pages = rand() % 10 + 1;

		// if buffer is full
		if(buffer_count == buffer_size){

			// Waits until signal not full
			printf("Client %ld has %d pages to print, buffer full, sleeps\n", tid, pages);
			pthread_cond_wait(&not_full, &mutex);
			printf("Client %ld wakes up, puts %d pages in Buffer[%d]\n", tid, pages, client_index);
			
		}
		else{
			printf("Client %ld has %d pages to print, puts request in Buffer[%d]\n", tid, pages, client_index);
		}
		
		// Puts the number of pages in the buffer
		buffer[client_index] = pages;
		// Increments the buffer count
		buffer_count++;
		// Updates the index for the client in the circular array
		client_index = (client_index + 1)%buffer_size;
		
		// Unlocks the mutex
		pthread_mutex_unlock(&mutex);
		// Signal that the buffer is not empty
		pthread_cond_signal(&not_empty);
		
		// Sleeps 5 seconds before sending another request
		sleep(5);
	}
	pthread_exit(0);
}

int main(){
	
	// Gets the number of clients
	printf("Number of clients : ");
	scanf("%d", &num_clients);
	
	// Gets the number of printers
	printf("Number of printers : ");
	scanf("%d", &num_printers);
	
	// Gets buffer size
	printf("Buffer size : ");
	scanf("%d", &buffer_size);
	
	// Initializes clients and printers arrays
	pthread_t clients[num_clients];
	pthread_t printers[num_printers];
	
	// Allocates memory for buffer
	buffer = (int *) malloc(buffer_size * sizeof(int));
	
	int rc;
	long t;
	
	// Creates the clients
	for(t=0; t<num_clients; t++){
		rc = pthread_create(&clients[t], NULL, client, (void *)t);
		if (rc){
			printf("ERROR; return code from pthread_create() is %d\n", rc);
			exit(-1);
		}
	}
	
	// Creates the printers
	for(t=0; t<num_printers; t++){
		rc = pthread_create(&printers[t], NULL, printer, (void *)t);
		if (rc){
			printf("ERROR; return code from pthread_create() is %d\n", rc);
			exit(-1);
		}
	}
	

	pthread_exit(NULL);
	return 1;
}
