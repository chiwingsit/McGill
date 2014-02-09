#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cipher.c"

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

int add(char* username, char* password, char* type){
	char line[50];
	FILE *file;
	file = fopen( "../data/password.csv", "r" );
	if(file != 0){
		char fUsername[50];
		char fPassword[50];
		char fType[50];
		
		while(fscanf(file, "%s", line)!=EOF){
			decrypt(line);
			lineParser(line, fUsername, fPassword, fType);
			
			if(strcmp(username, fUsername) == 0){
				printf("USERNAME EXISTS\n");
				fclose(file);
				return EXIT_FAILURE;
			}
		}
		fclose(file);
	}

	
	file = fopen( "../data/password.csv", "a" );
	
	char newEntry[50];
	
	strcpy(newEntry, username);
	strcat(newEntry, ",");
	strcat(newEntry, password);
	strcat(newEntry, ",");
	strcat(newEntry, type);
	
	encrypt(newEntry);
	fprintf(file, "%s\n", newEntry);
	
	printf("USER ADDED\n");
	
	fclose(file);
	return 0;
}

void delete(char* username){
	FILE *file = fopen( "../data/password.csv", "r" );
	FILE *tmp = fopen( "../data/temp.csv", "w" );
	
	if(file == 0){
		printf("FILE DOES NOT EXIST\n");
	}
	else{
		char line[50];
		char fUsername[50];
		char fPassword[50];
		char fType[50];
		while(fscanf(file, "%s", line)!=EOF){
			decrypt(line);
			lineParser(line, fUsername, fPassword, fType);
			
			if(!strcmp(username, fUsername)){
				printf("USER DELETED\n");
			}
			else{
				encrypt(line);
				fprintf(tmp, "%s\n", line);
			}
		}
	}
	
	fclose(file);
	fclose(tmp);
	
	remove("../data/password.csv");
	rename("../data/temp.csv", "../data/password.csv");
}


int verify(char* username, char* password){
	
	FILE *file = fopen( "../data/password.csv", "r" );
	if(file == 0){
		return EXIT_FAILURE;
	}
	
	char line[50];
	char fUsername[50];
	char fPassword[50];
	char fType[50];
	
	while(fscanf(file, "%s", line)!=EOF){
		decrypt(line);
		lineParser(line, fUsername, fPassword, fType);
		
		if(!strcmp(username, fUsername)){
			if(!strcmp(password, fPassword)){
				fclose(file);
				printf("VALID\n");
				return EXIT_SUCCESS;
			}
			else{
				fclose(file);
				printf("INVALID\n");
				return EXIT_FAILURE;
			}
		}
	}
	printf("INVALID\n");
	fclose(file);
	return EXIT_FAILURE;
}


void edit(char* username, char* password, char* newUsername, char* newPassword, char* newType){
	FILE *file = fopen( "../data/password.csv", "r" );
	if(file == 0){
		printf("FILE DOES NOT EXIST\n");
	}
	else{
		if(!verify(username, password)){
			delete(username);
			add(newUsername, newPassword, newType);
			printf("USER EDITED\n");
		}
	}
}


int menu()
{
	int input;
	
	char username[50];
	char password[50];
	char type[50];
	char newUsername[50];
	char newPassword[50];
	char newType[50];
	
	printf("\n=====MENU=====\n");
	printf("1. add\n");
	printf("2. delete\n");
	printf("3. edit\n");
	printf("4. verify\n");
	printf("5. quit\n");
	printf("Selection : ");
	scanf("%d", &input);
	switch(input){
		case 1:
			
			printf("Username: ");
			scanf("%s", username);
			printf("Password: ");
			scanf("%s", password);
			printf("Type: ");
			scanf("%s", type);
			
			add(username, password, type);
			
			menu();
			break;
		case 2:
			printf("Username: ");
			scanf("%s", username);
			
			delete(username);
			
			menu();
			break;
		case 3:
			printf("Username: ");
			scanf("%s", username);
			printf("Password: ");
			scanf("%s", password);
			
			printf("New Username: ");
			scanf("%s", newUsername);
			printf("New Password: ");
			scanf("%s", newPassword);
			printf("New Type: ");
			scanf("%s", newType);
			
			edit(username, password, newUsername, newPassword, newType);
			
			menu();
			break;
		case 4:
			printf("Username: ");
			scanf("%s", username);
			printf("Password: ");
			scanf("%s", password);
			
			verify(username, password);
			
			menu();
			break;
		case 5:
			break;
		default:
			printf("Invalid input\n");
			menu();
			break;
	}
	return 0;
}
