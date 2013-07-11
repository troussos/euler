#include <stdio.h>
int main(){
	int largest;
	int i,j,sum;
	char c[7];
	
	for(i=100;i<1000;i++){
		for(j=100;j<1000;j++){
			sum = i*j;
			sprintf(c, "%d" ,sum);
			if(c[0] == c[5] && c[1] == c[4] && c[2] == c[3]){
				if(largest < sum)
					largest = sum;
				printf("%i\n",sum);
			}
		}
	}
	printf("\nLargest: %i\n", largest);
	return 0;
}

//cycle through numbers
//check if it is a palidrone
//if it is, make answer so
//go to next