all:
	gcc main.c -lm -D COUNT=10 -D MIN=-20 -D MAX=20 -E -o main.i
	gcc main.i -S -o main.s
	gcc main.s -c -o main.o
	gcc comparators.c -lm -E -o comparators.i
	gcc comparators.i -S -o comparators.s
	gcc comparators.s -c -o comparators.o
	ar -rcs libcomparators.a comparators.o
	gcc comparators.o -fPIC -shared -o libcomparatorsdyn.so
	export LD_LIBRARY_PATH=`pwd`
	gcc main.o -L ./ -l comparators -o static.out
	gcc main.o -L ./ -l comparatorsdyn -o dynamic.out
