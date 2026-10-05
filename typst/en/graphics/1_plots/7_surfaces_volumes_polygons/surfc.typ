#import "../../nelson_help.typ": *

= surfc <graphics:1_plots.7_surfaces_volumes_polygons.surfc>

Display a surface with contour lines below it.

== Syntax

- #raw("surfc(Z)");
- #raw("surfc(X, Y, Z)");
- #raw("surfc(parent, ...)");
- #raw("h = surfc(...)");

== Description

#strong[surfc]; displays a surface and contour lines projected at the base of the surface.


== Example

Surface with contours.

``````matlab
surfc(peaks(30));
``````


#align(center)[#image("surfc_1.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.
