#include <stdio.h>

int main(){
	
	int upper, sum, term1, term2, term3,i;
	printf("Enter the upper limit.");
	scanf("%d",&upper);

	term1 = 1;
	term2 = 2;
	term3 = 3;
	sum = 2;

	for(i=3;i<=upper;i=term3){
		if(term3%2 == 0)
			sum += term3;
		term1 = term2;
		term2 = term3;
		term3 = term1 + term2;
	}
	
	printf("%d \n",sum);

	return 0;

}
