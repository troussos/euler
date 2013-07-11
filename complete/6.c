#include <stdio.h>

int main(){
	int upper,sumof,squareof,i,diff;

	printf("Enter upper limit.");
	scanf("%d",&upper);
	
	sumof = 0;
	squareof = 0;
	
	for(i=1;i<=upper;i++){
		sumof += i * i;
		}

	for(i=1;i<=upper;i++){
		squareof += i;
		}

	squareof *= squareof;

	diff = squareof - sumof;

	printf("%d \n",diff);	

	return 0;
}
