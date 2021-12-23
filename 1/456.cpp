#include <iostream>
using namespace std;

//形参变化，实参不变化
void swap(int a,int b)
{
	int temp =a;
	a = b;
	b = temp;
	cout << "a = " << a <<endl;
	cout << "b = " << b << endl;

	//return;
}

int main()
{
	int i=10;
	int j=20;

       	swap(i,j);

	return 0;
}

