
#scale = "100";
# scale = 200;
# scale = 300;
# scale = 400;
# scale = 500;
# scale = 600;
# scale = 700;
# scale = 800;
# scale = 900;
scale = "100";

fname_nm = "data" + scale + "_nm.txt";
fname_GN = "data" + scale + "_GN.txt";
fname_Qodft = "data" + scale + "_Qodft.txt";


param NN := read fname_nm as "1n" skip 0 use 1;
param ND := NN * NN;
param tmax := read fname_nm as "1n" skip 3 use 1;
param m := read fname_nm as "1n" skip 2 use 1;

set N := { 1 to NN };   # set N := {1,2,3}; # num_node
set Q := N * N;
set K :=  N;      # K应该是N的一个子集（不是所有的node都能成为candidate?）
set A :=  N * N;



param xN[N] := read fname_GN as "<1n>2n" skip 0 use NN;
param yN[N] := read fname_GN as "<1n>3n" skip 0 use NN;
param rN[N] := read fname_GN as "<1n>4n" skip 0 use NN;


param f[Q] := read fname_Qodft as "<2n,3n>4n" skip 0 use ND;
param t_o[Q] := read fname_Qodft as "<2n,3n>5n" skip 0 use ND;
param td[Q] := read fname_Qodft as "<2n,3n>6n" skip 0 use ND;
param tp[Q] := read fname_Qodft as "<2n,3n>7n" skip 0 use ND;

defnumb dist(i,j)  := sqrt( (xN[i] - xN[j]) * (xN[i] - xN[j]) + (yN[i] - yN[j]) * (yN[i] - yN[j]));


defset No(o) := { <k> in K with rN[k] > dist(o,k) };
defset Nd(d) := { <k> in K with rN[k] > dist(k,d) };
defset Np(o,d) := { <k> in K with (1+lambda[q])*dist(o,d) > (dist(o,k)+dist(k,d))};


# Variables
var x[K] binary;
var yo[Q] binary;
var yd[Q] binary;
var yp[Q] binary;
var theta[Q] real >= 0;

# Objective Function
maximize availability:
   sum <q> in Q: theta[q] * f[q];

# Constraints:q

subto con1: sum <k> in K: x[k] == m;
subto con2: forall <q> in Q:
   theta[q] <= tmax;
subto con3: forall <q> in Q:
   theta[q] <= t_o[q] * yo[q] + td[q] * yd[q] + tp[q] * yp[q];
subto con4: forall <q> in Q:
   sum <k> in K : x[k] * No[q,k] >= yo[q];
subto con5: forall <q> in Q:
   sum <k> in K : x[k] * Nd[q,k] >= yd[q];
subto con6: forall <q> in Q:
   sum <k> in K : x[k] * Np[q,k] >= yp[q];




# param NN := read "data100_nm.txt" as "1n" skip 0 use 1;
# param ND := read "data100_nm.txt" as "1n" skip 1 use 1;
# param m := read "data100_nm.txt" as "1n" skip 2 use 1;
# param tmax := read "data100_nm.txt" as "1n" skip 3 use 1;


#set N := { 1 to NN };	# set N := {1,2,3}; # num_node

#set Q := N * N;
	
#set K :=  N;      # K应该是N的一个子集（不是所有的node都能成为candidate?）
#set A :=  N * N;



# Parameters
# param l[A]  := read "data100_GA.txt" as "<1n,2n>3n" skip 0 use ND;

# param xN[N] := read "data100_GN.txt" as "<1n>2n" skip 0 use NN;
# param yN[N] := read "data100_GN.txt" as "<1n>3n" skip 0 use NN;
# param rN[N] := read "data100_GN.txt" as "<1n>4n" skip 0 use NN;

# param f[Q] := read "data100_Qodft.txt" as "<2n,3n>4n" skip 0 use ND;
# param t_o[Q] := read "data100_Qodft.txt" as "<2n,3n>5n" skip 0 use ND;
# param td[Q] := read "data100_Qodft.txt" as "<2n,3n>6n" skip 0 use ND;
# param tp[Q] := read "data100_Qodft.txt" as "<2n,3n>7n" skip 0 use ND;
# param lambda[Q] := read "data100_Qodft.txt" as "<2n,3n>8n" skip 0 use ND;


#param xN[N] := read fname_GN as "<1n>2n" skip 0 use NN;
#param yN[N] := read fname_GN as "<1n>3n" skip 0 use NN;
#param rN[N] := read fname_GN as "<1n>4n" skip 0 use NN;

#param f[Q] := read fname_Qodft as "<2n,3n>4n" skip 0 use ND;
#param t_o[Q] := read fname_Qodft as "<2n,3n>5n" skip 0 use ND;
#param td[Q] := read fname_Qodft as "<2n,3n>6n" skip 0 use ND;
#param tp[Q] := read fname_Qodft as "<2n,3n>7n" skip 0 use ND;

#defnumb dist(i,j)  := sqrt( (xN[i] - xN[j]) * (xN[i] - xN[j]) + (yN[i] - yN[j]) * (yN[i] - yN[j]));

# defset No(o) := { <k> in K with rN[k] > l[o,k] };
# defset Nd(d) := { <k> in K with rN[k] > l[k,d] };
# defset Np(o,d) := { <k> in K with (1+lambda[q])*l[o,d] > (l[o,k]+l[k,d])};

#defset No(o) := { <k> in K with rN[k] > dist(o,k) };
#defset Nd(d) := { <k> in K with rN[k] > dist(k,d) };
#defset Np(o,d) := { <k> in K with (1+lambda[q])*dist(o,d) > (dist(o,k)+dist(k,d))};

# Variables
#var x[K] binary;
#var yo[Q] binary;
#var yd[Q] binary;
#var yp[Q] binary;
#var theta[Q] real >= 0;

# Objective Function
#maximize availability:
#   sum <q> in Q: theta[q] * f[q];

# Constraints:q

#subto con1: sum <k> in K: x[k] == m;
#subto con2: forall <q> in Q:
#   theta[q] <= tmax;
#subto con3: forall <q> in Q:
#   theta[q] <= t_o[q] * yo[q] + td[q] * yd[q] + tp[q] * yp[q];
#subto con4: forall <q> in Q:
#   sum <k> in K : x[k] * No[q,k] >= yo[q];
#subto con5: forall <q> in Q:
#   sum <k> in K : x[k] * Nd[q,k] >= yd[q];
#subto con6: forall <q> in Q:
#   sum <k> in K : x[k] * Np[q,k] >= yp[q];




