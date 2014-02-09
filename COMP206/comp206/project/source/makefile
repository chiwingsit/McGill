	coptions = -Wall -g -ggdb

loginTest :	login.o cipher.o linked.o
		gcc ${coptions} -o loginTest login.o cipher.o linked.o

login.o :	login.c cipher.h linked.h
		gcc -c ${coptions} login.c

linked.o : 	linked.c linked.h cipher.h
		gcc -c ${coptions} linked.c

cipher.o :	cipher.c cipher.h
		gcc -c ${coptions} cipher.c

clean :
		rm -f login.o linked.o cipher.o

backup :
		cp cipher.c cipher.h linked.c linked.h login.c ../backup/
