//毕设，3位老师，每位老师带领5位学生，要求：老师结构体成员为姓名和5位学生的数组；学生结构体成员为姓名，考试分数
//创建数组存放3位老师，通过函数给每位老师及学生进行赋值，并打印数据
#include <iostream>
#include <string>
#include <ctime>
using namespace std;

struct student{ string Sname; int Score; };
struct teacher{ string Tname; struct student SArray[5]; };

void AllocateSpace(struct teacher TArray[], int len){
   string nameseed = "ABCDE";
   for (int i=0; i<len; i++){
      TArray[i].Tname = "Teacher_";
      TArray[i].Tname += nameseed[i];
      for (int j=0; j<5; j++){
      TArray[i].SArray[j].Sname = "Student_";
      TArray[i].SArray[j].Sname += nameseed[j];
      int random = rand()%100 +1;
      TArray[i].SArray[j].Score = random;
      }
   }
}

void PrintInformation(struct teacher TArray[], int len){
   for (int i=0; i<len; i++){
      cout << "Teachers' name: " << TArray[i].Tname << endl;
      for (int j=0; j<5; j++){
         cout << "\tStudent' name: " << TArray[i].SArray[j].Sname << "\t" << "Students' Score: " << TArray[i].SArray[j].Score << endl;
      }
   }
}

int main(){
   srand((unsigned int)time(NULL));
   struct teacher TArray[3];
   int len = sizeof(TArray) / sizeof(TArray[0]);
   AllocateSpace(TArray,len);
   PrintInformation(TArray,len);
   return 0;
}
