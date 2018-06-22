//===============================================
//  To generate pdf output:
//    $ asy -f pdf contour.asy
//
//  To generate eps output:
//    $ asy contour.asy
//===============================================

import math;
import graph;
import feynman;  // for drawPhoton

// the next two lines not really necessary
//size(6cm,0);
//unitsize(1.5);

// x and y axis
pair zl = (-115, 0);
pair zr = (70, 0);
//drawPhoton( zl--(0,0) );  // for wavy line
draw( zl--zr, Arrow );  // x-axis
draw( (0,-115)--(0,115), Arrow ); // y-axis
label("$x$", zr, S);
label("$y$", (0,115), N);

draw( zl+(5,0)--(0,0), gray+linewidth(5) );  // gray wider line 

real rmin = 15;
real y1 = 4.0;
real x1 = - sqrt( rmin*rmin - y1*y1 );
pair pE = (x1, y1);
pair pG = (x1, -y1);
draw( arc( (0,0), pE, pG, CW), black, Arrow(Relative(0.55)), PenMargins );

real rmax = 100;
real x2 = 40;
real y2 = sqrt( rmax*rmax-x2*x2 );
real x3 = - sqrt( rmax * rmax - y1 * y1 );
pair pA = (x2, -y2);
pair pB = (x2, y2);
pair pD = (x3, y1);
pair pH = (x3, -y1);
draw( arc( (0,0), pB, pD ),black, Arrow(Relative(0.55)), PenMargins );
draw( arc( (0,0), pH, pA ),black, Arrow(Relative(0.55)), PenMargins );

draw( pD--pE, Arrow(Relative(0.75)) );
draw( pG--pH, Arrow(Relative(0.75)) );
draw( pA--pB, Arrow(Relative(0.75)) );

label("$A$", pA, SE);
label("$B$", pB, NE);
label("$C$", (0,rmax), NW);
label("$D$", pD, NW);
label("$E$", pE, NW);
label("$F$", (rmin,0), SE);
label("$G$", pG, SW);
label("$H$", pH, SW);
label("$I$", (0,-rmax), SW);

draw( (0,0)--pB, dashed );
draw( "$\beta$", arc( (0,0), 0.35*pB, 0.35*(0,rmax) ),black, Arrow(Relative(0.55)), PenMargins );






//currentpen=magenta;
//
//real r1=1;
//real r2=sqrt(7);
//real r3=4;
//pair O=0;
//
//path c1=circle(O,r1);
//draw(c1,green);
//draw(circle(O,r2),green);
//draw(circle(O,r3),green);
//
//real x=-0.6;
//real y=-0.8;
//real yD=0.3;
//pair A=(sqrt(r1^2-y^2),y);
//pair B=(-sqrt(r2^2-y^2),y);
//pair C=(x,sqrt(r3^2-x^2));
//
//pair d=A+r2*dir(B--C);
//pair D=intersectionpoint(c1,A--d);
//
//draw(A--B--C--cycle);
//draw(interp(A,D,-0.5)--interp(A,D,1.5),blue);
//
//dot("$O$",O,S,red);
//dot("$A$",A,dir(C--A,B--A),red);
//dot("$B$",B,dir(C--B,A--B),red);
//dot("$C$",C,dir(A--C,B--C),red);
//dot("$D$",D,red);
