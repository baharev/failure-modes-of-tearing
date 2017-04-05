
param N = 300;

function f;

var x{1..N};

eq{i in 1..N-1}:
    f(x[i]) + f(x[N]) = 2;

eq_last: 
    sum{i in 1..N-1} f(x[i]) + x[N] = N;
    
option solver ipopt;
solve;

display x;
