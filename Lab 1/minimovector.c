#include <stdio.h>

int main(){
	int tama;
	scanf("%d",&tama);
	double vector[tama+10];
	int i = 0;
	while(i<tama){
		scanf("%lf",&vector[i]);
		i++;
	}
	
	double min = vector[0];
	i = 0;
	while(i<tama){
		if(min>vector[i]){
			min = vector[i];	
		}
		i++;
	}
	
	printf("%lf",min);
}
