#include <stdio.h>

int main(){

	int upper,i,j,k;
	printf("Enter the upper limit, 11 is the minimum.");
	scanf("%d",&upper);
	
	k=0;

	for(i=2;;i+=2){
		for(j=upper;j>9;j--){
			if(j == 10)
				k = 1;		
			if(i%j != 0)
				break;
			}
		if(k == 1)
			break;
	}

	printf("%d \n",i);
		
	return 0;
}
