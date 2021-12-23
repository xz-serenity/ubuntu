#include <iostream>
#include <map>
#include <cstring>
using namespace std;

int main(int argc, char const *argv[])
{
   map<const char*,const char*> p;
   map<const char*,const char*>::iterator it;
   const char key[3][20] = {"img","system","ip"};
   const char value[3][20] = {"d:/a.img","win7","193.68.6.3"};

   //make_pair插入
   for(int i = 0; i < 2; i++)
   {
      p.insert(make_pair(key[i],value[i]));
   }
    //pair<const char*,const char*>插入
   p.insert(pair<const char*,const char*>(key[2],value[2]));

   //数组插入方式
   p["address"] = "China";
   //迭代器提取元素
   //循环提取元素
   for(it=p.begin();it!=p.end();it++)
      cout << it->first << "\t" << it->second << endl;
   char key1[20];
   cout << "Please Enter Key: ";
   cin.getline(key1,20);
   //查找元素
   for(it=p.begin();it!=p.end();it++)
   {
      if(strcmp(it->first,key1) == 0)
      {
         cout << it->first << "\tFind Out!" << " The Corresponding Value is: " << it->second << endl;
      }
   }

   //第一种删除方式
   //find 只能用于查找数组建立的形式，并且不支持输入用cin等
   it=p.find("address");
   if(it!=p.end())
   {
      cout << it->first << "\tFind Out in Key. The Corresponding Value is: " << (*it).second << endl;
      cout << "Now Delete Elements!" << endl;
      p.erase(it);
   }

   //第二种删除方式
   //按照key删除元素
   char drop_key[20];
   //按照value删除元素
   char drop_value[20];
   cout << "Please Enter Key to Delete:";
   cin.getline(drop_key,20);
   cout << "Please Enter Key to Delete:";
   cin.getline(drop_value,20);
   for(it=p.begin();it!=p.end();it++)
   {
      if(strcmp(it->first,drop_key) == 0)
      {
         cout << it->first << "\tFind Out in Key. The Corresponding Value is: " << (*it).second << endl;
         cout << "Now Delete Elements!" << endl;
         p.erase(it);
         break;
      }
      if(strcmp(it->second,drop_value) == 0)
      {
         cout << it->second << "\tFind Out in Value. The Corresponding Key is: " << it->first << endl;
         cout << "Now Delete Elements!" << endl;
         p.erase(it);
         break;
      }
   }

   cout << "============== After Delete ===============" << endl;
   //循环提取元素
   for(it=p.begin();it!=p.end();it++)
   {
      cout << it->first << " " << it->second << endl;
   }
   return 0;
}
