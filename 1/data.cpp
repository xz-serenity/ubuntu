#include <iostream>
#include <fstream>
#include <string>
#include <random>
#include <math.h>
	

//void output_txtfile(int);
//
//const int NN = 100;		//	number of nodes
//const int ND = 10000;	//	number of demands
//const int M = 5;

//
//const int NN = 200;		
//const int ND = 40000;	
//const int M = 10;
//
//const int NN = 300;		
//const int ND = 90000;	
//const int M = 15;
//
//const int NN = 400;		
//const int ND = 160000;	
//const int M = 20;
//
//const int NN = 500;		
//const int ND = 2500000;	
//const int M = 30;
//
//const int NN = 600;		
//const int ND = 3600000;	
//const int M = 40;
//
//const int NN = 700;		
//const int M = 50;
//
//const int NN = 800;		
//const int ND = 640000;	
//const int M = 75;
//
//const int NN = 900;		
//const int ND = 810000;	
//const int M = 100;

const int NN = 100;		//	number of nodes
const int ND = 10000;	//	number of demands
const int M = 5;
const int TMAX = 8;
using namespace std;

float twoPointDistance(float x1, float y1, float x2, float y2);
int main()
{	
	int i, j, k, temp;
	
	int 	T[30][3];				//	
	int		d[3] = {1, 3, 5}; 		//	
	double 	L[3] = {0.1, 0.3, 0.5};	//	driver tolerance
	
	float 	x[NN] = {0};	//	×ø±ê 
	float 	y[NN] = {0};
	float 	r[NN] = {0};	//	coverage distance
	
	double	dist[NN][NN] = {0.0};
	
	ofstream	outFile;
	string		txt_str = "";
	
	txt_str = to_string(NN);
	
	outFile.open("data"+txt_str+"_nm.txt");
	outFile << NN << " |N|\n" << NN*NN << " |Q|\n" << M << " m\n" << TMAX << " tmax\n";
	outFile.close();
	
	
	std::default_random_engine		generator;
	std::uniform_real_distribution<double>	distribution(0.0, 25.0);
//	std::uniform_int_distribution<int> di();
	
	
	outFile.open("data"+txt_str+"_GN.txt");
	for (i = 0; i < NN; i++)
	{
		x[i] = distribution(generator);
		y[i] = distribution(generator);
		outFile << i+1 << " " << x[i] <<" " << y[i] << " "<< d[rand()%3]<< endl;
	}
	outFile.close();
    	
	outFile.open("data"+txt_str+"_GA.txt");	
	for (i = 0; i < NN; i++)
	{
		for (j = 0; j < NN; j++)	//	»ò j < i
		{
			outFile << i+1 << " " << j+1 <<" " 
			<< twoPointDistance(x[i],y[i],x[j],y[j]) << endl;	
		}
	}
	outFile.close();
	
	
	temp = 0;
	for (i=1;i<7;i++)
	{
		for (j=1;j<3;j++)
		{
			for(k=1;k<5;k++)
			{
				if(i+k+j<9)
				{
					T[temp][0] = i;
					T[temp][1] = j;
					T[temp][2] = k;
					temp++;
				}
			}
		}
	}

	outFile.open("data"+txt_str+"_Qodft.txt");
	temp = 1; 
	for (i = 0; i < NN; i++)
	{
		for (j = 0; j < NN; j++)	//	»ò j < i
		{
			outFile << temp++ << " " << i+1 << " " << j+1 ;	//	o and d	
			outFile << " " << rand()%100 + 1;		//	f
			outFile << " " << T[rand()%24][0];
			outFile << " " << T[rand()%24][0];
			outFile << " " << T[rand()%24][0];
			outFile << " " << L[rand()%3] << endl;
		}
	}
	outFile.close();
	

	return 0;
}


float twoPointDistance(float x1, float y1, float x2, float y2)
{
	return pow(pow(x1-x2,2)+pow(y1-y2,2),0.5);
}

