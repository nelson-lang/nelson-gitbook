#import "../../nelson_help.typ": *

= pbaspect <graphics:3_labels_styling.1_axes_appearance.pbaspect>

Control relative lengths of each axis in the plot box.

== Syntax

- #raw("pbaspect(ratio)");
- #raw("pb = pbaspect()");
- #raw("pbaspect('auto')");
- #raw("pbaspect('manual')");
- #raw("m = pbaspect('mode')");
- #raw("pbaspect(ax, ...)");

== Input argument

/ ratio: Three-element vector of positive values specifying the relative lengths of the x, y, and z axes in the plot box.


/ 'auto': Set the plot box aspect ratio mode to automatic.


/ 'manual': Set the plot box aspect ratio mode to manual.


/ 'mode': Query the current plot box aspect ratio mode ('auto' or 'manual').


/ ax: Target axes object. If not specified, uses current axes.



== Output argument

/ pb: Three-element vector representing the current plot box aspect ratio.


/ m: Current plot box aspect ratio mode: 'auto' or 'manual'.



== Description

#strong[pbaspect]; controls the relative lengths of the x, y, and z axes in the plot box.

 #strong[pbaspect(ratio)]; sets the plot box aspect ratio for the current axes. #strong[ratio]; is a three-element vector of positive values. For example, \[3 1 1\] means the x-axis is three times as long as the y- and z-axes.

 #strong[pb \= pbaspect()]; returns the current plot box aspect ratio as a three-element vector.

 #strong[pbaspect('auto')]; sets the plot box aspect ratio mode to automatic, enabling the axes to choose the ratio.

 #strong[pbaspect('manual')]; sets the mode to manual and uses the ratio stored in the axes.

 #strong[m \= pbaspect('mode')]; returns the current mode, either 'auto' or 'manual'.

 #strong[pbaspect(ax, ...)]; operates on the axes specified by #strong[ax]; instead of the current axes.

 Setting the plot box aspect ratio disables the stretch-to-fill behavior of the axes.


== Examples

Use equal axis lengths

``````matlab

x = linspace(0,10,100);
y = sin(x);
plot(x, y)
pbaspect([1 1 1])

``````


#align(center)[#image("pbaspect_1.svg")]
Use different axis lengths

``````matlab

[x, y] = meshgrid(-2:0.2:2);
z = x .* exp(-x.^2 - y.^2);
surf(x, y, z)
pbaspect([2 1 1])
disp(pbaspect('mode'))

``````


#align(center)[#image("pbaspect_2.svg")]
Revert back to default plot box aspect ratio

``````matlab

X = rand(100,1);
Y = rand(100,1);
Z = rand(100,1);
scatter3(X, Y, Z)
pbaspect([3 2 1])
pbaspect('auto')

``````


#align(center)[#image("pbaspect_3.svg")]
Query plot box aspect ratio

``````matlab

[x, y] = meshgrid(-2:0.2:2);
z = x .* exp(-x.^2 - y.^2);
surf(x, y, z)
pb = pbaspect()
disp(pb)

``````


#align(center)[#image("pbaspect_4.svg")]
Set plot box aspect ratio for specific axes object

``````matlab

f = figure();
ax1 = subplot(2, 1, 1);
plot(ax1, 1:10)
ax2 = subplot(2, 1, 2);
plot(ax2, 1:10)
pbaspect(ax2, [2 2 1])

``````


#align(center)[#image("pbaspect_5.svg")]

== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.daspect>)[daspect];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xlim>)[xlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
