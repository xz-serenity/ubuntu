#include <iostream>
#include <cstring>
using namespace std;

struct Person
{ //职工基本信息结构
   double salary;
   char *name;
};

class SalaryManage
{
   Person *empoly; //存放职工信息的数组
   int max;        //数组下标上界
   int n;          //数组中的实际职工人数
   public:
   SalaryManage(int Max = 0)
   {
      this->max = Max;
      n = 0;
      empoly = new Person[max];
   }
   //返回引用特性是可以直接放在左值，直接使用的
   double &operator[](const char *Name) //重载[],返回引用
   { //重载[],返回引用
      Person *p;
      for(p = empoly; p < empoly + n; p++)
         //存在情况处理
         if(strcmp(p->name,Name) == 0)
            return p->salary;
      //不存在情况处理
      p = empoly + n++;
      p->name = new char[strlen(Name)+1];
      strcpy(p->name,Name);
      p->salary = 0;
      return p->salary;
   }

   void display()
   {
      for(int i = 0; i < n; i++)
         cout << empoly[i].name << "\t" << empoly[i].salary <<endl;
   }
   ~SalaryManage()
   {
         delete empoly;
   }
};

int main(int argc, char** argv)
{
   SalaryManage s(3);
   s["ZhangSan"] = 1000;
   s["LiSi"] = 2000;
   s["WangWu"] = 3000.00;
   cout << "ZhangSan" << "\t" << s["ZhangSan"] << endl;
   cout << "LiSi" << "\t" << s["LiSi"] << endl;
   cout << "WangWu" << "\t" << s["WangWu"] << endl;
   cout << "------display的输出-------\n" << endl;
   s.display();
}
