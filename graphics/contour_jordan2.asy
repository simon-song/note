//===============================================
//  To generate pdf output:
//    $ asy -f pdf contour.asy
//
//  To generate eps output:
//    $ asy contour.asy
//===============================================

//size(6cm,0);
import math;
import graph;
import geometry;  // for special arc

//unitsize(1.5);

// x and y axis
pair xRight = (50,0);
//draw( (-115,0)--(100,0), Arrow );
draw( (-115,0)--xRight, Arrow );
draw( (0,-115)--(0,115), Arrow );
//label("$x$", (100,0), E);
label("$x$", xRight, E);
label("$y$", (0,115), N);

real rmax = 100;
real c = 0;  // deg
real beta = 15;  // deg

pair O = (0,0);
pair B = dir(90-beta);
pair A = dir(270+beta);
pair C = dir(90-c);
pair D = dir(90);
pair E = dir(270-c);
pair F = dir(270);
pair G = dir(360-c);
//draw( "$C_R$", arc( B, O, A, rmax),black, Arrow(Relative(0.55)), PenMargins );
//draw( "$C_R$", arc(O, rmax*B, rmax*A, CCW),black, Arrow(Relative(0.45)), PenMargins );
draw( arc(O, rmax*B, rmax*A, CCW),black, Arrow(Relative(0.475)), PenMargins );
label( "$C_R$", rmax*dir(170), W);
draw( "$\beta$", arc( B, O, C, 25),black, Arrow, PenMargins );
draw( "$\beta$", arc( E, O, A, 20),black, Arrow, PenMargins );

draw( O--rmax*B, dashed );
//draw( rmax*E--rmax*C, dashed );
draw( O--rmax*A, dashed );
//draw( rmax*A--rmax*B, dashed );
//draw( "$\alpha$", O--rmax*Sin(beta)*G, Arrow );
draw( "R", O--rmax*dir(130), Arrow );


