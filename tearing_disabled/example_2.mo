// Copyright (c) 2017, University of Vienna
// All rights reserved.
// BSD 3-Clause License
// https://github.com/baharev/failure-modes-of-tearing/

package pkg

function f "The identity function in C to trip up the simplifier"
    input Real x;
    output Real y;
    external "C";
     annotation(Include="#include <f.c>");
end f;

model insensitive

    Real x1(start=0.96);
    Real x2;
    Real x3;
    Real x4;
    Real x5;
    Real x6;
    Real x7;
    Real x8;
    Real x9;
    Real x10;
    Real x11;
    Real x12;
    Real x13;
    Real x14;
    Real x15;
    Real x16;
    Real x17;
    Real x18;
    Real x19;
    Real x20;

    equation
                 f(x1)  + 15*f(x2)  = 16;
        f(x1)  + f(x2)  + 15*f(x3)  = 17;
        f(x2)  + f(x3)  + 15*f(x4)  = 17;
        f(x3)  + f(x4)  + 15*f(x5)  = 17;
        f(x4)  + f(x5)  + 15*f(x6)  = 17;
        f(x5)  + f(x6)  + 15*f(x7)  = 17;
        f(x6)  + f(x7)  + 15*f(x8)  = 17;
        f(x7)  + f(x8)  + 15*f(x9)  = 17;
        f(x8)  + f(x9)  + 15*f(x10) = 17;
        f(x9)  + f(x10) + 15*f(x11) = 17;
        f(x10) + f(x11) + 15*f(x12) = 17;
        f(x11) + f(x12) + 15*f(x13) = 17;
        f(x12) + f(x13) + 15*f(x14) = 17;
        f(x13) + f(x14) + 15*f(x15) = 17;
        f(x14) + f(x15) + 15*f(x16) = 17;
        f(x15) + f(x16) + 15*f(x17) = 17;
        f(x16) + f(x17) + 15*f(x18) = 17;
        f(x17) + f(x18) + 15*f(x19) = 17;
        f(x18) + f(x19) + 15*f(x20) = 17;
        f(x19) + f(x20)             =  2;

end insensitive;

end pkg;
