#import "../../nelson_help.typ": *

= daspect <graphics:3_labels_styling.1_axes_appearance.daspect>

Control data unit length along each axis.

== Syntax

- #raw("daspect(ratio)");
- #raw("d = daspect()");
- #raw("daspect('auto')");
- #raw("daspect('manual')");
- #raw("m = daspect('mode')");
- #raw("daspect(ax, ...)");

== Input argument

/ ratio: Three-element vector of positive values specifying the relative lengths of data units along the x, y, and z axes.
/ 'auto': Set the data aspect ratio mode to automatic.
/ 'manual': Set the data aspect ratio mode to manual.
/ 'mode': Query the current data aspect ratio mode ('auto' or 'manual').
/ ax: Target axes object. If not specified, uses current axes.

== Output argument

/ d: Three-element vector representing the current data aspect ratio.
/ m: Current data aspect ratio mode: 'auto' or 'manual'.

== Description

#strong[daspect]; controls the relative lengths of data units along the x, y, and z axes.

 #strong[daspect(ratio)]; sets the data aspect ratio for the current axes. #strong[ratio]; is a three-element vector of positive values. For example, \[1 2 3\] means the length from 0 to 1 along the x-axis equals the length from 0 to 2 along the y-axis and 0 to 3 along the z-axis.

 #strong[d \= daspect()]; returns the current data aspect ratio as a three-element vector.

 #strong[daspect('auto')]; sets the data aspect ratio mode to automatic, enabling the axes to choose the ratio.

 #strong[daspect('manual')]; sets the mode to manual and uses the ratio stored in the axes.

 #strong[m \= daspect('mode')]; returns the current mode, either 'auto' or 'manual'.

 #strong[daspect(ax, ...)]; operates on the axes specified by #strong[ax]; instead of the current axes.

 Setting the data aspect ratio disables the stretch-to-fill behavior of the axes.


== Examples

stretch X relative to Y

``````matlab

plot(-5:5, (-5:5).^2)
daspect([2 1 1])
``````


#align(center)[#image("daspect_1.svg")]
Set different data unit lengths for each axis

``````matlab

sphere(40);
daspect([2 1 0.5])

``````


#align(center)[#image("daspect_2.svg")]
Switch between manual and auto aspect ratio modes

``````matlab

[X, Y, Z] = sphere(30);
surf(X, Y, Z)
daspect([2 1 1])
disp(daspect('mode'))
daspect('auto')
disp(daspect('mode'))

``````


#align(center)[#image("daspect_3.svg")]
Query the current data aspect ratio

``````matlab

[x, y] = meshgrid(-2:0.2:2);
z = x .* exp(-x.^2 - y.^2);
surf(x, y, z)
d = daspect()
disp(d)

``````


#align(center)[#image("daspect_4.svg")]

== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.pbaspect>)[pbaspect];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xlim>)[xlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
