#include <unistd.h>
#include "sys/types.h"
#include "sys/sysinfo.h"
#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <sys/resource.h>
#include <iostream>
#include <time.h>
#include "affichage.hpp"



extern "C"{
#include "math.h"
}

int TEMPERATURE=3000;
float record[10];


void display(int,int*,int);

typedef struct{
	int x;//ligne
	int y;//colonne
}Couple;

/*
	remplie le centre de la cellule en fonction des couples fournies
*/
void remplir(int* tab,Couple hautgauche,Couple basdroite, int taille){
	int i;
	int k;
	for(i=hautgauche.x;i<=basdroite.x;i++){
		for(k=hautgauche.y;k<=basdroite.y;k++){
			tab[k*taille+i]=TEMPERATURE;
		}
	}
}

int parseLine(char* line){
        int i = strlen(line);
        while (*line < '0' || *line > '9') line++;
        line[i-3] = '\0';
        i = atoi(line);
        return i;
    }
    

int getValue(){ //Note: this value is in KB!
        FILE* file = fopen("/proc/self/status", "r");
        int result = -1;
        char line[128];
    

        while (fgets(line, 128, file) != NULL){
            if (strncmp(line, "VmSize:", 7) == 0){
                result = parseLine(line);
                break;
            }
        }
        fclose(file);
        return result;
    }
void afficherRam(struct sysinfo* memInfo){
		sysinfo (memInfo);
		long virtualMemUsed = memInfo->totalram - memInfo->freeram;
		printf("Utilisation en cours de la RAM = %ld mb \n",virtualMemUsed/1024/1024);
		printf("Utilisation ram du processes= %d mb",getValue()/1024);
}
/*
	calcul le temps moyen à partir du tableau de record, on enleve les 2 resultats extremes
*/
float calculerTemps(){
	int i;
	float r;
	for(i=0;i<10;i++){
		r+=record[i];
	}
	r-=min(record,10);
	r-=max(record,10);
	return r/8;
}

/*
	remplie le tableau, on utilise calloc qui fait la même chose
*/
void init(int* tab, int taille){
	int i;
	for(i = 0; i < taille; ++i)
		tab[i] = 0;
}

/*
	affichage primitif du tableau
*/
void afficher(int* tab,int taille){
	int i,j;
	for(i=0;i<taille;i++){
		for(j=0;j<taille;j++)
			printf("%d\t",tab[i * taille + j]);
		printf("\n");	
	}
}


/*
	applique la méthode de Taylor verticalement
*/
float nouvelleValeurV(int laCase, int caseHaut, int caseBas, int coeficient){
	int result = (caseBas + laCase * (coeficient - 2) + caseHaut) / coeficient;
	return result;
}
/*
	applique la méthode de Taylor horizontalement
*/
float nouvelleValeurH(int laCase, int caseGauche, int caseDroite, int coeficient){
	int result = (caseGauche + laCase * (coeficient - 2) + caseDroite) / coeficient;
	return result;
}


int main(int argc,char*argv[]){

	//tableau contenant les tailles a executer
	int* tab_taille;
	int nb_appel;

	struct rusage r_usage;
	struct sysinfo memInfo;

	int opt;
	int nb_iteration=10000;
	int taille = 10;
	int temps=1;
	int affichage_temperature=0;
	int etape=0;
	char* val;
	
	 while ((opt = getopt(argc, argv, "s:mt:ai:e:")) != -1) {
	 	switch(opt){
	 		case's':
				//2^(s+4)
				val=optarg;
				nb_appel=remplir_taille(&tab_taille,val);
				int i;
	 			break;
	 		case'm':
	 			temps=1;
	 			break;
	 		case'a':
	 			affichage_temperature=1;
	 			break;
	 		case'i':
	 			nb_iteration=atoi(optarg);
				break;
			case'e':
				break;
			case't':
				break;
	 	}			
	 }
	printf("nombre iteration: %d, taille %s, affichage temperature %d,temps d execution %d\n",
		nb_iteration,val,affichage_temperature,temps);
	
	int c=6;
	//nombre de mesure
	int cycle=10;

	/*mesure du temps*/
	clock_t start, end;
	double cpu_time_used;
	int m;
	int p;
	int k;
	int j;
	int i;
	for( m = 0 ; m < nb_appel ; m++ ){
		//lance le compteur
		//taille 2^s+4
		taille= 2 << (tab_taille[m]+3);
		printf("taille du probleme %d\n",taille);
		for( p = 0 ; p < cycle ; p++ ){
			start = clock();
			//on utilise 2 tableaux, le précédant et le suivant
			int* tab=(int*)calloc((taille*taille),sizeof(int));
			int* result=(int*)calloc((taille*taille),sizeof(int));
			//init(tab, taille);

			//calcul du centre ou la chaleur est fixe, ligne, colonne
			int milieuG=(taille/2)-taille/20;
			int milieuD=(taille/2)+taille/20;
			Couple x={milieuG,milieuG};
			Couple y={milieuD,milieuD};
			remplir(tab,x,y,taille);

			for(i=1;i<=nb_iteration;i++){
				//on applique la formule horizontalement dans toute la matrice
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

				//puis verticalement
				for(k = 1;k < (taille - 1); ++k){
					for(j = 1; j < (taille - 1); ++j){
						//vertical
						result[k * taille + j] = nouvelleValeurV(tab[k * taille + j], tab[(k - 1) * taille + j],
						 tab[(k + 1) * taille + j], c);
					}
				}

				//on echange le précédant avec le suivant
				tmp=tab;
				tab = result;
				remplir(tab,x,y,taille);
				//afficher(tab,taille);
				result=tmp;
			}
			/*if(p==0){
			afficher(tab,taille);
			}*/

			//displayFin(taille,tab,TEMPERATURE);
			//on free pour recommencer depuis le début sans alterner les performances
			afficherRam(&memInfo);
			free(tab);
			free(result);
			end = clock();
			if(temps){
				//nombre de clock divisé par la fréquence
				cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
				printf("temps de calcul %f\n",cpu_time_used);
				record[p]=(float)cpu_time_used;
				}
		}
		printf("temps moyen après 10 executions %f avec pour taille %d\n",calculerTemps(),taille);
		getrusage(RUSAGE_SELF,&r_usage);
    	printf("Utilisation maximal de la mémoire = %ld mb d\n",r_usage.ru_maxrss);
	}

	return 0;
}
