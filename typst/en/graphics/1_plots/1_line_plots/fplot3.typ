#import "../../nelson_help.typ": *

= fplot3 <graphics:1_plots.1_line_plots.fplot3>

Plot a 3-D parametric curve from function handles.

== Syntax

- #raw("fplot3(xfun, yfun, zfun)");
- #raw("fplot3(xfun, yfun, zfun, tinterval)");
- #raw("fplot3(..., LineSpec)");
- #raw("fplot3(parent, ...)");
- #raw("h = fplot3(...)");

== Input argument

/ xfun, yfun, zfun: Function handles evaluated on the parameter interval.
/ tinterval: Two-element increasing finite vector. The default is \[-5 5\].
/ LineSpec: Line style, marker, and color specification.
/ Name-Value pairs: Line properties and parameterizedfunctionline properties, including MeshDensity.

== Output argument

/ h: Parameterized function line graphics object.

== Description

#strong[fplot3]; samples three function handles over a parameter interval and displays the resulting 3-D curve.


== Examples

Plot a helix.

``````matlab
fplot3(@(t) cos(t), @(t) sin(t), @(t) t, [0 6*pi]);
``````


#align(center)[#image("fplot3_1.svg")]
Customize line style.

``````matlab
fplot3(@(t) t, @(t) t.^2, @(t) t.^3, [-2 2], 'r--', 'LineWidth', 2);
``````


#align(center)[#image("fplot3_2.svg")]

== See also

#nlink(<graphics:1_plots.1_line_plots.fplot>)[fplot];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>)[parameterizedfunctionline properties];.
