#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cipher.h"

int main(){
	
	char username[50];
	char password[50];
	printf("Welcome to Chi-Wing Sit login page\n");
	printf("Username: ");
	scanf("%s", username);
	
	encrypt(username);
	printf("%s\n", username);
	
	printf("Password: ");
	scanf("%s", password);
	return 0;
}
