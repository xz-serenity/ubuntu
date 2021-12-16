#include <iostream>
#include <fstream>
#include <random>
#include <string>
#include <math.h>
using namespace std;

const int NN = 40; //number of N
const int SS = 2000; //number of S
const int DD = 10; //number of D


int main()
{
   int i, j, k, temp;
         
   int T[30][3];
   int d[3] = { 1,2,3 };
   double L[3] = { 0.1,0.3,0.5 };

   int b[NN] = { 0 };

   ofstream outFile;
   string txt_str = "";

   txt_str = to_string(NN);

   std::default_random_engine  random(time(NULL));
   std::uniform_int_distribution<int> dis1(1, 100); //c[N,D]~U(1,100)
   std::uniform_int_distribution<int> dis2(1, 50); //g[S,D]~U(1,50)
   std::uniform_int_distribution<int> dis3(1, 100); //b[N]~U(1,100)


   outFile.open("probab" + txt_str + "file1.txt");
   outFile << NN << " " <<"|N|\n" << SS << " "<< "|S|\n" << DD << " " << "|D|\n" <<endl;
   outFile.close();
                                                   

   outFile.open("probab" + txt_str + "file2.txt");
   for (i = 1; i <= NN; i++)
   {
      outFile << i << " " << dis3(random) << endl;
   }
   outFile.close();

   outFile.open("probab" + txt_str + "file3.txt");
   for (i=1; i <= NN; i++)
   {
      for (j = 1; j <= DD; j++)
      {
         outFile << i << " " << j << " " << dis1(random) <<endl;
      }
   }
   outFile.close();

   outFile.open("probab" + txt_str + "file4.txt");
   for(i=1; i<=SS; i++)
   {
      for (j = 1; j <= DD; j++)
      {
         outFile << i << " " << j << " " << dis2(random) <<endl;
      }

   }
   outFile.close();


   return 0;
}
