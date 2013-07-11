#include <stdio.h>
#include <math.h>

#define limit 2000000

int isPrime(int num);

int main(){

	
	int i;
	long sum;
	sum = 0;
	
	for(i=3;i<limit;i++){
		if(isPrime(i) == 1){
			printf("%d \n",i);
			sum += i;
		}
	}

	sum += 2;
	
	printf("%d \n",sum);

	return 0;
}

int isPrime(int num){

	int output,i;
	
	output = 1;

	for(i=3;i<=sqrt(num);i++){
		if(num % i == 0){
			output = 0;
			break;
			}
	}

	return output;
}
