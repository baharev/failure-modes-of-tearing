#include "funcadd.h"

real f(arglist *al) {
    real x = al->ra[0];
    if (al->derivs) {
        *al->derivs = 1.0;
        if (al->hes)
            *al->hes = 0.0;
    }
    return x;
}

void funcadd(AmplExports *ae){
    addfunc("f", (ufunc*)f, 0, 1, 0);
}
