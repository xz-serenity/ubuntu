set I := {1..II};
set J := {1..JJ};
set K := {1..KK};
set S := {1..SS};
set V := I * J * K; 
defnumb dist(a1, b1, c1, a2, b2, c2) := abs(a1 - a2) + abs(b1 - b2) + abs(c1 - c2);
set E := { <x1,y1,z1,x2,y2,z2> in V * V with dist(x1,y1,z1,x2,y2,z2) == 1 };
set SE:= S * E;
set SV:= S * V;

param c[E] := read EDGE as "<1n,2n,3n,4n,5n,6n>7n" default 0;
param u[E] := 1;
param d[SV] := read FILE as "<1n,2n,3n,4n>5n" default 0;
set source := { <s,i,j,k> in S*V with d[s,i,j,k] == 1 };
set target := { <s,i,j,k> in S*V with d[s,i,j,k] == -1 };
set Vsource := proj(source, <2,3,4>); 
set Vtarget := proj(target, <2,3,4>); 
set Vmid := V - Vsource - Vtarget;

var f[SE] binary;

minimize cost : sum <s,e1,e2,e3,e4,e5,e6> in SE : f[s,e1,e2,e3,e4,e5,e6] * c[e1,e2,e3,e4,e5,e6];

subto flow_balance: 
   forall <s,i,j,k> in SV with d[s,i,j,k] >= 0 do
      sum <s,i,j,k,l,m,n> in SE: f[s,i,j,k,l,m,n] - sum <s,l,m,n,i,j,k> in SE: f[s,l,m,n,i,j,k] == d[s,i,j,k];

subto edge:
   forall <i,j,k,l,m,n> in E do 
      sum <s> in S : ( f[s,i,j,k,l,m,n] + f[s,l,m,n,i,j,k] ) <= u[i,j,k,l,m,n];

subto node :
   forall <i,j,k> in Vmid do 
      sum <s,i,j,k,l,m,n> in SE : f[s,i,j,k,l,m,n] + sum <s,l,m,n,i,j,k> in SE : f[s,l,m,n,i,j,k] <= 2;

subto source :
   forall <s,i,j,k> in source do 
      sum <t,i,j,k,l,m,n> in SE with t != s: ( f[t,i,j,k,l,m,n] + f[t,l,m,n,i,j,k] ) == 0;

subto target :
   forall <s,i,j,k> in target do 
      sum <t,i,j,k,l,m,n> in SE with t != s: ( f[t,i,j,k,l,m,n] + f[t,l,m,n,i,j,k] ) == 0;
