#include <stdio.h>


int tama;
int sum=0;
int vector[100000];
int main(){
	escribir();
	suma();
	
}

void leerVector(){
	scanf("%d",&tama);
	int i = 0;
	while(i<tama){
		scanf("%d",&vector[i]);
		i++;
	}
	
}

void suma(){
	int i = 0;
	while(i<tama){
		sum=sum+vector[i];
		i++;
	}
	printf("%d",sum);
}

void escribir(){
	printf("Digite valores para el vector.\n");
	leerVector();
}
