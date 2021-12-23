//创建人类，包含姓名，年龄，体重；姓名可读可写，年龄只读，体重只写
#include <iostream>
#include <ostream>
#include <string>
using namespace std;

class Person{
private:
   string Name;
   int Age;
   int Weight;

public:
   void SetName(string name){   //姓名可写
      Name = name;
   }
   
   string GetName(){   //姓名可读
      return Name;
   }

   int GetAge(){   //年龄只读
      return Age;
   }

   void SetAge(int age){   //在正常范围修改年龄，保证有效性
      if (age < 0 || age > 100){
         return;
      }
   Age = age;
   }
 
   void SetWeight (int weight){   //体重只写
      Weight = weight;
   }
};

int main(){
   Person P;
   P.SetName("肖宙");
   P.SetAge(21);
   P.SetWeight(60);
   cout << "姓名： " << P.GetName() << "\n年龄： " << P.GetAge() << endl;   //体重不可读
   return 0;
}

