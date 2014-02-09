#include <stdio.h>
#include <string.h>

int shift = 1;

void decrypt(char text[50]){
	int i;
	char temp[50];
	for(i = 0; i < 50 && text[i] != '\0'; i++){
		temp[i] = (text[i] - shift)%256 ;
		text[i] = temp[i];
	}
}

void encrypt(char text[50]){
	int i;
	char temp[50];
	for(i = 0; i < 50 && text[i] != '\0'; i++){
		temp[i] = (text[i] + shift)%256 ;
		text[i] = temp[i];
	}
	
}
