#include<stdio.h>
#include<string.h>
#include<stdbool.h>

long long powI(int base, int power){
	int i;
	int j;
	long long res = 1;
	for(i=0; i<power; i++){
		res*=base;
	}
	return res;
}

long long convertToDecimal(number, inBase){
	
	
	
}


int checkPoint(string number){
	int res=0;
	int i;
	for(i=0; i<strlen(number); i++){
		if(number[i]!='.'){
			res++;	
		}else{
			break;
		}
	}
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
	printf("Potencia 3 a la 5 %lld\n",powI(3,5));
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
			
			
		}
		
	}
	
}
