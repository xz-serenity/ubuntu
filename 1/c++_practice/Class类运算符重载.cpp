//有复数类Complex，利用运算符重载实现复数的加减乘除运算
#include <iostream>
using namespace std;

class Complex
{
   private:
      double r,i;
   public:
      Complex(double R = 0, double I = 0):r(R),i(I){};
      Complex operator+(Complex b);
      Complex operator-(Complex b);
      Complex operator*(Complex b);
      Complex operator/(Complex b);
      void display();
};

Complex Complex::operator+(Complex b)
{
   return Complex(r+b.r,i+b.i);
}
Complex Complex::operator-(Complex b)
{
   return Complex(r-b.r,i-b.i);
}
//求复数相乘的算法
Complex Complex::operator*(Complex b)
{
   Complex t;
   t.r = r*b.r - i*b.i;
   t.i = r*b.i + i*b.r;
   return t;
}
//求复数相除的算法
Complex Complex::operator/(Complex b)
{
   Complex t;
   double x;
   x = 1/(b.r*b.r + b.i*b.i);
   t.r = x * (r*b.r + i*b.i);
   t.i = x * (i*b.r - r*b.i);
   return t;
}

void Complex::display()
{
   cout << r;
   if(i > 0) cout << "+";
   if(i != 0) cout << i << "i" << endl;
};

int main(int argc, char** argv)
{
   Complex c1(1,2), c2(3,4), c3, c4, c5, c6;
   Complex a, b(2,3);
   a = b+2;    //correct
   // a = 2+b; //error
   a.display();
   c3 = c1+c2;
   c4 = c1-c2;
   c5 = c1*c2;
   c6 = c1/c2;
   c1.display();
   c2.display();
   c3.display();
   c4.display();
   c5.display();
   c6.display();
   return 0;
}


