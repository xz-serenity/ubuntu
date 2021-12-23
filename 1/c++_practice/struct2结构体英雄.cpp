//英雄结构体，成员包括姓名，年龄，性别；创建结构体数组，通过冒泡排序对年龄进行升序排列

#include <iostream>
#include <string>
using namespace std;

struct Hero{ string name; int age; string gender; };

void bubblesort(struct Hero HeroArray[], int len){
   for (int i=0; i<len-1; i++){
      for (int j=0; j<len-1-i; j++){
         if (HeroArray[j].age > HeroArray[j+1].age){
            struct Hero temp = HeroArray[j];
            HeroArray[j] = HeroArray[j+1];
            HeroArray[j+1] = temp;
         }
      }
   }
}

void PrintHero(struct Hero HeroArray[], int len){
   for (int i=0; i< len; i++){
      cout << "姓名： " << HeroArray[i].name << "\t年龄： " 
           << HeroArray[i].age << "\t性别： " << HeroArray[i].gender << endl;
   }
}

int main(){
   struct Hero HeroArray[5] = {
      {"刘备",30,"男"},{"关羽",28,"男"},{"张飞",26,"男"},{"赵云",24,"男"},{"貂蝉",22,"女"},
   };
   int len = sizeof(HeroArray) / sizeof(HeroArray[0]);
   bubblesort (HeroArray,len);
   PrintHero (HeroArray,len);
   return 0;
}
