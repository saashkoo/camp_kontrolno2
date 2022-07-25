#include <stdio.h>
#include <string.h>

char tran(char a){
	switch(a){
	case '0':return '!';
	case '1':return '#';
	case '2':return '/';
	case '3':return '~';
	case '4':return '=';
	case '5':return '`';
	case '6':return '\\';
	case '7':return '>';
	case '8':return '.';
	case '9':return ',';
	}

}

void transform(char* c, int size){
	int flag = -1;
	if(1==size%2){size--;flag = 1;}
	for(int i = 0; i <= size; i+=2){
		c[i] = 'A' - '0' + c[i];
	}
	for(int i = 1; i <= size + flag; i +=2){
		c[i] = tran(c[i]);
	}
}

int main(){
	char in[501];
	fgets(in, 500, stdin);
	/*for(int i = 0;i < 499; i++){
		in[i] = '9';
	}
	in[499] = '\0';*/
	transform(in, strlen(in));
	for(int i = 0;i < strlen(in); i++){
		printf("%c", in[i]);
	}
	printf("\n");
	
	return 0;
}
