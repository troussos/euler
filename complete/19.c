#include <stdio.h>

int main(){

	int count = 0;
	int r,i,j;


	for(i=1901; i<2001; i++){
		for(j=1; j<13; j++){
		r = dayofweek(i,j,1);	
		if(r == 0)
			count++;
		}
	}
	printf("The final count of Sundays is: %d\n",count);
	return 0;

}

int dayofweek(int y, int m, int d)	/* 0 = Sunday */
{
	static int t[] = {0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4};
	y -= m < 3;
	return (y + y/4 - y/100 + y/400 + t[m-1] + d) % 7;
}

