#!/bin/bash
m=3
n=3
l=2
num=3
repeat=9
g++ -std=c++11 commodity.cpp -o commodity
g++ -std=c++11 edge.cpp -o edge
./edge ${m} ${n} ${l} > edge.txt
echo " " > frac
for((i=0;i<=repeat;i++))
do
   ./commodity ${num} ${m} ${n} ${l} > file${i}.txt
   zimpl -DII=${m} -DJJ=${n} -DKK=${l} -DSS=${num} -DEDGE=edge.txt -DFILE=file${i}.txt multicommodity-lp.zpl -o inst${i}
   #cplex -c read inst${i}.lp opt set timelimit 600 wr inst${i}.sol 
   cplex -c read inst${i}.lp set lpmethod 2 opt wr inst${i}.sol y
   #scip -f ${name}${i}.lp
   ~/cmipwork/check/scripts/cpx2solchecker.py inst${i}.sol > temp${i}.sol
   awk '{if($2 != 0 || $2 != -0) print $0}' temp${i}.sol > rst${i}.sol
   awk 'BEGIN{sign = 0;}{if(!match($1,"=obj=") && $2 != 0 && $2 != 1) sign = 1;}END{if(sign == 1) print FILENAME;}' rst${i}.sol >> frac
sleep 1
done

cat frac
