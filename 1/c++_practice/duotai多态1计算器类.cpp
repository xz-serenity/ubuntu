#include <iostream>
#include <string>
using namespace std;

class AbstractCalculator{
public:
   virtual int GetResult(){
      return 0;
   }

   int Num1,Num2;
};

class AddCalculator: public AbstractCalculator{
public:
   int GetResult(){
      return Num1 + Num2;
   }
};

class SubCalculator: public AbstractCalculator{
public:
   int GetResult(){
      return Num1 - Num2;
   }
};

class MultipleCalculator: public AbstractCalculator{
public:
   int GetResult(){
      return Num1 * Num2;
   }
};

void test(){
   AbstractCalculator *abc = new AddCalculator;
   abc->Num1 = 10;
   abc->Num2 = 20;
   cout << abc->Num1 << "+" << abc->Num2 << "=" << abc->GetResult() << endl;
   delete abc;

   abc = new SubCalculator;
   abc->Num1 = 10;
   abc->Num2 = 20;
   cout << abc->Num1 << "-" << abc->Num2 << "=" << abc->GetResult() << endl;
   delete abc;

   abc = new MultipleCalculator;
   abc->Num1 = 10;
   abc->Num2 = 20;
   cout << abc->Num1 << "*" << abc->Num2 << "=" << abc->GetResult() << endl;
   delete abc;
}

int main(){
   test();
}
