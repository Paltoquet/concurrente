#include <unistd.h>
#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <iostream>
#include <time.h>
#include "affichage.hpp"
#include "math.h"



#ifdef __cplusplus
extern "C"
{
#endif
  void display(int,int*,int);;
#ifdef __cplusplus
};
#endif

int TEMPERATURE=3000;
float record[10];

typedef struct{
	int x;//ligne
	int y;//colonne
}Couple;

void remplir(int* tab,Couple hautgauche,Couple basdroite, int taille){
	int i;
	int k;
	// printf("g: (%d,%d), d:(%d,%d)",hautgauche.x,hautgauche.y,basdroite.x,basdroite.y);
	for(i=hautgauche.x;i<=basdroite.x;i++){
		for(k=hautgauche.y;k<=basdroite.y;k++){
			tab[k*taille+i]=TEMPERATURE;
			// printf("%d\n",tab[k*taille+i]);
		}
	}
}

float calculerTemps(){
	float r=record[0];
	int i;
	for(i=1;i<10;i++){
		if(record[i]<r){
			r+=record[i];
		}
	}
	//r-=min(record,10);
	//r-=max(record,10);
	return r;
}

void init(int* tab, int taille){
	int i;
	for(i = 0; i < taille; ++i)
		tab[i] = 0;
}

void afficher(int* tab,int taille){
	int i,j;
	for(i=0;i<taille;i++){
		for(j=0;j<taille;j++)
			printf("%d\t",tab[i * taille + j]);
		printf("\n");	
	}
}

float nouvelleValeurV(int laCase, int caseHaut, int caseBas, int coeficient){
	int result = (caseBas + laCase * (coeficient - 2) + caseHaut) / coeficient;
	return result;
}
float nouvelleValeurH(int laCase, int caseGauche, int caseDroite, int coeficient){
	int result = (caseGauche + laCase * (coeficient - 2) + caseDroite) / coeficient;
	return result;
}


int main(int argc,char*argv[]){
	//int nb = atoi(argv[1]);
	//int longueur = 2<<(atoi(argv[2])-1);
	
	int opt;
	int nb_iteration=10;
	int taille = 10;
	int temps=0;
	int affichage_temperature=0;
	int etape=0;
	
	 while ((opt = getopt(argc, argv, "s:mai:e")) != -1) {
	 	switch(opt){
	 		case's':
				//2^(s+4)
	 			taille=2 << (atoi(optarg)+3);
	 			break;
	 		case'm':
	 			temps=1;
	 			break;
	 		case'a':
	 			affichage_temperature=1;
	 			break;
	 		case'i':
	 			nb_iteration=atoi(optarg);
			case'e':
				etape=atoi(optarg);
				break;
			case't':
				break;
	 		break;
	 	}			
	 }
	printf("nombre iteration: %d, taille %d, affichage temperature %d,temps d execution %d",
		nb_iteration,taille,affichage_temperature,temps);
	
	int c=6;
	int cycle=10;
	//taille=7;
	//nb_iteration=30;

	/*mesure du temps*/
	clock_t start, end;
	double cpu_time_used;
	start = clock();

	int* tab=(int*)malloc((taille*taille)*sizeof(int));
	int* result=(int*)malloc((taille*taille)*sizeof(int));
	init(tab, taille);
	printf("\ntaille: %d\n",taille);

	//centre ou la chaleur est fixe, ligne, colonne
	int milieuG=(taille/2)-taille/20;
	int milieuD=(taille/2)+taille/20;
	Couple x={milieuG,milieuG};
	Couple y={milieuD,milieuD};
	//afficher(tab,taille);
	remplir(tab,x,y,taille);
	//display(taille,tab,TEMPERATURE);
	printf("\nApres remplissage\n");
	//afficher(tab,taille);
	
	//itération
	int k;
	int j;
	int i;
	for(i=1;i<=nb_iteration;i++){
		//bord du tableau
		//printf("\niteration %d :\n",i);
		for(k = 1;k < (taille - 1); ++k){
			for(j = 1; j < (taille - 1); ++j){
				//horizontal
				result[k * taille + j] = nouvelleValeurH(tab[k * taille + j], tab[k * taille + j - 1],
					tab[k * taille + j + 1], c);
			}
		}
		int* tmp=tab;
		tab = result;
		result=tmp;
		for(k = 1;k < (taille - 1); ++k){
			for(j = 1; j < (taille - 1); ++j){
				//vertical
				result[k * taille + j] = nouvelleValeurV(tab[k * taille + j], tab[(k - 1) * taille + j],
				 tab[(k + 1) * taille + j], c);
			}
		}

		tmp=tab;
		tab = result;
		remplir(tab,x,y,taille);
		afficher(tab,taille);
		display(taille,tab,TEMPERATURE);
		result=tmp;
	}
	//printf("Apres boucle\0");
	//display(taille,tab,TEMPERATURE);
	free(tab);
	free(result);

	end = clock();
	if(temps){
	//nombre de clock divisé par la fréquence
	cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	printf("temps de calcul %f\n",cpu_time_used);
	//record[p]=(float)cpu_time_used;
	}
	//int m=malloc(taille*taille*sizeof(int));
	//m[i][c]=m[i*taille+c]

	return 0;
}
