#include<stdio.h>
#include<string.h>
#include<stdbool.h>

long long powI(int base, int power){
	int i;
	long long res = 1;
	for(i=0; i<power; i++){
		res*=base;
	}
	return res;
}

long long convertToDecimal(char number[65], int inBase){
	int indexOfPoint = checkPoint(number);
	//Parte entera
	int i;
	long long partInt=0;
	int val;
	for(i=0; i<indexOfPoint; i++)	{
		if('0'<=number[i] && '9'>=number[i]){
			val = number[i]-'0';

		}else if('A'<=number[i] && 'Z'>=number[i]){
			val = 10 + (number[i]-'A');
		}
		partInt+=val*(powI(inBase, indexOfPoint-(i+1)));
	}
	printf("La parte entera del numero %s de base %d a base 10 es: %lld\n",number,inBase,partInt);
	//Final de la parte entera


	/*//Parte Decimal
	int potenciaDenominador = (strlen(number)-(indexOfPoint+1));
	int potenciaNumerador = 1;
	long long numerador = 0;
	long long denominador = powI(inBase, potenciaDenominador);
	/*printf("Potencia tentativa para el numero %s es: %d\n",number,potenciaDenominador);
	printf("El denominador del mismo es: %lld\n \n",denominador);
	for(i=indexOfPoint+1; i<strlen(number);i++){
		if('0'<=number[i] && '9'>=number[i]){
			val = number[i]-'0';

		}else if('A'<=number[i] && 'Z'>=number[i]){
			val = 10 + (number[i]-'A');
		}
		numerador+= val*(powI(inBase, potenciaNumerador));
		potenciaNumerador++;
	}
	printf("Numerador %lld y denominador %lld\n",numerador,denominador);
	/*long double num = (long double) numerador;
	long double den = (long double) denominador;
	long double Int = (long double)partInt;
	long double division = (numerador*1.0L)/(denominador*1.0L);

	//Final parte decimal

	//printf("El numero %s en base %d, cambiado a base 10 es %.20Lf \n",number,inBase,((partInt*1.0L)+division);*/

}


int checkPoint(char number[65]){
	int res=0;
	int i;
	for(i=0; i<strlen(number); i++){
		if(number[i]!='.'){
			res++;
		}else{
			break;
		}
	}

	return res;
}

bool testBase(int inBase, char number[65]){
	int i;
	for(i=0; i<strlen(number);i++){
		if('0'<=number[i] && '9'>=number[i]){
			int val = number[i]-'0';
			if(inBase<=val){
				return false;
			}
		}else if('A'<=number[i] && 'Z'>=number[i]){
			int val = 10 + (number[i]-'A');
			if(inBase<=val){
				return false;
			}
		}


	}
	return true;
}

int main(){
	freopen("in.in","r",stdin);
	freopen("out.out","w",stdout);
	int cases;
	char number[65];
	char _;
	int inBase;
	int toBase;
	scanf("%d",&cases);
	int cas;
	for(cas = 0; cas<cases; cas++){
		scanf("%d",&inBase);
		scanf("%c",&_);
		scanf("%s",&number);
		scanf("%c",&_);
		scanf("%d",&toBase);
		if(inBase<2 || inBase>36){
			printf("Error base origen\n");
			continue;
		}else if(!testBase(inBase, number)){
			printf("Error numero\n");
			continue;
		}else if(toBase>36 || toBase<2){
			printf("Error base destino\n");
			continue;
		}else{
			if(inBase == toBase){
				printf("%s\n",number);
				continue;
			}
			convertToDecimal(number, inBase);


		}

	}

}
