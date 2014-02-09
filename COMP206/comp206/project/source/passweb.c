#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "menu.c"

int main(int argc, char *argv[])
{
	if(argc < 2)
		return 0;
	else{
		char *swtch;
		int swtchc=0;
		int i;
		for( i = 1; i < argc; i++){
				if(	strcmp (argv[i], "-menu")==0 ||
					strcmp (argv[i], "-add")==0 ||
					strcmp (argv[i], "-del")==0 ||
					strcmp (argv[i], "-edit")==0 ||
					strcmp (argv[i], "-verify")==0){
						swtchc++;
						swtch = argv[i];
					}
		}
		if(swtchc != 1){
			printf("passweb -menu -add -del -verify username password type [user pass type]\nN.B passweb accepts one and only one switch\n");
			return 0;
		}
				
		if(strcmp (swtch, "-menu")==0){
			menu();
		}
		else{
			char *username, *password, *type, *newUsername, *newPassword, *newType;
			username = argv[2];
			password = argv[3];
			type = argv[4];
			newUsername = argv[5];
			newPassword = argv[6];
			newType = argv[7];
			
			if(strcmp (swtch, "-add")==0){
				if(argc < 5){
					printf("NOT ENOUGH ARGUMENTS\n");
					return EXIT_FAILURE;
				}
				return add(username, password, type);
			}
			else if(strcmp (swtch, "-del")==0){
				if(argc < 3){
					printf("NOT ENOUGH ARGUMENTS\n");
					return EXIT_FAILURE;
				}
				delete(username);
			}
			else if(strcmp (swtch, "-edit")==0){
				if(argc < 8){
					printf("NOT ENOUGH ARGUMENTS\n");
					return EXIT_FAILURE;
				}
				edit(username, password, newUsername, newPassword, newType);
			}
			else if(strcmp (swtch, "-verify")==0){
				if(argc < 4){
					printf("NOT ENOUGH ARGUMENTS\n");
					return EXIT_FAILURE;
				}
				return verify(username, password);
			}
		}
		
	}
	return 0;
}
