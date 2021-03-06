#include <unistd.h>
#include <stdio.h>    
#include <stdlib.h>
#include <string.h> 
#include "math.h"



float min(float* tab,int size){
	float r=tab[0];
	int i;
	for(i=1;i<size;i++){
		if(tab[i]<r){
			r=tab[i];
		}
	}
	return r;
}

float max(float* tab,int size){
	float r=tab[0];
	int i;
	for(i=1;i<size;i++){
		if(tab[i]>r){
			r=tab[i];
		}
	}
	return r;
}

/*
	donne la puissance de  10 majorant un entier 024 -> 3, nos paramettres  depassent pas 1O¹⁰
	algorithme provenant de:http://stackoverflow.com/questions/3068397/finding-the-length-of-an-integer-in-c
	plus rapide qu'un log10 dans certaines situations.
*/
int size_entier(int x){
    // this is either a fun exercise in optimization 
    if(x>=100000) {
        if(x>=10000000) {
            if(x>=1000000000) return 10;
            if(x>=100000000) return 9;
            return 8;
        }
        if(x>=1000000) return 7;
        return 6;
    } else {
        if(x>=1000) {
            if(x>=10000) return 5;
            return 4;
        } else {
            if(x>=100) return 3;
            if(x>=10) return 2;
            return 1;
        }
    }
}

/*
	remplie un tableau par l entier et renvoie la taille du tableau
*/
int remplir_taille(int** tab,char* nb){
	//int size=size_entier(a);
	int size=strlen(nb);
	(*tab)=malloc(size*sizeof(int));
	int i;
	for(i=0;i<size;i++){
		(*tab)[i]=nb[i]-48;
	}
	return size;
	/*int a=atoi(nb);
	if(nb[0]=='0'){
		(*tab)[0]=0;
		int i;
		int div=1;
		for(i=1;i<size;i++){
			printf("%d %dval %d\n",i,a/div,a/div%10);
			(*tab)[i]=a/div%10;
			div=div*10;
		}
	}
	else{
	int i;
	int div=1;
	for(i=0;i<size;i++){
		(*tab)[i]=a/div%10;
		div=div*10;
		}
	}*/
}


