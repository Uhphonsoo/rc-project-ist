all: client DS

client: user.o functions.o user_functions.o
	gcc -Wall -Wextra user.o functions.o user_functions.o -o user 

DS: DS.o functions.o DS_functions.o
	gcc -Wall -Wextra DS.o functions.o DS_functions.o -o DS

user.o: user.c
	gcc -c -Wall -Wextra user.c

DS.o: DS.c
	gcc -c -Wall -Wextra DS.c

functions.o: functions.c
	gcc -c -Wall -Wextra functions.c

user_functions.o: user_functions.c
	gcc -c -Wall -Wextra user_functions.c

clean:
	rm *.o user DS
