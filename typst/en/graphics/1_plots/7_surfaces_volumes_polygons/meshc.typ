#import "../../nelson_help.typ": *

= meshc <graphics:1_plots.7_surfaces_volumes_polygons.meshc>

Display a mesh with contour lines below it.

== Syntax

- #raw("meshc(Z)");
- #raw("meshc(Z, C)");
- #raw("meshc(X, Y, Z)");
- #raw("meshc(X, Y, Z, C)");
- #raw("meshc(parent, ...)");
- #raw("meshc('Parent', parent, ...)");
- #raw("h = meshc(...)");

== Description

#strong[meshc]; displays a mesh and contour lines projected at the base of the mesh.

 The returned value is a two-element graphics vector containing the surface object followed by the contour object.


== Examples

Mesh with contours.

``````matlab
meshc(peaks(30));
``````


#align(center)[#image("meshc_1.svg")]
Use separate color data and a parent axes.

``````matlab
f = figure();
ax = axes('Parent', f);
Z = peaks(20);
C = abs(Z);
meshc('Parent', ax, Z, C, 'LineWidth', 1.5);
``````


#align(center)[#image("meshc_2.svg")]

== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.
