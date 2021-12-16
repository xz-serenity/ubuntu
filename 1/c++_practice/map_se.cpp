#include <iostream>
#include <string>
#include <map>
using namespace std;

int main(int argc, char const *argv[])
{
   string name[]={"zhangsan","lisi","wangwu"};
   double salary[]={100,2000,3000};
   map<string,double>sal;
   map<string,double>::iterator p;
   for(int i = 0; i < 3; i++)
   {
      sal.insert(make_pair(name[i],salary[i]));
   }
   sal["Tom"] = 4000;
   sal["Bob"] = 5000;
   for(p=sal.begin();p!=sal.end();p++)
   {
      cout << p->first << " " << p->second << endl;
   }
   string person;
   cout << "NAME: ";
   cin >> person;
   int flag = 1;
   for(p=sal.begin();p!=sal.end();p++)
   {
      if(p->first == person)
      {
         cout << p->second << endl;
         flag = 0;
      }
      if(flag)
      {
         cout << "NO RESULTS!" << endl;
      }
   }
      cout << "Person You Wanna Delete: " << endl;
      cin >> person;
      map<string,double>::iterator it;
      it = sal.find(person);
      if(it!=sal.end())
      {
         cout << "Find Success:\n" << (*it).first << ": " << (*it).second << endl;
         sal.erase(it);
         cout << "Delete Success" << endl;
      }
      cout << "After Delete:" << endl;
      for(p=sal.begin();p!=sal.end();p++)
         cout << p->first << " " << p->second <<endl;

      return 0;
}




