all: ./sfs_api.c ./sfs_api.h ./disk_emu.c ./disk_emu.h ./sfs_ftest.c ./sfs_htest.c
	gcc -g  -Wall sfs_api.c disk_emu.c sfs_ftest.c -o sfs_ftest 
	gcc -g  -Wall sfs_api.c disk_emu.c sfs_htest.c -o sfs_htest 
