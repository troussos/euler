#include <stdio.h>
int main(){
	int flag;
	unsigned long long number, i, j;
	number = 0;
	for(i=2;i<999999999;i++){
		flag = 1;
		for(j=2;j*j<=i;j++){
			if(i % j == 0 && i != j){
				flag = 0;
				break;
			}
		}
		if(flag == 1){
			number++;
			printf("\n%llu - %llu",number,i);
			if(number == 10001)
				break;
		}
	}
	return 0;
}