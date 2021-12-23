//立方体类，属性为长宽高，行为为表面积、体积，并比较两个立方体是否相等.
#include <iostream>
#include <string>
using namespace std;

class Cube{
private:
   double Length;
   double Width;
   double Height;

public:
   void Set(double length,double width,double height){
      Length = length;
      Width = width;
      Height = height;
   }

   double Get(){
      return Length,Width,Height;
     // return Width;
     // return Height;
   }

   double S(){
      return 2*(Length * Width + Length * Height + Width * Height);
   }

   double V(){
      return Length * Width * Height;
   } 
};

bool Equivalent(Cube &c1, Cube &c2){   //利用引用，不会拷贝一份新数据，直接使用原始数据
   if( c1.Get() == c2.Get() ){
      return true;
   }
   return false;
}

int main(){
   Cube c1,c2;
   c1.Set(2,3,4);
   c2.Set(4,3,2);
   cout << "S= " << c1.S() << "\nV= " << c1.V() <<endl;

   Equivalent(c1,c2);
   if(Equivalent(c1,c2)){
      cout << "c1和c2是相等的" << endl;
   }
   else{
      cout << "c1和c2不相等" << endl;
   }
}
