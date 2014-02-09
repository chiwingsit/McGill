#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "cipher.h"

#define BOOLEAN int;
#define TRUE 1;
#define FALSE 0;

struct NODE{
	char username[50];
	char password[50];
	char usertype[50];
	struct NODE *next;
}*head=NULL;

void lineParser(char line[50], char fUsername[50], char fPassword[50], char fType[50]){
	int i;
	int j;
	
	for(i = 0; line[i] != ','; i++){
		fUsername[i] = line[i];
	}
	fUsername[i] = '\0';
	i++;
	
	for(j = 0; line[i] != ',' ; j++,i++){
		fPassword[j] = line[i];
	}
	fPassword[j] = '\0';
	i++;
	
	for(j=0; line[i] != '\0'; j++, i++){
		fType[j] = line[i];
	}
	fType[j] = '\0';
	
}

BOOLEAN add(struct NODE *p){
	if(p == NULL){
		printf("Error: was unable to initialize password validation\n");
		return FALSE;
	}
	
	struct NODE *freeSpot = head;

	while(freeSpot->next != NULL){
		freeSpot = freeSpot->next;
	}
	freeSpot->next = p;
	
	return TRUE;
}

void createList(){
	FILE *file = fopen( "../data/password.csv", "r" );
	if(file != 0){
		char line[50];
		char fUsername[50];
		char fPassword[50];
		char fType[50];
		
		head = (struct NODE *)malloc(sizeof(struct NODE));
		head->next = NULL;
		
		while(fscanf(file, "%s", line)!=EOF){
			decrypt(line);
			lineParser(line, fUsername, fPassword, fType);
			struct NODE *newNode= (struct NODE*)malloc(sizeof(struct NODE));;
			strcpy(newNode->username, fUsername);
			strcpy(newNode->password, fPassword);
			strcpy(newNode->usertype, fType);
			newNode->next = NULL;
			add(newNode);
		}
		fclose(file);
	}
}

BOOLEAN valid(char username[50], char password[50]){
	createList();
	struct NODE *current = head;
	
	while(current->next != NULL){
		//printf("%s\n",current->username);
		if(!strcmp(username, current->username) && !strcmp(password, current->password))
			return TRUE;
		current = current->next;
	}
	return FALSE;
}
