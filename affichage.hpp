#include "opencv2/objdetect.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <iostream>



void resize(cv::Mat* img,int x,int y);
void remplir(cv::Mat* img,int* tab,int size, int temp);
void afficher(cv::Mat m);
void display(int taille,int* tab,int temperature);
void displayFin(int taille,int* tab,int temperature);

