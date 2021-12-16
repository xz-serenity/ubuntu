set N  := {1..5};
set D  := {1,2,3};
set ND := N * D;
set S  :={1..10};
set SD := S * D;

param c[ND] :=
      |1,2,3|
    |1| 28, 67, 48|
    |2|21, 6, 65|
    |3|70, 82, 43|
    |4|99, 61, 35|
    |5|95, 75, 21|;
param g[SD] := 
          |1,2,3|
        |1|37, 41, 35|
        |2|5, 6, 38|
        |3|11, 48, 31|
        |4|25, 8, 18|
        |5|25, 29,14|
        |6|43, 31, 8|
        |7|41, 8, 48|
        |8|36, 8, 30|
        |9|9, 20, 6|
        |10|49, 32, 38|;

param b[N]  :=<1>1,<2>24,<3>48,<4>21,<5>19;
param f[ND] := 0;
#param x[D]  := <1> 10,<2> 20,<3> 30;

var y[ND] binary;
var z[S] binary;
var w[ND] integer;


minimize cost : sum <i,j> in ND :( c[i,j] * w[i,j] + f[i,j] * y[i,j] );

subto supply : forall <i> in N do sum <j> in D : w[i,j] <= b[i];

subto demand : forall <s,j> in SD do sum <i> in N : w[i,j] >= (1 - z[s]) * g[s,j];

subto con1   : forall <i,j> in ND : w[i,j] >= 0;
subto con2   : forall <i,j> in ND : w[i,j] <= b[i] * y[i,j];

subto pro1   : sum <s> in S : z[s] <= 4;
#subto pro2   : forall <s> in S :  x[j] >= (1 - z[s]) g[s,j];
#subto pro2   : forall <s> in S do <s,j> in SD :  x[j] >= (1 - z[s]) g[s,j];
