#include <math.h>
#include <stdio.h>
#include "comparators.h"

int asc(const void *a, const void*b){
	if(0.000001 > fabs(*(double*)a-*(double*)b)){return 0;}
	else{
		if(*(double*)a > *(double*)b){return 1;}
		else{return -1;}
	}
}

int desc(const void *a, const void*b){
	if(0.000001 > fabs(*(double*)a-*(double*)b)){return 0;}
	else{
		if(*(double*)a > *(double*)b){return -1;}
		else{return 1;}
		}
}

int sum_num(const void *a, const void*b){
	int aa = (int)fabs(*(double*)a);
	int bb = (int)fabs(*(double*)b);
	//printf("  %d, %d\n", aa, bb);
	int as = 0;
	int bs = 0;
	while(aa){
	as+= aa%10;
	aa=aa/10;
	}
	while(bb){
	bs+= bb%10;
	bb=bb/10;
	}//printf("%d, %d\n", as, bs);
	return as - bs;
}

int abbs(const void *a, const void*b){
	if(0.000001 > fabs(fabs(*(double*)a)-fabs(*(double*)b))){return 0;}
	else{
		if(fabs(*(double*)a) > fabs(*(double*)b)){return 1;}
		else{return -1;}
	}
}

