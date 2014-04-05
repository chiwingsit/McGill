#include <string.h>
#include <stdio.h>
#include "sfs_api.h"
#include "disk_emu.h"

int mksfs(int fresh);
void sfs_ls(void);
int sfs_fopen(char *name);
int sfs_fclose(int fileID);
int sfs_fwrite(int fileID, char *buf, int length);
int sfs_fread(int fileID, char *buf, int length);
int sfs_fseek(int fileID, int offset);
int sfs_remove(char *file);


#define MAX_FNAME_LENGTH 12   /* Assume at most 12 characters (8.3) */
#define MAX_FD 100 
#define MAX_BYTES 30000 /* Maximum file size I'll try to create */
#define MIN_BYTES 10000         /* Minimum file size */
#define MAX_BLOCK 1000

typedef struct{
	int rootBlocks;
	int fatBlocks;
	int dataBlocks;
	int freeBlocks;
}super_block;

/*Structure to represent an entry in the directory table. Each time a file is 
created, an instance of this structure will be created.*/
typedef struct{
	char fileName[MAX_FNAME_LENGTH];
	int size;
	int fatIndex; //Data block location of the given file.
}dir_entry;

/*Structure to represent an entry in the file descriptor table. Each time a file
is opened, an instance of this structure will be created.*/
typedef struct{
	int fatIndex;
	int writeIndex;
	int readIndex;
}fdt_entry;

/*Structure to represent an entry in the file access table. Each file will have
at least on entry in the file access table.*/
typedef struct{
	int dbIndex;
	int next; //Next data block entry for a given file. Multiple data block entries are used to represent a file.
}fat_entry;

super_block superBlock;
dir_entry root[MAX_FD];
fdt_entry fdt[MAX_FD];
fat_entry fat[MAX_BLOCK];
int freeBlocks[MAX_BLOCK];

static int blockSize;

int mksds(int fresh){
	blockSize = (sizeof(fdt) > sizeof(fat) ? sizeof(fdt) : sizeof(fat));
	int i;
	if(fresh){
		//initialise a new FS called TestFS.
		init_fresh_disk("TestFS", blockSize, MAX_BLOCK);
		for(i = 0; i < MAX_FD; i++){
			strcpy(root[i].fileName, "");
			root[i].size = 0;
			root[i].fatIndex = -1;
			
			fdt[i].fatIndex = -1;
			fdt[i].readIndex = 0;
			fdt[i].writeIndex = 0;
		}
		for(i = 0; i < MAX_BLOCK; i++){
			fat[i].dbIndex = -1;
			fat[i].next = -1;
			freeBlocks[i] = 0;
		}
		superBlock.rootBlocks = 1;
		superBlock.fatBlocks = 1;
		superBlock.dataBlocks = 0;
		superBlock.freeBlocks = 1000;
		
		write_blocks(0, 1, (void *) &superBlock);
		write_blocks(1, 1, (void *) &root);
		write_blocks(2, 1, (void *) &fat);
		write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
	}
	else{
		init_disk("TestFS", blockSize, MAX_BLOCK);
		
		read_blocks(0, 1, (void *) &superBlock);
		read_blocks(1, superBlock.rootBlocks, (void *) &root);
		read_blocks(1 + superBlock.rootBlocks, superBlock.fatBlocks, (void *) &fat);
		read_blocks(MAX_BLOCK, 1, (void *) &freeBlocks);
		
	}
	return 0;
}


int nextFreeBlock(){
	int i;
	for(i = 0; i < MAX_BLOCK; i++){
		if(freeBlocks[i] == 0)
			return i;
	}
	return 0;
}

int nextFreeRoot(){
	int i;
	for(i = 0; i < MAX_FD; i++){
		if(root[i].fatIndex == -1)
			return i;
	}
	return 0;
}

int nextFreeFat(){
	int i;
	for(i = 0; i < MAX_BLOCK; i++){
		if(fat[i].dbIndex == -1)
			return i;
	}
	return 0;
}

void sfs_ls(void){	
	int i;
	printf("\n");
	for(i = 0; i < MAX_FD; i++){
		if(strcmp(root[i].fileName, "") != 0)
			printf("%s %20d B\n", root[i].fileName, root[i].size);
	}
}

int sfs_fcreate(char *name){
	int dirIndex = nextFreeRoot();
	int fatIndex = nextFreeFat();
	int dbIndex = nextFreeBlock();
	
	strcpy(root[dirIndex].fileName, name);
	root[dirIndex].size = 0;
	root[dirIndex].fatIndex = fatIndex;
	
	fat[fatIndex].dbIndex = dbIndex;
	fat[fatIndex].next = -1;
	
	freeBlocks[dbIndex] = 1;
	
	write_blocks(1, 1, (void *) &root);
	write_blocks(2, 1, (void *) &fat);
	write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
	
	return dirIndex;
}

int sfs_fopen(char *name){
	int i;
	
	// Check if file exists
	for(i = 0; i < MAX_FD; i++){
		if(strcmp(root[i].fileName, name) == 0){
			// Update file descriptor table
			fdt[i].fatIndex = root[i].fatIndex;
			
			return i;
		}
	}
	// Didn't find the file in root so create new file
	i = sfs_fcreate(name);
	
	// Update file descriptor table
	fdt[i].fatIndex = root[i].fatIndex;
			
	return i;
}

int sfs_fclose(int fileID){
	if(fdt[fileID].fatIndex == -1)
		return 0;
	else{
		fdt[fileID].fatIndex = -1;
		fdt[fileID].readIndex = 0;
		fdt[fileID].writeIndex = 0;
		return 1;
	}	
}

int sfs_fwrite(int fileID, char *buf, int length){
	
}

int main(){
	printf("\n");
	printf("Creating disk\n");
	mksds(1);
	printf("Opening TEST1.txt\n");
	sfs_fopen("TEST1.txt");
	printf("Opening TEST1.txt\n");
	sfs_fopen("TEST1.txt");
	
	printf("Opening TEST2.txt\n");
	sfs_fopen("TEST2.txt");
	
	printf("List of files\n");
	sfs_ls();
	return 0;
}
