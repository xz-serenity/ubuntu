#include <iostream>
#include <vector>
using namespace std;

int main()
{
	srand((unsigned int)time(NULL));

	int i = rand() % 100 + 1;
	cout <<"请输入猜测数字" << endl;

	int j = 0;
   
	while(1)
	{
		cin >> j;
		
		if(i>j)
		{
			cout << "猜测过小" << endl;
		}
		else if (i < j)
		{
			cout << "猜测过大" << endl;
		}
		else
		{
			cout << "猜测正确" << endl; break;
		}
	}






	return 0;
}

