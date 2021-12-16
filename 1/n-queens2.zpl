param colums := 8;

set C   := {1..8};
set CxC := C*C;

set tabu[<i,j> in CxC] := { <m,n> in CxC with (m != i or n != j) and (m == i or n ==j or abs(m-i) == abs(n-j))};

var x[CxC] binary;

maximize queens : sum <i,j> in CxC : x[i,j];

subto c1 : forall <i,j> in CxC do vif x[i,j] == 1 then sum <m,n> in tabu[i,j] : x[m,n] <= 0 end;
