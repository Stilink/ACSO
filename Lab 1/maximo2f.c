#include <stdio.h>

int main(){
	double num1;
	double num2;
	double maximo;
	scanf("%lf",&num1);
	scanf("%lf",&num2);
	if(num1>num2 || num1==num2){
		maximo = num1;
	}else{
		maximo = num2;
	}
	printf("%lf",maximo);
}
