#include <iostream>
#include <string>
using namespace std;

class Animal{
public:
   int Age;
};

class Sheep: virtual public Animal{};
class Tuo: virtual public Animal{};
class SheepTuo: public Sheep, public Tuo{};

void test(){
   SheepTuo st;
   st.Sheep::Age = 10;
   st.Tuo::Age = 20;

   cout<< "st.Sheep::Age = " << st.Sheep::Age << endl;
   cout<< "st.Tuo::Age = " << st.Tuo::Age << endl;
   cout<< "st.SheepTuo::Age = " << st.SheepTuo::Age << endl;
}

int main(){
   test();
   return 0;
}
