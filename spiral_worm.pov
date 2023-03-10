//------------------------------------------------------------------------
//
// Persistence of Vision Ray Tracer version 3.8
// Scene Description Language (SDL)
// 
// Library of POV-Ray objects inspired by Roger Dean's artworks
//
// File: spiral_worm.pov
// Version: 1.0
// Last updated: 08-Mar-2023
//
// Author: Sergey Yanenko "Yesbird", 2023
// e-mail: See posts in news.povray.org
//
//------------------------------------------------------------------------

#version 3.8;
global_settings { assumed_gamma 1 }

#declare luminosity = 1.1;
#include "include/playground.inc"
#include "include/colormaps.inc"

#include "include/spiral_worm.inc"

// Axis
//axis (4,4,4,0.02)

//
// Cameras
// 
camo (<0,3,6>, <0,1,0>, 50)     // Standard view
// camo (<0,13,0>, <0,0,1>, 26) // Top view

//
// Colormaps
//
#declare _f = 0;
#declare _t = 0;
// #declare jet              = make_colormap (jet,              _f, _t);
// #declare spring           = make_colormap (spring,           _f, _t);
// #declare hot              = make_colormap (hot,              _f, _t);
// #declare winter           = make_colormap (winter,           _f, _t);
#declare hsv              = make_colormap (hsv,              _f, _t);
// #declare autumn           = make_colormap (autumn,           _f, _t);
// #declare parula           = make_colormap (parula,           _f, _t);
#declare summer           = make_colormap (summer,           _f, _t);
// #declare turbo            = make_colormap (turbo,            _f, _t);
// #declare cool             = make_colormap (cool,             _f, _t);
#declare viridis          = make_colormap (viridis,          _f, _t);
// #declare smooth_cool_warm = make_colormap (smooth_cool_warm, _f, _t);
// #declare plasma           = make_colormap (plasma,           _f, _t);
#declare ext_kindlmann    = make_colormap (ext_kindlmann,    _f, _t);
#declare kindlmann        = make_colormap (kindlmann,        _f, _t);
//#declare inferno          = make_colormap (inferno,          _f, _t);

//
// Background
//
background {color srgb<13,17,23> / 256}

//-------------------------------------------------------------------
//
// Play with worm(s)
//

//
// Worm 01
//
#declare R        = 1.3;
#declare R_min    = 0;
#declare R_step   = 0.05;
#declare ang      = 0;
#declare ang_step = 1.2;
#declare Y        = 0;
#declare Y_step   = 0.18;
#declare length   = 40;
#declare r_max    = 0.22;
#declare c_step   = 0.2;
#declare lumps    = true;
#declare lump_size= 0.21;
#declare pins     = false;
#declare pin_size = 0.2;
#declare pin_len  = 0.27;
#declare pins_num = 8;
#declare cmap_body = hsv;
#declare cmap_pins = hsv;

#declare worm_01 =  spiral_worm ( cmap_body, cmap_pins,
                                  R, R_min, R_step, ang, ang_step,
                                  Y, Y_step, length, r_max, c_step, lumps, lump_size, pins, pin_size, pin_len, pins_num )
//
// Worm 02
//
#declare R        = 1.3;
#declare R_min    = 0;
#declare R_step   = 0.07;
#declare ang      = 0;
#declare ang_step = 1;
#declare Y        = 0;
#declare Y_step   = 0.15;
#declare length   = 55;
#declare r_max    = 0.2;
#declare c_step   = 0.5;
#declare lumps    = true;
#declare lump_size= 0.3;
#declare pins     = false;
#declare pin_size = 0.2;
#declare pin_len  = 3;
#declare pins_num = 8;
#declare cmap_body = ext_kindlmann;
#declare cmap_pins = ext_kindlmann;

#declare worm_02 =  spiral_worm ( cmap_body, cmap_pins,
                                  R, R_min, R_step, ang, ang_step,
                                  Y, Y_step, length, r_max, c_step, lumps, lump_size, pins, pin_size, pin_len, pins_num )
//
// Worm 03
//
#declare R        = 1.3;
#declare R_min    = 0;
#declare R_step   = 0.08;
#declare ang      = 0;
#declare ang_step = 1.2;
#declare Y        = 0;
#declare Y_step   = 0.15;
#declare length   = 45;
#declare r_max    = 0.2;
#declare c_step   = 0.14;
#declare lumps    = true;
#declare lump_size= 0.4;
#declare pins     = false;
#declare pin_size = 0.2;
#declare pin_len  = 0.27;
#declare pins_num = 2;
#declare cmap_body = kindlmann;
#declare cmap_pins = kindlmann;

#declare worm_03 =  spiral_worm ( cmap_body, cmap_pins,
                                  R, R_min, R_step, ang, ang_step,
                                  Y, Y_step, length, r_max, c_step, lumps, lump_size, pins, pin_size, pin_len, pins_num )
//
// Worm 04
//
#declare R        = 1.3;
#declare R_min    = 0;
#declare R_step   = 0.05;
#declare ang      = 0;
#declare ang_step = 1;
#declare Y        = 0;
#declare Y_step   = 0.18;
#declare length   = 35;
#declare r_max    = 0.2;
#declare c_step   = 0.2;
#declare lumps    = true;
#declare lump_size= 0.2;
#declare pins     = true;
#declare pin_size = 0.2;
#declare pin_len  = 3.3;
#declare pins_num = 8;
#declare cmap_body = ext_kindlmann;
#declare cmap_pins = ext_kindlmann;

#declare worm_04 =  spiral_worm ( cmap_body, cmap_pins, 
                                  R, R_min, R_step, ang, ang_step,
                                  Y, Y_step, length, r_max, c_step, lumps, lump_size, pins, pin_size, pin_len, pins_num )
//
// Worm 05
//
#declare R        = 1.4;
#declare R_min    = 0;
#declare R_step   = 0.08;
#declare ang      = 0;
#declare ang_step = 1.8;
#declare Y        = 0;
#declare Y_step   = 0.2;
#declare length   = 60;
#declare r_max    = 0.2;
#declare c_step   = 0.2;
#declare lumps    = true;
#declare lump_size= 0.06;
#declare pins     = true;
#declare pin_size = 0.05;
#declare pin_len  = 3;
#declare pins_num = 10;
#declare cmap_body = ext_kindlmann;
#declare cmap_pins = ext_kindlmann; 

#declare worm_05 =  spiral_worm ( cmap_body, cmap_pins,
                                  R, R_min, R_step, ang, ang_step,
                                  Y, Y_step, length, r_max, c_step, lumps, lump_size, pins, pin_size, pin_len, pins_num )
//
// Worm 06
//
#declare R        = 1.3;
#declare R_min    = 0;
#declare R_step   = 0.07;
#declare ang      = 0;
#declare ang_step = 0.65;
#declare Y        = 0;
#declare Y_step   = 0.12;
#declare length   = 15;
#declare r_max    = 0.43;
#declare c_step   = 0.16;
#declare lumps    = true;
#declare lump_size= 0.1;
#declare pins     = true;
#declare pin_size = 0.04;
#declare pin_len  = 2;
#declare pins_num = 16;
#declare cmap_body = summer;
#declare cmap_pins = viridis;

#declare worm_06 =  spiral_worm ( cmap_body, cmap_pins,
                                  R, R_min, R_step, ang, ang_step,
                                  Y, Y_step, length, r_max, c_step, lumps, lump_size, pins, pin_size, pin_len, pins_num )
//
// Instantiate
//
object { worm_01 scale 0.4 rotate y*clock translate < 1.7,  1.3 ,0> }
object { worm_02 scale 0.4 rotate y*clock translate < -0.1 ,1.35 ,0> }
object { worm_03 scale 0.4 rotate y*clock translate <-1.85, 1.4 ,0> }
object { worm_04 scale 0.4 rotate y*clock translate < 1.7, -0.25 ,0> }
object { worm_05 scale 0.4 rotate y*clock translate < -0.1,-0.25 ,0> }
object { worm_06 scale 0.4 rotate y*clock translate <-1.9, -0.12 ,0> }


/* Top view
object { worm_01 scale 0.4 translate < 1.7,  1.3  ,1.6> }
object { worm_02 scale 0.4 translate < -0.1 ,1.35 ,1.6> }
object { worm_03 scale 0.4 translate <-1.85, 1.4  ,1.6> }
object { worm_04 scale 0.4 translate < 1.7, -0.25 ,0> }
object { worm_05 scale 0.4 translate < -0.1,-0.25 ,0> }
object { worm_06 scale 0.4 translate <-1.9, -0.12 ,0> }
 */
