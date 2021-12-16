#include <iostream>
#include <vector>
using namespace std;

inline int gcd1(int a, int b)
{
   while(b > 0)
   {
      int r = a%b;
      a = b;
      b = r;
   }
   return a;
}

inline int gcd2(int a, int b)
{
   return b > 0 ? gcd2(b,a%b) : a;
}

int main()
{
   int res = gcd1(12,8);
   cout << res << endl;
   cout << gcd2(6,9) << endl;
   cout << func(5,3) << endl;
   return 0;
}
