#include <iostream>
#include <string>
using namespace std;

class AbstractDrink{
public:
   virtual void Boil() = 0;
   virtual void Brew() = 0;
   virtual void PureInCup() = 0;
   virtual void PutSomething() = 0;
   void MakeDrink(){
      Boil();
      Brew();
      PureInCup();
      PutSomething();
   }
};

class Coffee:public AbstractDrink{
public:
   virtual void Boil(){
      cout << "boil water" << endl;
   }
   void Brew(){
      cout << "brew coffee" << endl;
   }
   void PureInCup(){
      cout << "pure in cup" << endl;
   }
   void PutSomething(){
      cout << "add sugar and milk" << endl;
   }
};

class Tea:public AbstractDrink{
public:
   void Boil(){
      cout << "boil water" << endl;
   }
   void Brew(){
      cout << "brew tea bag" << endl;
   }
   void PureInCup(){
      cout << "pure in cup" << endl;
   }
   void PutSomething(){
      cout << "add motrimony vine" << endl;
   }
};

void DoMake(AbstractDrink* Drink){
   Drink->MakeDrink();
   delete Drink;
}

void test(){
   DoMake(new Coffee);
   cout << "…………………………" << endl;
   DoMake(new Tea);
}

int main(){
   test();
   return 0;
}

