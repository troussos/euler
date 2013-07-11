#include <stdio.h>

int main(){
	int upper,sum,mul1,mul2,lower,i;
	
	printf("Enter the upper limit, the lower limit, the first multiple, then the second multiple.");	
	scanf("%d %d %d %d",&upper,&lower,&mul1,&mul2);
	sum = 0;

	for(i=lower;i<upper;i++){
		if((i%mul1 == 0) || (i%mul2 == 0))
			sum+=i;
	}

	printf("%d \n",sum);

	return 0;
}
