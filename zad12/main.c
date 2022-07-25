#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "comparators.h"

//void qsort(void *base, size_t nmemb, size_t size,
//                  int (*compar)(const void *, const void *));

double generate(double m, double n){
	return m+((double)rand()/RAND_MAX)*(n-m);
}

int main(){
	double a[COUNT];
	srand(clock());
	for(int i = 0; i < COUNT; i++){
		a[i] = generate(MIN, MAX);
	}
	for(int i = 0; i< COUNT; i++){
		printf("%lf ", a[i]);
	}
	printf("\n");
	int compar;
	int (*compars[4])(const void*, const void*) = {&asc, &desc, &sum_num, &abbs};
	scanf("%d", &compar);
	qsort(a, COUNT, sizeof(double), *compars[compar]);
	for(int i = 0; i< COUNT; i++){
		printf("%lf ", a[i]);
	}
	printf("\n");
	return 0;

}
