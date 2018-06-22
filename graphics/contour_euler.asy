//===============================================
//  To generate pdf output:
//    $ asy -f pdf contour.asy
//
//  To generate eps output:
//    $ asy contour.asy
//===============================================

// contour for Euler reflection formula of the Gamma function
import math;
import graph;
import feynman;  // for drawPhoton

// x and y axis
pair zl = (-115, 0);
pair zr = (115, 0);
draw( zl--zr, Arrow );  // x-axis
draw( (0,-115)--(0,115), Arrow ); // y-axis
label("$x$", zr, S);
label("$y$", (0,115), N);

draw( zl+(5,0)--(0,0), gray+linewidth(5) );  // gray wider line 

// small inner circle
real rmin = 15;
real y1 = 4.0;
real x1 = - sqrt( rmin*rmin - y1*y1 );
pair pC = (x1, y1);
pair pE = (x1, -y1);
draw( arc( (0,0), pC, pE, CW), black, Arrow(Relative(0.55)), PenMargins );

real rmax = 100;
real x2 = 40;
real y2 = sqrt( rmax*rmax-x2*x2 );
real x3 = - sqrt( rmax * rmax - y1 * y1 );
pair pB = (x3, y1);
pair pF = (x3, -y1);
draw( arc( (0,0), pF, pB ),black, Arrow(Relative(0.55)), PenMargins );

draw( pB--pC, Arrow(Relative(0.75)) );
draw( pE--pF, Arrow(Relative(0.75)) );

label("$A$", (rmax,0), NE);
label("$B$", pB, NW);
label("$C$", pC, NW);
label("$D$", (rmin,0), NE);
label("$E$", pE, SW);
label("$F$", pF, SW);





