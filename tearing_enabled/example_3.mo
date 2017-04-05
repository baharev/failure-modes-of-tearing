// Copyright (c) 2017, University of Vienna
// All rights reserved.
// BSD 3-Clause License
// https://github.com/baharev/failure-modes-of-tearing/

package pkg

function f "The identity function in C to trip up the simplifier"
    input Real  x;
    output Real y;
    external "C";
    annotation(Include="#include <f.c>", derivative=df);
end f;

function df
    input Real  x;
    input Real  dx;
    output Real y;
    external "C";
    annotation(Include="#include <df.c>");
end df;

model arrowhead
    constant Integer N = 300;
    Real x[N];
    equation
        for i in 1:N-1 loop
            f(x[i]) + f(x[N]) = 2;
        end for;
        sum(f(x[i]) for i in 1:N-1) + x[N] = N;
end arrowhead;

end pkg;
