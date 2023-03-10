#version 3.7;
global_settings { assumed_gamma 1 }

#declare luminosity = 1.1;
#include "include/playground.inc"

#include "include/colormaps.inc"
#include "shapes3.inc"

//
// Axis
//
// axis (3,3,3,0.02)

//
// Camera
//
camo (<5,0,2>, <0,0,2>, 50)

//
// Light
//
light_source {<0,5,5>, rgb <1,1,1> * 5 parallel}

//
// Background
//
background {color srgb<13,17,23> / 256}

//
// Colormap
//
#declare _f = 0;
#declare _t = 0;
#declare jet              = make_colormap (jet,              _f, _t);
#declare spring           = make_colormap (spring,           _f, _t);
#declare hot              = make_colormap (hot,              _f, _t);
#declare winter           = make_colormap (winter,           _f, _t);
#declare hsv              = make_colormap (hsv,              _f, _t);
#declare autumn           = make_colormap (autumn,           _f, _t);
#declare parula           = make_colormap (parula,           _f, _t);
#declare summer           = make_colormap (summer,           _f, _t);
#declare turbo            = make_colormap (turbo,            _f, _t);
#declare cool             = make_colormap (cool,             _f, _t);
#declare viridis          = make_colormap (viridis,          _f, _t);
#declare smooth_cool_warm = make_colormap (smooth_cool_warm, _f, _t);
#declare plasma           = make_colormap (plasma,           _f, _t);
#declare ext_kindlmann    = make_colormap (ext_kindlmann,    _f, _t);
#declare kindlmann        = make_colormap (kindlmann,        _f, _t);
#declare inferno          = make_colormap (inferno,          _f, _t);

//
// Logo
// 
text { ttf "classic-yes-font.ttf" "Yes World" 0.1, 0

       pigment {
       gradient y
       color_map { kindlmann }
       scale 1.7
       translate -y * 0.58 }

       normal { bumps scale 0.002 }
       rotate -y * 90 }
