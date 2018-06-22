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
import fontsize;

void drawCross(real x, real y)
{
  real shift = 1.5;
  draw( (x-shift,y-shift)--(x+shift,y+shift) );
  draw( (x-shift,y+shift)--(x+shift,y-shift) );
}

// the next two lines not really necessary
//size(6cm,0);
//unitsize(1.5);

defaultpen(fontsize(6pt));

// x and y axis
pair zl = (-115, 0);
pair zr = (40, 0);
//drawPhoton( zl--(0,0) );  // for wavy line
draw( zl--zr, Arrow );  // x-axis
draw( (0,-115)--(0,115), Arrow ); // y-axis
label("$x$", zr, S);
label("$y$", (0,115), N);

real graywidth = 2;
draw( zl+(graywidth,0)--(0,0), gray+linewidth(graywidth) );  // gray wider line 

real rmin = 8;
real delta = 2.0;
real x0_left = - sqrt( rmin*rmin - delta*delta );
pair pE = (x0_left, delta);
pair pG = (x0_left, -delta);
draw( arc( (0,0), pE, pG, CW), black, Arrow(Relative(0.55)), PenMargins );
label("$C_0$", (rmin,0), NE);

real x1 = -25;
real r1 = 6;
pair p1LU = (x1-r1,delta);
pair p1RU = (x1+r1,delta);
pair p1LL = (x1-r1,-delta);
pair p1RL = (x1+r1,-delta);
draw( arc( (x1,delta), p1LU, p1RU, CW), black, Arrow(Relative(0.55)), PenMargins );
draw( arc( (x1,-delta), p1RL, p1LL, CW), black, Arrow(Relative(0.55)), PenMargins );
draw( p1RU--pE, Arrow(Relative(0.75)) );
draw( pG--p1RL, Arrow(Relative(0.75)) );
label( "$C_1^+$", (x1,delta+r1), N );
label( "$C_1^-$", (x1,-delta-r1), S );
label( "$L_1^+$", p1RU, NE );
label( "$L_1^-$", p1RL, SE );
drawCross(x1,0);

real x2 = -50;
pair p2LU = (x2-r1,delta);
pair p2RU = (x2+r1,delta);
pair p2LL = (x2-r1,-delta);
pair p2RL = (x2+r1,-delta);
draw( arc( (x2,delta), p2LU, p2RU, CW), black, Arrow(Relative(0.55)), PenMargins );
draw( arc( (x2,-delta), p2RL, p2LL, CW), black, Arrow(Relative(0.55)), PenMargins );
draw( p2RU--p1LU, Arrow(Relative(0.75)) );
draw( p1LL--p2RL, Arrow(Relative(0.75)) );
label( "$C_2^+$", (x2,delta+r1), N );
label( "$C_2^-$", (x2,-delta-r1), S );
label( "$L_2^+$", p2RU, NE );
label( "$L_2^-$", p2RL, SE );
drawCross(x2,0);

real x3 = -80;
pair p3LU = (x3-r1,delta);
pair p3RU = (x3+r1,delta);
pair p3LL = (x3-r1,-delta);
pair p3RL = (x3+r1,-delta);
draw( arc( (x3,delta), p3LU, p3RU, CW), black, Arrow(Relative(0.55)), PenMargins );
draw( arc( (x3,-delta), p3RL, p3LL, CW), black, Arrow(Relative(0.55)), PenMargins );
draw( p3RU--p2LU, Arrow(Relative(0.75)) );
draw( p2LL--p3RL, Arrow(Relative(0.75)) );
label( "$C_3^+$", (x3,delta+r1),  N );
label( "$C_3^-$", (x3,-delta-r1), S );
label( "$L_3^+$", p3RU, NE );
label( "$L_3^-$", p3RL, SE );
drawCross(x3,0);

real rmax = 100;
real xA = 25;
real yB = sqrt( rmax*rmax-xA*xA );
real xD = - sqrt( rmax * rmax - delta * delta );
pair pA = (xA, -yB);
pair pB = (xA, yB);
pair pD = (xD, delta);
pair pE = (xD, -delta);
draw( arc( (0,0), pB, pD ),black, Arrow(Relative(0.55)), PenMargins );
draw( arc( (0,0), pE, pA ),black, Arrow(Relative(0.55)), PenMargins );

draw( pA--pB, Arrow(Relative(0.75)) );
draw( pD--p3LU, Arrow(Relative(0.75)) );
draw( p3LL--pE, Arrow(Relative(0.75)) );

label("$A$", pA, SE);
label("$B$", pB, NE);
label("$C$", (0,rmax), NW);
label("$D$", pD, NW);
label("$E$", pE, SW);
label("$F$", (0,-rmax), SW);

draw( (0,0)--pB, dashed );
//draw( "$\beta$", arc( (0,0), 0.35*pB, 0.35*(0,rmax) ),black, Arrow(Relative(0.55)), PenMargins );
draw( "$\beta$", arc( (0,0), 0.35*pB, 0.35*(0,rmax) ),black );






