int main(){
	int flag;
	unsigned long long number, top, i, j;
	number = 600851475143;
	
	for(i=2;i<number;i++){
		flag = 1;
		for(j=2;j*j<=i;j++){
			if(i % j == 0 && i != j){
				flag = 0;
				break;
			}
		}
		if(flag == 1){
			if(number % i == 0){
				top = i;
				printf("%i\n",top);
			}
		}
	}
	printf("%i\n",top);
	return 0;
}