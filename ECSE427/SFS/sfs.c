#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "sfs_api.h"
#include "disk_emu.h"

#define MAX_FNAME_LENGTH 14   /* Assume at most 12 characters (8.3) */
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
			root[i].size = -1;
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
	return -1;
}

int nextFreeRoot(){
	int i;
	for(i = 0; i < MAX_FD; i++){
		if(root[i].fatIndex == -1)
			return i;
	}
	return -1;
}

int nextFreeFat(){
	int i;
	for(i = 0; i < MAX_BLOCK; i++){
		if(fat[i].dbIndex == -1)
			return i;
	}
	return -1;
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
	if(dirIndex == -1) return -1;
	int fatIndex = nextFreeFat();
	if(fatIndex == -1) return -1;
	int dbIndex = nextFreeBlock();
	if(dbIndex == -1) return -1;
	
	strcpy(root[dirIndex].fileName, name);
	root[dirIndex].size = 0;
	root[dirIndex].fatIndex = fatIndex;
	
	fat[fatIndex].dbIndex = -1;
	fat[fatIndex].next = -1;
	
	freeBlocks[dbIndex] = 1;
	
	fdt[dirIndex].fatIndex = fatIndex;
	fdt[dirIndex].writeIndex = 0;
	fdt[dirIndex].readIndex = 0;
	
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
	return sfs_fcreate(name);
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
	if(fdt[fileID].fatIndex == -1) return 0;
	
	int temp_length = length;
	int fatIndex = fdt[fileID].fatIndex;
	
	char temp_buffer[blockSize];
	int offset = fdt[fileID].writeIndex;
	
	while(offset > blockSize){
		fatIndex = fat[fatIndex].next;
		offset = offset - blockSize;
		
		if(fatIndex == -1) return 0;
	}
	int blockIndex = fat[fatIndex].dbIndex;
	
	// block index doesn't exist
	if(blockIndex != -1){
	
		if(length > (blockSize - offset)){
			read_blocks(blockIndex, 1, (void *) temp_buffer);
			memcpy(temp_buffer + offset, buf, blockSize - offset);
			write_blocks(blockIndex, 1, (void *) temp_buffer);
			length = length - blockSize + offset;
			buf = buf + blockSize - offset;
		}
		else{
			read_blocks(blockIndex, 1, (void *) temp_buffer);
			memcpy(temp_buffer + offset, buf, length);
			write_blocks(blockIndex, 1, (void *) temp_buffer);
			length = 0;
			buf = buf + length;
		}
	}
	while(length > 0){
		int partSize = length > blockSize ? blockSize:length;
		memcpy(temp_buffer, buf, partSize);
		
		blockIndex = nextFreeBlock();
		if(blockIndex == -1) return 0;
		
		if(fat[fatIndex].dbIndex != -1){
			int nextFatIndex = nextFreeFat();
			if(nextFatIndex == -1) return 0;
			
			fat[fatIndex].next = nextFatIndex;
			fatIndex = nextFatIndex;
		}
		
		freeBlocks[blockIndex] = 1;
		fat[fatIndex].dbIndex = blockIndex;
		fat[fatIndex].next = -1;
		
		write_blocks(blockIndex, 1, (void *) temp_buffer);
		length = length - partSize;
		buf = buf + partSize;
	}
	
	root[fileID].size = root[fileID].size + temp_length;
	fdt[fileID].writeIndex = root[fileID].size;
	
	write_blocks(1, 1, (void *) &root);
	write_blocks(2, 1, (void *) &fat);
	write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
	
	return 1;
}

int sfs_fread(int fileID, char *buf, int length){
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
