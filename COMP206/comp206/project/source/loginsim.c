#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
	char username[50];
	char password[50];
	char command[250];
	
	printf("Username: ");
	scanf("%s", username);
	printf("Password: ");
	scanf("%s", password);
	
	strcpy(command, "./passweb -verify ");
	strcat(command, username);
	strcat(command, " ");
	strcat(command, password);
	
	if (system(command) == EXIT_SUCCESS) {
		printf("Verified!\n");
		return 0;
	}
	else{
		printf("Invalid!\n");
		return 1;
	}
}
