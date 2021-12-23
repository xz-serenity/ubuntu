param NN := read "probab40file1.txt" as "1n" use 1;
set N := {1..NN};
param DD := read "probab40file1.txt" as "1n" skip 2 ;
set D := {1..DD};
set ND:= N * D;
param SS := read "probab40file1.txt" as "1n" skip 1 ;
set S := {1..SS};    
set SD:= S * D;  


param f[ND]  := 0;      
param c[ND]  := read "probab40file3.txt" as "<1n,2n>3n" ; 
param g[SD]  := read "probab40file4.txt" as "<1n,2n>3n" ;
param b[N]   := read "probab40file2.txt" as "<1n>2n";


var w[ND] integer; 
var y[ND] binary;
var z[S]  binary;


minimize cost : sum <i,j> in ND :( c[i,j] * w[i,j] + f[i,j] * y[i,j] );

subto supply : forall <i> in N do sum <j> in D : w[i,j] <= b[i];
subto demand : forall <s,j> in SD do sum <i> in N : w[i,j] >= (1 - z[s]) * g[s,j];

subto con1   : forall <i,j> in ND : w[i,j] >= 0;
subto con2   : forall <i,j> in ND : w[i,j] <= b[i] * y[i,j];

subto pro1   : sum <s> in S : z[s] <= 200;

