#include <stdio.h>

int main(){

	int current,cindex,i,factors;
	int j;

	cindex = 1;
	current = 1;

	while(1){
		factors = 0;
		cindex++;
		current += cindex;

		for(i=1;i<=(cindex/2);i++){
			if(current % i == 0)
				factors++; 
		}
		if(factors >= 250)
			break;
	}
	
	printf("%d \n",current);
	return 0;
}

