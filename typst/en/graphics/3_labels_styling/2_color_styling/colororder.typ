#import "../../nelson_help.typ": *

= colororder <graphics:3_labels_styling.2_color_styling.colororder>

Set or query axes color order.

== Syntax

- #raw("colororder(colors)");
- #raw("colororder(name)");
- #raw("colororder(ax, ...)");
- #raw("colors = colororder");
- #raw("colors = colororder(ax)");

== Input argument

/ colors: n-by-3 real numeric matrix containing RGB color values.
/ name: named color order: 'default', 'gem', 'glow', 'sail', 'reef', 'meadow', 'dye', or 'earth'.
/ ax: target axes object. If omitted, the current axes is used.

== Output argument

/ colors: current axes color order as an n-by-3 RGB matrix.

== Description

#strong[colororder]; sets or queries the #strong[ColorOrder]; property of an axes.

 Setting a color order resets #strong[ColorOrderIndex]; to 1. Bar objects whose face color is automatic are updated from the new order.


== Examples

Use a named color order for grouped bars.

``````matlab
f = figure();
colororder('reef');
bar([1 3 5; 2 4 6; 3 5 7]);

``````


#align(center)[#image("colororder_1.svg")]
Set a custom RGB color order.

``````matlab
f = figure();
ax = axes('Parent', f);
colororder(ax, [0.8 0.1 0.1; 0.1 0.5 0.9; 0.2 0.7 0.2]);
y = [1:5; 2:6; 3:7]';
plot(ax, 1:5, y);

``````


#align(center)[#image("colororder_2.svg")]

== See also

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

// Author: Allan CORNET
