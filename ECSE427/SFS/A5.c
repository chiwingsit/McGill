//Wei Quan

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "disk_emu.h"

//SFS LIMIT
#define MAX_BLOCK 1000
#define MAX_FILES 150
#define MAX_CHAR 20

//number of block for ROOT DIR and FAT
#define BLOCK_NUM_ROOT 2
#define BLOCK_NUM_FAT 2

int BLOCK_SIZE;

// super block
typedef struct
{
    int nb_root;
    int nb_fat;
    int nb_fbl;
    int nb_data;
    int nb_free;
} sfs_super;
// single file entry
typedef struct
{
    char name[MAX_CHAR];
    int fat_index;
    int size;// In bytes
    time_t created;
    int empty;
} sfs_file;
// fat node
typedef struct
{
    int db_index;
    int next;
} fat_row;
// fdt node
typedef struct
{
    char name[MAX_CHAR];
    int dir_index;
    int opened;
    int rd_ptr;
    int wr_ptr;
} fdt_row;


sfs_super SUPER;
// directory table, contains all files in root
sfs_file DIR[MAX_FILES];
// file descriptor table
fdt_row FDT[MAX_FILES];
// file allocation table
fat_row FAT[MAX_BLOCK];
//FREE BLOCK LIST
int FBL[MAX_BLOCK]; //1: free

// cursors
int dir_cursor = 0;
int fdt_cursor = -1;
int fat_cursor = 0;

// store memory data into disk
void write_memory()
{
	write_blocks( 0, 1, (void *)&SUPER );
	write_blocks( 1, 1, (void *)&DIR );
    write_blocks( 1+SUPER.nb_root, 1, (void *)&FAT );
    write_blocks(MAX_BLOCK-1, 1, (void *)&FBL );
}
// retrieve memory data from disk
void read_memory()
{
	read_blocks( 0, 1, (void *)&SUPER );
	read_blocks( 1, 1, (void *)&DIR );
    read_blocks( 1+SUPER.nb_root, 1, (void *)&FAT );
    read_blocks( MAX_BLOCK-1, 1, (void *)&FBL );
}

//create file system
int mksfs(int fresh)
{
	int r,a,b,i;
	a = sizeof(sfs_file)*MAX_FILES;
	b = sizeof(fat_row)*MAX_BLOCK;
	BLOCK_SIZE = (a>b?a:b);
	
	if(fresh==1)
	{
		r = init_fresh_disk("root", BLOCK_SIZE, MAX_BLOCK);
		
		// setup super block
		SUPER.nb_root = BLOCK_NUM_ROOT;
		SUPER.nb_fat = BLOCK_NUM_FAT;
		SUPER.nb_fbl = 1;
		SUPER.nb_data=0;
		SUPER.nb_free=MAX_BLOCK-SUPER.nb_root-SUPER.nb_fat-SUPER.nb_fbl;
		
		// Initialize root
        for(i = 0; i < MAX_FILES; i++) {
            DIR[i].empty = 1;
        }
		
		// Initialize free block list & FAT
		for(i = 0; i < MAX_BLOCK; i++) {
			FBL[i] = 1;
			FAT[i].db_index = -1;
			FAT[i].next = -1;
		}
		
		// SET FBL for blocks occupied by super, root, fat,fbl
		FBL[0] = 0;
		for(i=1;i<=SUPER.nb_root;i++)
			FBL[i] = 0;
		for(i=1+SUPER.nb_root;i<=SUPER.nb_root+SUPER.nb_fat;i++)
			FBL[i] = 0;
		FBL[MAX_BLOCK-1] = 0;
		
		write_memory();
	}
	else
	{
		r = init_disk("root", BLOCK_SIZE, MAX_BLOCK);
		read_memory();
	}
	return r;
}

//lists files in root
void sfs_ls()
{
	int i,s;
    printf("     %15s  %10s  %24s\n", "Filename","Size","Time Created");
    printf("=====================================================\n");
    for (i = 0; DIR[i].empty == 0; i++) 
    {
        s = DIR[i].size;
        printf("%2d. %15s  %8dB  %s",i , DIR[i].name, s, ctime(&DIR[i].created) );
    }
}

//create and open file
int sfs_fcreate(char * name)
{
	//update cursors
	fdt_cursor++;
	if(get_dir_cursor()==-1) return -1;
	if(get_fat_cursor()==-1) return -1;
	
	//fill FAT
	FAT[fat_cursor].db_index = -2;
	FAT[fat_cursor].next = -1;
	
	//fill root
	DIR[dir_cursor].empty = 0;
	strcpy(DIR[dir_cursor].name, name);
	DIR[dir_cursor].fat_index = fat_cursor;
	DIR[dir_cursor].size = 0;
	DIR[dir_cursor].created = time(NULL);
	
	//fill fdt
	FDT[fdt_cursor].dir_index = dir_cursor;
	strcpy(FDT[fdt_cursor].name, name);
	FDT[fdt_cursor].opened = 1;
	FDT[fdt_cursor].wr_ptr = 0;
	FDT[fdt_cursor].rd_ptr = 0;
	
	write_memory();
	
	//printf("sfs_fcreate: %d. %s\n",fdt_cursor,name);
	
	return fdt_cursor;
}

//open file, create and open if it does not exists
int sfs_fopen(char * name)
{
	int i;
	//open in fdt if already there
	for(i=0;i<=fdt_cursor;i++)
	{
		if(strcmp(FDT[i].name,name)==0)
		{
			//open and reset ptr
			FDT[i].opened=1;
			FDT[i].rd_ptr=0;
			FDT[i].wr_ptr=DIR[FDT[i].dir_index].size;
			//printf("sfs_fopen from FDT: %d. %s\n",i,name);
			return i;
		}
	}
	
	//add to fdt and open if in root dir
	for(i=0;i<MAX_FILES;i++)
	{
		if(strcmp(DIR[i].name,name)==0 && DIR[i].empty!=1)
		{
			fdt_cursor++;
			
			//fill fdt data
			FDT[fdt_cursor].dir_index = i;
			strcpy(FDT[fdt_cursor].name, name);
			FDT[fdt_cursor].opened = 1;
			FDT[fdt_cursor].wr_ptr = DIR[i].size;
			FDT[fdt_cursor].rd_ptr = 0;
			
			//printf("sfs_fopen from DIR: %d. %s\n",fdt_cursor,name);
			
			return fdt_cursor;
		}
	}
	
	//create file and open if not in root
	return sfs_fcreate(name);
}

//close file, return 1 on error
int sfs_fclose(int fileID)
{
    if(fdt_cursor<fileID)
    {
		//printf("File %d not in FDT!\n",fileID);
		return 1;
	} 
	else if(FDT[fileID].opened==0)
	{
		return 1;
	}
	else
	{
        FDT[fileID].opened = 0;
    }
    return 0;
}

//write to file, return number of byte written
int sfs_fwrite(int fileID, char * buf, int length)
{
    if(is_open(fileID)==0) return 0;
	
	//printf("fat_cursor: [%d]\n",fat_cursor);
	
	int length_cache = length;
	int dir_index = FDT[fileID].dir_index;
	int fat_index = DIR[dir_index].fat_index;
	
	char buf_part[BLOCK_SIZE];
	
	int skip = FDT[fileID].wr_ptr;
	while(skip>BLOCK_SIZE)
	{
		fat_index = FAT[fat_index].next;
		skip -= BLOCK_SIZE;
		if(fat_index==-1)
		{
			//printf("sfs_fwrite: Next FAT node not found!\n");
			return 0;
		}
	}
	
	int db_index = FAT[fat_index].db_index;
	//fill current block if it exists
	if(db_index!=-2)
	{
		int first_part = (length>(BLOCK_SIZE-skip))? (BLOCK_SIZE-skip):length;
		read_blocks(db_index, 1, (void *)buf_part);
		
		memcpy((buf_part+skip),buf,first_part);
		
		//printf("F: Writing to File %d, Block [%d]%d, length: %d\n",dir_index,fat_index,db_index,length);
		write_blocks( db_index, 1, (void *)buf_part );
		length -= first_part;
		buf += first_part;
	}
	
	//add blocks and fill them for remaining data
	while(length>0)
	{
		int part_size = (length>(BLOCK_SIZE))? (BLOCK_SIZE):length;
		memcpy(buf_part,buf,part_size);
		//new block, 
		db_index = get_free_block();
		if(db_index==-1) return length_cache-length; //out of block
		//new FAT node if node is not empty
		if(FAT[fat_index].db_index!=-2)
		{
			if(get_fat_cursor()==-1) return length_cache-length; //out of fat node
			FAT[fat_index].next = fat_cursor;
			fat_index = fat_cursor;
		}
		
		FBL[db_index] = 0; //take block
		FAT[fat_index].db_index = db_index;
		FAT[fat_index].next = -1;
		
		//printf("R: Writing to File %d, Block [%d]%d, length: %d\n",dir_index,fat_index,db_index,length);
		write_blocks( db_index, 1, (void *)buf_part );
		length -= part_size;
		buf += part_size;
	}
	
	//update root DIR and wr_ptr
	DIR[dir_index].size += length_cache;
	FDT[fileID].wr_ptr = DIR[dir_index].size;
	
	write_memory();
	
    return length_cache;
}

//read lenth bytes into buf, return number of bytes read
int sfs_fread(int fileID, char * buf, int length)
{
	if(is_open(fileID)==0) return 0;
	
	char * buf_ptr = buf;
	char buf_part[BLOCK_SIZE];
	
	int length_cache = length;
	int dir_index = FDT[fileID].dir_index;
	int fat_index = DIR[dir_index].fat_index;
	
	//go to read pointer
	int skip = FDT[fileID].rd_ptr;
	while(skip>BLOCK_SIZE)
	{
		fat_index = FAT[fat_index].next;
		skip -= BLOCK_SIZE;
		if(fat_index==-1)
		{
			//printf("sfs_fread: Next FAT node not found!\n");
			return 0;
		}
	}
	
	//read part of first block
	int db_index = FAT[fat_index].db_index;
	int first_part = (length>(BLOCK_SIZE-skip))? (BLOCK_SIZE-skip):length;
	//printf("Read f: Block %d, length: %d\n",db_index,first_part);
	read_blocks(db_index,1,buf_part);
	memcpy(buf_ptr,(buf_part+skip),first_part);
	length -= first_part;
	buf_ptr += first_part;
	
	
	//read middle blocks that are full
	fat_index = FAT[fat_index].next;
	while(FAT[fat_index].next!=-1 && length > 0 && length > BLOCK_SIZE)
	{
		db_index = FAT[fat_index].db_index;
		read_blocks(db_index,1,buf_part);
		memcpy(buf_ptr,buf_part,BLOCK_SIZE);
		length -= BLOCK_SIZE;
		buf_ptr += BLOCK_SIZE;
		fat_index = FAT[fat_index].next;
	}
	
	//read last block if there is still content
	if(length>0)
	{
		db_index = FAT[fat_index].db_index;
		if(db_index > 0)
		{
			read_blocks(db_index,1,buf_part);
			memcpy(buf_ptr,buf_part,length);
		}
	}
	
	//update rd_ptr
	FDT[fileID].rd_ptr += length_cache;
	return length_cache;
}

//check if file exists and is open
int is_open(fileID)
{
	if(fdt_cursor<fileID)
    {
		//printf("File %d not in FDT!\n",fileID);
		return 0;
	}
	if(FDT[fileID].opened!=1)
	{
		//printf("File %d not open!\n",fileID);
		return 0;
	}
	return 1;
}

//return a free block, -1 if no free block
int get_free_block()
{
	int i;
	for(i=0;i<MAX_BLOCK;i++)
	{
		if(FBL[i]==1) return i;
	}
	return -1;
}

//seek, move rd and wr pointers
void sfs_fseek(int fileID, int loc)
{
    if(fdt_cursor<fileID)
    {
		printf("File %d not in FDT!\n",fileID);
		return;
	}
	if(FDT[fileID].opened!=1)
	{
		printf("File %d not open!\n",fileID);
		return;
	}
	
    FDT[ fileID ].wr_ptr = loc;
    FDT[ fileID ].rd_ptr = loc;
    return;
}

//delete file
int sfs_remove(char * file)
{
	int i,n;
	int fat_index=-9;
	
	//close in FDT
	for(i=0;i<=fdt_cursor;i++)
	{
		if(strcmp(FDT[i].name,file)==0)
		{
			FDT[i].opened=0;
		}
	}
	
	//remove from DIR
	for(i=0;i<MAX_FILES;i++)
	{
		if(strcmp(DIR[i].name,file)==0 && DIR[i].empty!=1)
		{
			DIR[i].empty=1;
			fat_index = DIR[i].fat_index;
		}
	}
	
	if(fat_index=-9)
	{
		//printf("sfs_remove: File %s not in DIR!\n",file);
		return 0;
	}
	if(fat_index=-1) 
	{
		//printf("sfs_remove: File %s not in FAT!\n",file);
		return 1;
	}
	
	//remove from FAT and FBL
	do{
		n = FAT[fat_index].next;
		if(FAT[fat_index].db_index>0)
			FBL[FAT[fat_index].db_index] = 1; //free the block
		FAT[fat_index].db_index = -1;
		FAT[fat_index].next = -1;
		fat_index = n;
	}while(FAT[fat_index].next!=-1);
	
	return 1;
}

//update and return the fat cursor to point to a new node
int get_fat_cursor()
{
	int c=0;
	while(FAT[fat_cursor].db_index!=-1)
	{
		fat_cursor++;
		if(fat_cursor>=MAX_BLOCK) fat_cursor=0; //wrap around
		c++;
		
		if(c>MAX_BLOCK)
		{
			printf("MAX FAT NODES reached!");
			return -1;
		}
	}
	return fat_cursor;
}

//update and return the root dir cursor to point to an empty file
int get_dir_cursor()
{
	int c=0;
	while(DIR[dir_cursor].empty!=1)
	{
		dir_cursor++;
		if(dir_cursor>=MAX_FILES) dir_cursor=0; //wrap around
		c++;
		
		if(c>MAX_FILES)
		{
			printf("MAX FILES reached!");
			return -1;
		}
	}
	return dir_cursor;
}

void main_test(void)
{
	int a,b,i,l;
	
	int r = mksfs(1);
	printf("mksfs: %d\n",r);
	
	//return 0;
	b = sfs_fopen("ABSD2");
	a = sfs_fopen("ABSDFasdf2");
	sfs_ls();
	
	printf("Before writing\n");
    sfs_fwrite(a, "Hello World!", 12);
    sfs_fwrite(a, "This", 4);
    sfs_fwrite(b, "This! ", 6);
    sfs_fwrite(b, "Hello World!", 12);
    printf("After Writing\n");
	sfs_ls();
	
	l=18;
	char *str;
	str = (char *)malloc(sizeof(char)*l);
	
	r = sfs_fread(b, str, l);
	printf("%s(%d)\n",str,r);
	
	
	close_disk();
	return;
}
