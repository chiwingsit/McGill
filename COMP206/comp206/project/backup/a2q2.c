#include <stdio.h>
#include <string.h>

char Matrix[50][50];
char outMatrix[50][50];

void clearmatrix(char matrix[50][50]){
	int i, j;	
	for(i = 0; i < 50; i++){
		for(j = 0; j < 50; j++)
			matrix[i][j] = ' ';
	}
}

void printmatrix(char matrix[50][50]){
	int i,j;
	for(i = 0; i < 50; i++){
		for(j = 0; j < 50; j++){
			printf("%c", matrix[i][j]);
		}
		printf("\n");
	}
}

void inputtext(){
	printf("\nInput Text:\n");
	clearmatrix(Matrix);
	int i = 0;
	while(i < 50 && Matrix[i][0] != 0){
		i++;
		gets(Matrix[i]);
	}
}

void encrypt(){
	int n;
	printf("N = ");
	scanf("%d", &n);
	clearmatrix(outMatrix);
	int i,j;
	int fromZero, temp;
	for(i = 0; i < 50; i++){
		for(j = 0; j < 50; j++){
			temp = Matrix[i][j];
			if(Matrix[i][j] >= 'a' && Matrix[i][j] <= 'z'){
				fromZero = Matrix[i][j] - 'a';
				temp = ((fromZero + n) % 26) + 'a';
			}
			else if(Matrix[i][j] >= 'A' && Matrix[i][j] <= 'Z'){
				fromZero = Matrix[i][j] - 'A';
				temp = ((fromZero + n) % 26) + 'A';
			}
			outMatrix[j][i] = temp;
		}
	}

	printmatrix(outMatrix);
}

void decrypt(){
	int n;
	printf("N = ");
	scanf("%d", &n);
	clearmatrix(outMatrix);
	int i,j;
	int fromZero, temp;
	for(i = 0; i < 50; i++){
		for(j = 0; j < 50; j++){
			temp = Matrix[i][j];
			if(Matrix[i][j] >= 'a' && Matrix[i][j] <= 'z'){
				fromZero = Matrix[i][j] - 'a';
				temp = (fromZero + 26 - (n % 26)) % 26 + 'a';
			}
			else if(Matrix[i][j] >= 'A' && Matrix[i][j] <= 'Z'){
				fromZero = Matrix[i][j] - 'A';
				temp = (fromZero + 26 - (n % 26)) % 26 + 'A';
			}
			outMatrix[j][i] = temp;
		}
	}
	printmatrix(outMatrix);
}

void menu(){
	printf(	"\nMAIN MENU\n");
	printf(	"=========\n");
	printf(	"1. Input Text\n");
	printf(	"2. Encrypt\n");
	printf(	"3. Decrypt\n");
	printf(	"4. Exit\n");
	printf(	"Selection: ");
	
	int select;
	scanf("%d", &select);
	int ch;
	while((ch = getchar() ) != '\n');
	switch(select){
	case 1:
		inputtext();
		menu();
		break;
	case 2:
		encrypt();
		menu();
		break;
	case 3:
		decrypt();
		menu();
		break;
	case 4:
		break;
	default:
		printf("\nINVALID INPUT\n\n");
		menu();
		break;
	}
}

int main(){
	
	menu();
	return 0;
}
