#include <stdio.h>
#include <math.h>

int main(){
	printf("Ingrese los dos numeros que desea operar.\n");
	double num1;
	double num2;
	scanf("%lf",&num1);
	scanf("%lf",&num2);
	int opcion;
	printf("Seleccione la operacion deseada\n");
	printf("Sumar - 1\n");
	printf("Restar - 2\n");
	printf("Multiplicar - 3\n");
	printf("Dividir - 4\n");
	scanf("%d",&opcion);
	double res;
	if(opcion==1){
		res = suma(num1, num2);
	}else if(opcion==2){
		res = resta(num1, num2);
	}else if(opcion==3){
		res = multiplicacion(num1, num2);
	}else if(opcion==4){
		res = division(num1, num2);
	}
	printf("%lf", res);
}


suma(double a, double b){
	return a+b;
}

resta(double a, double b){
	return a-b;
}

multiplicacion(double a, double b){
	return a*b;
}

division(double a, double b){
	double cf = 10e-5;
	if(fabs(b)<cf){
		printf("No es posible dividir %lf, por cero.\n",a);
		return 0;
	}else{
		return a/b;
	}
}


