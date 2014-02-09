#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "cipher.h"
#include "linked.h"

int main(){
	
	char username[50];
	char password[50];
	char* c_time_string;
	time_t current_time;
	current_time = time(NULL);
	c_time_string = ctime(&current_time);
	
	int i;
	for(i = 0;  i < 3; i++){
		printf("Welcome to Chi-Wing Sit's login page\n");
		printf("Username: ");
		scanf("%s", username);
		printf("Password: ");
		scanf("%s", password);
		if(valid(username, password)){
			printf("Congratulations, you've made it!\n");
			return 0;
		}
		else
			printf("Sorry, please try again.\n");
	}
	
	printf("Calling the police!\n");
	FILE *file = fopen( "../data/LoginErrors.txt", "a" );
	fprintf(file, "%s %s %s", username, password, c_time_string);
	fclose(file);
	return 0;
}
