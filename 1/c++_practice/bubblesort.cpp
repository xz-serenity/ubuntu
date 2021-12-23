//封装一个函数，利用冒泡排序，实现对整形数组的升序排列

#include <iostream>
using namespace std;

void bubblesort(int *arr, int len){
   for (int i=0; i<len-1; i++){
      for (int j=0; j<len-1-i; j++){
         if (arr[j] > arr[j+1]){
            int temp = arr[j];
            arr[j] = arr[j+1];
            arr[j+1] = temp;
         }
      }
   }
}

void printarray (int *arr, int len){
   for (int i=0; i<len; i++){
      cout << arr[i] << endl;
   }
}

int main(){
   int arr[] = {31,20,23,24,18,69,14,7,48,100};
   int len = sizeof(arr) / sizeof(arr[0]);
   bubblesort(arr, len);
   printarray(arr, len);

   return 0;
}
