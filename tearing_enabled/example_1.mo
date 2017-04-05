// Copyright (c) 2017, University of Vienna
// All rights reserved.
// BSD 3-Clause License
// https://github.com/baharev/failure-modes-of-tearing/

package pkg

function f "The identity function in C to trip up the simplifier"
    input Real x;
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

model sensitive

    Real x1(start=0.1);
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

                 10*f(x1)  + x2  = 1.1;
        f(x1)  + 10*f(x2)  + x3  = 1.2;
        f(x2)  + 10*f(x3)  + x4  = 1.2;
        f(x3)  + 10*f(x4)  + x5  = 1.2;
        f(x4)  + 10*f(x5)  + x6  = 1.2;
        f(x5)  + 10*f(x6)  + x7  = 1.2;
        f(x6)  + 10*f(x7)  + x8  = 1.2;
        f(x7)  + 10*f(x8)  + x9  = 1.2;
        f(x8)  + 10*f(x9)  + x10 = 1.2;
        f(x9)  + 10*f(x10) + x11 = 1.2;
        f(x10) + 10*f(x11) + x12 = 1.2;
        f(x11) + 10*f(x12) + x13 = 1.2;
        f(x12) + 10*f(x13) + x14 = 1.2;
        f(x13) + 10*f(x14) + x15 = 1.2;
        f(x14) + 10*f(x15) + x16 = 1.2;
        f(x15) + 10*f(x16) + x17 = 1.2;
        f(x16) + 10*f(x17) + x18 = 1.2;
        f(x17) + 10*f(x18) + x19 = 1.2;
        f(x18) + 10*f(x19) + x20 = 1.2;
        f(x19) + 10*f(x20)       = 1.1;

end sensitive;

end pkg;
