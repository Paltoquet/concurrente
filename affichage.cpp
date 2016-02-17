#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <iostream>
#include "affichage.hpp"

using namespace std;
using namespace cv;

int first=0;

void resize(Mat* img,int x,int y){
	Mat tmp;
	//0 0 gere le redimensionement niquel
	resize(*img,tmp,Size(x,y),0,0,INTER_CUBIC);
	*img=tmp;
}

void remplir(Mat* img,int* tab,int size, int temp){
int i;
int k;

for(i=0 ; i < size ; i++){
	//printf("valeur decale %d\n",tab[i*size+3]);
	for(k = 0 ; k < size ; k++){
		int value=255-((float)(tab[i*size+k]/(float)temp))*255;
		Vec3b& color=img->at<Vec3b>(i,k);
		color[0]=value;
		color[1]=value;
		color[2]=255;
		}
	}
}

void aff(Mat m,int size){
int i,k;

for(i=0 ; i < size ; i++){
	printf("\n");
	//printf("valeur decale %d\n",tab[i*size+3]);
	for(k = 0 ; k < size ; k++){
		Vec3b& color=m.at<Vec3b>(i,k);
		printf("color: %d,%d,%d\t",color[0],color[1],color[2]);		
		}
	}


}
 
void createMat(Mat* img,int size){
	Scalar blanc=Scalar(255,255,255);
	(*img)=Mat(Size(size,size),CV_8UC3,blanc);
	printf("avant ligne %d, colone %d",img->rows,img->cols);
}

void afficher(Mat m){
	if(!first){
	namedWindow("display",WINDOW_AUTOSIZE);
	}
	first=1;
	imshow( "display", m );
	waitKey(100);
}

void display(int taille,int* tab,int temperature){
		Mat affichage;
		createMat(&affichage,taille);
		remplir(&affichage,tab,taille,temperature);
		//aff(affichage,8);
		resize(&affichage,500,500);
		afficher(affichage);
}


/*
int main( int argc, const char** argv )
{
	//BGR
    Scalar blanc=Scalar(255,255,255);
	Mat img(Size(900,900),CV_8UC3,blanc);
	//int sz[300];
	//Mat img(2,sz,CV_8UC(1),Scalar::all(0));
	img=blanc;
	//resize(&img,300,300);
	remplir(img,130,130,170,170);
	Mat show;
	//cout << img <<endl;
	//normalize(img,show,0,1,NORM_MINMAX);
	namedWindow("display",WINDOW_AUTOSIZE);
	imshow( "display", img );
	waitKey(0);
    return 0;
}*/


