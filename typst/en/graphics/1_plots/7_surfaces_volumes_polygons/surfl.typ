#import "../../nelson_help.typ": *

= surfl <graphics:1_plots.7_surfaces_volumes_polygons.surfl>

Display a lighted surface.

== Syntax

- #raw("surfl(Z)");
- #raw("surfl(X, Y, Z)");
- #raw("surfl(..., 'light')");
- #raw("surfl(parent, ...)");
- #raw("h = surfl(...)");

== Description

#strong[surfl]; displays a surface with lighting-based reflectance stored in the surface color data.

 #strong[surfl(..., 'light')]; creates an infinite light and returns the surface and light handles.


== Example

Lighted surface.

``````matlab
surfl(peaks(30));
shading interp;
``````


#align(center)[#image("surfl_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];.
