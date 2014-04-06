#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "sfs_api.h"
#include "disk_emu.h"

#define MAX_FNAME_LENGTH 16
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

int blockSize;

int mksfs(int fresh){
	blockSize = (sizeof(fdt) > sizeof(fat) ? sizeof(fdt) : sizeof(fat));
	int i;
	if(fresh){
		//initialise a new FS called TestFS.
		init_fresh_disk("root", blockSize, MAX_BLOCK);
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
		
		freeBlocks[0] = 1;
		freeBlocks[1] = 1;
		freeBlocks[2] = 1;
		freeBlocks[MAX_BLOCK - 1] = 1;
		
		write_blocks(0, 1, (void *) &superBlock);
		write_blocks(1, 1, (void *) &root);
		write_blocks(2, 1, (void *) &fat);
		write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
	}
	else{
		init_disk("root", blockSize, MAX_BLOCK);
		
		read_blocks(0, 1, (void *) &superBlock);
		read_blocks(1, 1, (void *) &root);
		read_blocks(2, 1, (void *) &fat);
		read_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
		
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
	printf("File Name %20s\n", "Size");
	printf("==========================================\n");
	for(i = 0; i < MAX_FD; i++){
		if(root[i].fatIndex != -1)
			printf("%s %20d B\n", root[i].fileName, root[i].size);
	}
	printf("\n");
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
			fdt[i].writeIndex = root[i].size;
			fdt[i].readIndex = 0;
			return i;
		}
	}
	// Didn't find the file in root so create new file
	i = sfs_fcreate(name);
	
	// Update file descriptor table
	fdt[i].fatIndex = root[i].fatIndex;
	fdt[i].writeIndex = root[i].size;
	fdt[i].readIndex = 0;
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
	if(fdt[fileID].fatIndex != -1){
		int fatIndex = fdt[fileID].fatIndex;
		int blockIndex;
		int offset = fdt[fileID].writeIndex;
		root[fileID].size = root[fileID].size + length;
		
		// Point to the end of the file
		while(offset > blockSize){
			fatIndex = fat[fatIndex].next;
			offset = offset - blockSize;
		}
		
		blockIndex = fat[fatIndex].dbIndex;
		//offset = fdt[fileID].writeIndex % blockSize;
		
		char temp[blockSize];
		read_blocks(blockIndex, 1, temp);
		memcpy(temp + offset, buf, blockSize - offset);
		write_blocks(blockIndex, 1, (void *) temp);
		buf = buf + blockSize - offset;
		length = length - blockSize + offset;
		
		while(length > 0){
			blockIndex = nextFreeBlock();
			freeBlocks[blockIndex] = 1;
			fat[fatIndex].next = nextFreeFat();
			fatIndex = fat[fatIndex].next;
			fat[fatIndex].dbIndex = blockIndex;
			fat[fatIndex].next = -1;
			
			memcpy(temp, buf, blockSize);
			length = length - blockSize;
			buf = buf + blockSize;
			write_blocks(blockIndex, 1, (void *) temp);
		}
		
		fdt[fileID].writeIndex = root[fileID].size;
		
		write_blocks(1, 1, (void *) &root);
		write_blocks(2, 1, (void *) &fat);
		write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
		
		return 1;
	}
	return 0;
}

int sfs_fread(int fileID, char *buf, int length){
	if(fdt[fileID].fatIndex != -1){
		int blockIndex;
		int fatIndex = fdt[fileID].fatIndex;
		int offset = fdt[fileID].readIndex;
		char *buffer = buf;
		char *temp = (char*) malloc(blockSize * sizeof(char));
		
		fdt[fileID].readIndex = fdt[fileID].readIndex + length;
		
		while(offset > blockSize){
			fatIndex = fat[fatIndex].next;
			offset = offset - blockSize;
		}
		blockIndex = fat[fatIndex].dbIndex;
		
		// Read first block
		read_blocks(blockIndex, 1, temp);
		if(length > blockSize - offset){
			memcpy(buffer, temp + offset, blockSize - offset);
			buffer = buffer + blockSize - offset;
			length = length - blockSize + offset;
			fatIndex = fat[fatIndex].next;
			blockIndex = fat[fatIndex].dbIndex;
		}
		else{
			memcpy(buffer, temp + offset, length);
			return 1;
		}
		while(length > blockSize){
			temp = (char *)malloc(blockSize * sizeof(char));
			read_blocks(blockIndex, 1, temp); 
			memcpy(buffer, temp, blockSize);
			buffer = buffer + blockSize;
			length = length - blockSize;
			fatIndex = fat[fatIndex].next;
			blockIndex = fat[fatIndex].dbIndex;
		}
		if(length > 0){
			read_blocks(blockIndex, 1, temp);
			memcpy(buffer, temp, length);
			free(temp);
		}
		return 1;
	}
	return 0;
}

int sfs_fseek(int fileID, int offset){
	if(fdt[fileID].fatIndex != -1){
		fdt[fileID].writeIndex = offset;
		fdt[fileID].readIndex = offset;
		return 1;
	}
	return 0;
}

int sfs_remove(char *file){
	int i;
	for(i = 0; i < MAX_FD; i++){
		if(strcmp(root[i].fileName, file) == 0){
			int fatIndex = root[i].fatIndex;
			
			while(fat[fatIndex].next != -1){
				int next;
				freeBlocks[fat[fatIndex].dbIndex] = 0;
				fat[fatIndex].dbIndex = -1;
				
				next = fat[fatIndex].next;
				fat[fatIndex].next = -1;
				
				fatIndex = next;
			}
			
			strcpy(root[i].fileName,"");
			root[i].size = 0;
			root[i].fatIndex = -1;
			
			fdt[i].fatIndex = -1;
			fdt[i].readIndex = 0;
			fdt[i].writeIndex = 0;

			write_blocks(1, 1, (void *) &root);
			write_blocks(2, 1, (void *) &fat);
			write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
			
			return 0;
		}
	}
	
	return 1;
}

int a(){
	printf("\n");
	printf("Creating disk\n");
	mksfs(1);
	printf("Opening TEST1.txt\n");
	int test1ID = sfs_fopen("TEST1.txt");
	//printf("Opening TEST1.txt\n");
	//sfs_fopen("TEST1.txt");
	
	printf("Opening TEST2.txt\n");
	sfs_fopen("TEST2.txt");
	
	printf("List of files\n");
	sfs_ls();
	
	printf("Write to file Test1\n");
	sfs_fwrite(test1ID, "Hello World 1", 12971);
	sfs_ls();
	printf("Write to file Test1\n");
	sfs_fwrite(test1ID, "Hello World 2", 13);
	sfs_ls();
	
	char *buffer = (char *)malloc(50 * sizeof(char));
	sfs_fread(test1ID, buffer, 50);
	printf("%s\n", buffer);
	return 0;
}
