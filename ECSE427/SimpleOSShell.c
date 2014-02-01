#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#define MAX_LINE 80
#define BUFFER_SIZE 50

pid_t pid;
int status;
int cmdcount = 0; // counter for the number of commands
int bgpid[];
int bgcount = 0; // counter for the processes running in the background

// Handler for the SIGTSTP signal
void handle_SIGTSTP(int sig) {
	kill(pid, SIGSTOP);
}

// Struct for node
struct NODE {
	struct node *next;
	int argc;
	char **args;
}*head=NULL;


/**
 * add a node at the end of the linked list
 * */
int addNode(char *args[], int argc){
	
	int i;
	
	struct NODE *newNode= (struct NODE*)malloc(sizeof(struct NODE));// malloc new node
	
	newNode->args = malloc((argc+1)*sizeof(char*)); // malloc pointers for the args
	for( i = 0; i < argc; i++){
		newNode->args[i] = malloc((MAX_LINE/2+1)); // malloc max size of string
		strcpy(newNode->args[i], args[i]); // copy all the args in the node
	}
	newNode->argc = argc;
	newNode->next = NULL;
	
	cmdcount++; // increment command counter
	
	if(newNode == NULL){
		return 0;
	}
	
	struct NODE *freeSpot = head;

	while(freeSpot->next != NULL){ // find the next free node
		freeSpot = freeSpot->next;
	}
	freeSpot->next = newNode;
	
	return 1;
}

/* 80 chars per line, per command, should be enough. */

/**
* setup() reads in the next command line, separating it into distinct tokens
* using whitespace as delimiters. setup() sets the args parameter as a
* null-terminated string.
*/

int setup(char inputBuffer[], char *args[],int *background)
{
	int length, /* # of characters in the command line */
		i, /* loop index for accessing inputBuffer array */
		start, /* index where beginning of next command parameter is */
		ct; /* index of where to place the next parameter into args[] */

	ct = 0;
	/* read what the user enters on the command line */
	length = read(STDIN_FILENO, inputBuffer, MAX_LINE);
	
	start = -1;
	if (length == 0)
		exit(0); /* ^d was entered, end of user command stream */
	if (length < 0){
		perror("error reading the command");
		exit(-1); /* terminate with error code of -1 */
	}

	/* examine every character in the inputBuffer */
	for (i=0;i<length;i++) {
		switch (inputBuffer[i]){
			case ' ':
			
			case '\t' : /* argument separators */
				if(start != -1){
				args[ct] = &inputBuffer[start]; /* set up pointer */
				ct++;
				}
				inputBuffer[i] = '\0'; /* add a null char; make a C string */
				start = -1;
				break;

			case '\n': /* should be the final char examined */
				if (start != -1){
				args[ct] = &inputBuffer[start];
				ct++;
				}
				inputBuffer[i] = '\0';
				args[ct] = NULL; /* no more arguments to this command */
				break;

			default : /* some other character */
				if (start == -1)
				start = i;
				if (inputBuffer[i] == '&'){
					*background = 1;
					inputBuffer[i] = '\0';
					
					if(start==i)
						start = -1;
				}
		}
	}
	args[ct] = NULL; /* just in case the input line was > 80 */
	return ct;
}

int main(void)
{
	char inputBuffer[MAX_LINE]; /* buffer to hold the command entered */
	int background; /* equals 1 if a command is followed by '&' */
	char *args[MAX_LINE/2+1]; /* command line (of 80) has max of 40 arguments */	
	
	signal(SIGINT, SIG_IGN); // ignore Ctrl-C
	int argc;
	int i;
		
	head = (struct NODE *)malloc(sizeof(struct NODE));
	head->next = NULL;
		
	while (1){ /* Program terminates normally inside setup */
	
		signal(SIGTSTP, SIG_IGN);
		
		int execute = 1; // 1: execute execvp  -- 0: don't exectute
		background = 0;
		printf(" COMMAND->\n");
		argc = setup(inputBuffer,args,&background); /* get next command */
		
		if(argc == 0) // if argc == 0 do not execute
			execute = 0;
		if(argc && strcmp(inputBuffer, "history")){ // if argc is not 0 and input buffer is not history
			addNode(args, argc); // add command at the end of the linked list
		}
		
		/* the steps are:
		(1) fork a child process using fork()
		(2) the child process will invoke execvp()
		(3) if background == 1, the parent will wait,
		otherwise returns to the setup() function. */
		
		if(strcmp("history", inputBuffer) == 0){
			execute = 0;
			if(head->next != NULL){
				
				struct NODE *current = head;
				int index = 1;
				
				while(current->next != NULL){ // go through all the nodes
					
					current = current->next;
					if(index > cmdcount - 10){ // print the last 10 nodes
						printf(" %d.", index);
						for(i = 0; i < current->argc; i++){
							printf(" %s", current->args[i]);
						}
						printf("\n");
					}
					index++;
				}
				
				argc = setup(inputBuffer,args,0);
				if( argc && (strcmp(args[0], "r") == 0)){
					struct NODE *current = head;
					struct NODE *nextcmd = head;
					
					while(current->next != NULL){ // go through all the nodes
						current = current->next;
						if(index > cmdcount - 10){ // if in the last 10 commands add the appropriate node to the end of the linked list
							if(argc == 1)
								nextcmd = current;
							else if(args[1][0] == current->args[0][0]) // if only one args get the last node
								nextcmd = current;
						}
						index++;
					}
					printf("\nHISTORY COMMAND: ");
					for(i=0; i < nextcmd->argc; i++)
						printf("%s ", nextcmd->args[i]); // echo the command
					printf("\n\n");
					addNode(nextcmd->args, nextcmd->argc);
					execute = 1;
				}
				
			}
		}
		if(strcmp(inputBuffer, "cd")==0){ // cd command
			execute = 0;
			chdir(args[1]);
		}
		else if(strcmp(inputBuffer, "exit")==0){ // exit command
			exit(0);
		}
		
		////////////////////////////////////////////
		//
		//   FORK
		//
		////////////////////////////////////////////
		pid = fork();
		
		
		if(pid == 0){
			struct NODE *command = head;
			while(command->next != NULL){ // go through all the nodes
				command = command->next;
			}
			if(execute){ // if execute is 1
				execvp(command->args[0], command->args);
				exit(1); // if execvp did not execute properly exit child process with error message 1
			}
			exit(0); // otherwise exit
		}
		else
		{
			
			struct sigaction handler;
			memset(&handler, 0, sizeof(handler));
			handler.sa_handler = handle_SIGTSTP;
			sigemptyset(&handler.sa_mask);
			handler.sa_flags=SA_RESETHAND;
			sigaction(SIGTSTP,&handler, NULL);// handler for CTRL-Z
			
			if(strcmp(inputBuffer, "fg")==0){ // fg command
				int jobnb = atoi(args[1]) - 1;
				int fgpid = bgpid[jobnb];
				int j = 0;
				for(i = 0; i < bgcount+1; i++){ // delete the appropriate job from the array
					if(jobnb==i){
						j++;
						bgpid[i] = bgpid[j];
						j++;
						bgcount--;
					}
					else{
						bgpid[i] = bgpid[j];
						j++;
					}
				}
				waitpid(fgpid, &status, WUNTRACED); // wait for the specified job
				if(WIFSTOPPED(status)==0){ // wait for stopped
					if(kill(fgpid, SIGCONT)==0){ // if SIGCONT kill is successfull
						bgpid[bgcount] = fgpid; // add pid to the bgpid array
						bgcount++;
					}
				}
			}
			else if(strcmp(inputBuffer, "jobs")==0 && argc == 1){ // jobs command
				for(i = 0; i < bgcount; i++) // print the array of pids
					printf(" #%d %d\n", i+1, bgpid[i]);
			}
			else if(background==0){
				waitpid(pid, &status, WUNTRACED);
				if(status!=0){ // if execvp did not work, remove the errouneous message from the linked list
					struct NODE *command = head;
					struct NODE *previous = head;
					while(command->next != NULL){ // go through all the nodes
						previous = command;
						command = command->next;
					}
					previous->next=NULL; // delete the last node
					free(command); // free memory
				}
				if(WIFSTOPPED(status)==0){ // wait for stopped
					if(kill(pid, SIGCONT)==0){ // if SIGCONT kill is successfull
						bgpid[bgcount] = pid; // add pid to the bgpid array
						bgcount++;
					}
				}
			}
			else{ //if running directly in the background add to the bgpid array
				bgpid[bgcount] = pid;
				bgcount++;
			}
		}
	}
}
