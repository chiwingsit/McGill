#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "sfs_api.h"
#include "disk_emu.h"

#define MAX_FNAME_LENGTH 13
#define MAX_FD 125
#define MAX_BLOCK 1000

// Superblock struct
typedef struct{
	int rootBlocks;
	int fatBlocks;
	int dataBlocks;
	int freeBlocks;
}super_block;

// Represent an entry in the directory
typedef struct{
	char fileName[MAX_FNAME_LENGTH];
	int size;
	int fatIndex;
}dir_entry;

// Represent an entry in the file descriptor table
typedef struct{
	int fatIndex;
	int writeIndex;
	int readIndex;
}fdt_entry;

// Represent an entry in file access table
typedef struct{
	int dbIndex;
	int next;
}fat_entry;

super_block superBlock;
dir_entry root[MAX_FD];
fdt_entry fdt[MAX_FD];
fat_entry fat[MAX_BLOCK];
int freeBlocks[MAX_BLOCK];

int blockSize;

void updateFreeBlockUsage(){
	superBlock.dataBlocks = 0;
	int i;
	for(i = 0; i < MAX_BLOCK; i++){
		if(freeBlocks[i] == 0)
			superBlock.dataBlocks++;
	}
	
	superBlock.freeBlocks = MAX_BLOCK - superBlock.dataBlocks;
}

int mksfs(int fresh){
	// Set the block size so that both fat and root can fit in one block
	blockSize = (sizeof(root) > sizeof(fat) ? sizeof(root) : sizeof(fat));
	
	int i;
	if(fresh){
		// Initialise a new FS called FileSystem.
		init_fresh_disk("FileSystem", blockSize, MAX_BLOCK);
		for(i = 0; i < MAX_FD; i++){
			// Initialize the root values
			strcpy(root[i].fileName, "");
			root[i].size = 0;
			root[i].fatIndex = -1;
			
			// Initialize the fdt values
			fdt[i].fatIndex = -1;
			fdt[i].readIndex = 0;
			fdt[i].writeIndex = 0;
		}
		for(i = 0; i < MAX_BLOCK; i++){
			// Initialize the fat values
			fat[i].dbIndex = -2;
			fat[i].next = -1;
			// Set all free blocks to empty
			freeBlocks[i] = 0;
		}

		// Values for the super block
		superBlock.rootBlocks = 1;
		superBlock.fatBlocks = 1;
		
		// Update the disk memory
		updateFreeBlockUsage();
		write_blocks(0, 1, (void *) &superBlock);
		write_blocks(1, 1, (void *) &root);
		write_blocks(1 + superBlock.rootBlocks, 1, (void *) &fat);
		write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
		
		freeBlocks[0] = 1;
		freeBlocks[1] = 1;
		freeBlocks[2] = 1;
		freeBlocks[MAX_BLOCK - 1] = 1;
	}
	else{
		// Else get the data from the previous file system
		init_disk("FileSystem", blockSize, MAX_BLOCK);
		
		read_blocks(0, 1, (void *) &superBlock);
		read_blocks(1, 1, (void *) &root);
		read_blocks(2, 1, (void *) &fat);
		read_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
		
	}
	return 0;
}

// Get next free block index
int nextFreeBlock(){
	int i;
	for(i = 0; i < MAX_BLOCK; i++){
		if(freeBlocks[i] == 0)
			return i;
	}
	return 0;
}

// Get next free root index
int nextFreeRoot(){
	int i;
	for(i = 0; i < MAX_FD - 1; i++){
		if(root[i].fatIndex == -1)
			return i;
	}
	return 0;
}

// Get next free fat index
int nextFreeFat(){
	int i;
	for(i = 0; i < MAX_BLOCK; i++){
		if(fat[i].dbIndex == -2)
			return i;
	}
	return 0;
}

void sfs_ls(void){	
	int i;
	printf("File Name %20s\n", "Size");
	printf("==========================================\n");
	// Print all the files present in the root dir
	for(i = 0; i < MAX_FD; i++){
		if(root[i].fatIndex != -1)
			printf("%s %20d B\n", root[i].fileName, root[i].size);
	}
	printf("\n");
}

// Create a new file
int sfs_fcreate(char *name){
	int dirIndex = nextFreeRoot();
	if(dirIndex == -1) return -1;
	int fatIndex = nextFreeFat();
	if(fatIndex == -1) return -1;
	
	// Put new file in root
	strcpy(root[dirIndex].fileName, name);
	root[dirIndex].size = 0;
	root[dirIndex].fatIndex = fatIndex;
	
	// Update fat
	fat[fatIndex].dbIndex = -1;
	fat[fatIndex].next = -1;
	
	// Update fdt
	fdt[dirIndex].fatIndex = fatIndex;
	fdt[dirIndex].writeIndex = 0;
	fdt[dirIndex].readIndex = 0;
	
	// Update the disk memory
	updateFreeBlockUsage();
	write_blocks(0, 1, (void *) &superBlock);
	write_blocks(1, 1, (void *) &root);
	write_blocks(1 + superBlock.rootBlocks, 1, (void *) &fat);
	write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
	
	return dirIndex;
}

int sfs_fclose(int fileID){
	// if file is not openned return 1
	if(fdt[fileID].fatIndex == -1)
		return 1;
	else{ // else updates the fdt and return 0
		fdt[fileID].fatIndex = -1;
		fdt[fileID].readIndex = 0;
		fdt[fileID].writeIndex = 0;
		return 0;
	}	
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

int sfs_fwrite(int fileID, char *buf, int length){
	// if file does exist
	if(fdt[fileID].fatIndex != -1){
	
		int tempLength = length;
		int fatIndex = fdt[fileID].fatIndex;
		
		char buffer[blockSize];
		int offset = fdt[fileID].writeIndex;
		
		// Find the last fat index for this write index
		while(offset > blockSize){
			fatIndex = fat[fatIndex].next;
			offset = offset - blockSize;
			
			if(fatIndex == -1) return 0;
		}
		// Get the block index corresponding to the specific fat index
		int blockIndex = fat[fatIndex].dbIndex;
		
		// Block index already exists
		if(blockIndex != -1){
			// if write takes more memory than the current block has available
			if(length > (blockSize - offset)){
				read_blocks(blockIndex, 1, (void *) buffer);
				memcpy(buffer + offset, buf, blockSize - offset);
				write_blocks(blockIndex, 1, (void *) buffer);
				length = length - blockSize + offset;
				buf = buf + blockSize - offset;
			}
			else{
				read_blocks(blockIndex, 1, (void *) buffer);
				memcpy(buffer + offset, buf, length);
				write_blocks(blockIndex, 1, (void *) buffer);
				length = 0;
				buf = buf + length;
			}
		}
		// While length is greater than zero, check if the amount of write is
		// is less than the block size and write the data in the next free block
		// Then updates the fat table and the length
		while(length > 0){
			int partSize = length > blockSize ? blockSize:length;
			memcpy(buffer, buf, partSize);
			
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
			
			write_blocks(blockIndex, 1, (void *) buffer);
			length = length - partSize;
			buf = buf + partSize;
		}
		// Update the size of the file and the fdt write pointer
		root[fileID].size = root[fileID].size + tempLength;
		fdt[fileID].writeIndex = root[fileID].size;
		
		// Update the disk memory
		updateFreeBlockUsage();
		write_blocks(0, 1, (void *) &superBlock);
		write_blocks(1, 1, (void *) &root);
		write_blocks(1 + superBlock.rootBlocks, 1, (void *) &fat);
		write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
		
		return tempLength;
	}
	
	return 0;
}

int sfs_fread(int fileID, char *buf, int length){
	if(fdt[fileID].fatIndex != -1){
		int blockIndex;
		int fatIndex = fdt[fileID].fatIndex;
		int offset = fdt[fileID].readIndex;
		char *buffer = buf;
		
		char temp[blockSize];
		// Set the number of bytes read
		int byteRead = length > root[fileID].size - fdt[fileID].readIndex ?
		root[fileID].size - fdt[fileID].readIndex : length;
		
		length = byteRead;
		
		fdt[fileID].readIndex = fdt[fileID].readIndex + byteRead;
		
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
			return byteRead;
		}
		// Read the rest of the blocks
		while(length > blockSize){
			read_blocks(blockIndex, 1, temp); 
			memcpy(buffer, temp, blockSize);
			buffer = buffer + blockSize;
			length = length - blockSize;
			fatIndex = fat[fatIndex].next;
			blockIndex = fat[fatIndex].dbIndex;
		}
		// Read the last block
		if(length > 0){
			read_blocks(blockIndex, 1, temp);
			memcpy(buffer, temp, length);
			buffer = buffer + length;
			length = 0;
		}
		
		return byteRead;
	}
	return 0;
}

int sfs_fseek(int fileID, int offset){
	// if file is open change the read and write indices
	if(fdt[fileID].fatIndex != -1){
		fdt[fileID].writeIndex = offset;
		fdt[fileID].readIndex = offset;
		return 1;
	}
	return 0;
}

int sfs_remove(char *file){
	int i;
	for(i = 0; i < MAX_FD; i++){ // find the specific file
		if(strcmp(root[i].fileName, file) == 0){
			int fatIndex = root[i].fatIndex;
			
			// Remove iteratively all the fat entries
			while(fat[fatIndex].next != -1){
				int next;
				freeBlocks[fat[fatIndex].dbIndex] = 0;
				fat[fatIndex].dbIndex = -1;
				
				next = fat[fatIndex].next;
				fat[fatIndex].next = -1;
				
				fatIndex = next;
			}
			
			// Remove the file from the root
			strcpy(root[i].fileName,"");
			root[i].size = 0;
			root[i].fatIndex = -1;
			
			// Remove the file from the fdt
			fdt[i].fatIndex = -1;
			fdt[i].readIndex = 0;
			fdt[i].writeIndex = 0;

			// Update the disk memory
			updateFreeBlockUsage();
			write_blocks(0, 1, (void *) &superBlock);
			write_blocks(1, 1, (void *) &root);
			write_blocks(1 + superBlock.rootBlocks, 1, (void *) &fat);
			write_blocks(MAX_BLOCK - 1, 1, (void *) &freeBlocks);
			
			return 0;
		}
	}
	
	return 1;
}
