#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
using namespace std;

class Person
{
   public:
      string Name;
      int Age;
   public:
      Person(string name, int age)
      {
         Name = name;
         Age = age;
      }
};

void func1()
{
   vector<Person> v;
   Person p1("a",10);
   Person p2("b",20);
   Person p3("c",30);

   v.push_back(p1);
   v.push_back(p2);
   v.push_back(p3);

   for(vector<Person>::iterator it = v.begin(); v.begin() != v.end(); it++)
   {
      cout << it->Name << "\t" << it->Age << endl;
   }
}

void func2()
{
   vector<Person*> v;
   Person p1("aa",10);
   Person p2("bb",20);
   Person p3("cc",30);

   v.push_back(&p1);
   v.push_back(&p2);
   v.push_back(&p3);

   for(vector<Person*>::iterator it = v.begin(); v.begin() != v.end(); it++)
   {
      cout << (*it)->Name << "\t" << (*it)->Age << endl;
   }
}

int main()
{
   func1();
   func2();

   return 0;
}
