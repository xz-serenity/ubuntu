#!/bin/bash
a=10
b=20

echo 'a = '$a
echo 'b = '$b
echo ''

echo 'a + b =' `expr $a + $b`
echo 'a * b =' `expr $a \* $b`
echo''

if [ $a == $b ]
then
   echo 'a等于b'
else
   echo 'a不等于b'
fi

if [ $a == 10 -o $b -eq 30 ];then # ==或者-eq都可以用来表示“等于”，-o表示“或”，-a表示“且”
   echo "true"
else
   echo "false"
fi


