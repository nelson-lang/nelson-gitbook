#import "../../nelson_help.typ": *

= hold <graphics:2_graphics_objects.1_object_management.hold>

Retain current plot when adding new plots.

== Syntax

- #raw("hold('on')");
- #raw("hold('off')");
- #raw("hold('all')");
- #raw("hold()");
- #raw("hold(ax, ...)");

== Input argument

/ 'on': turn hold on.
/ 'off': turn hold off.
/ 'all': same as hold on.
/ ax: Target axes: axes.

== Output argument

/ ax: a graphics object: axes type.

== Description

#strong[hold]; allows to construct a plot sequence incrementally.


== Example

``````matlab
f = figure();
x = linspace(-pi, pi);
y1 = cos(x);
plot(x, y1)
hold on
y2 = sin(x);
plot(x, y2)
hold off

``````


#align(center)[#image("hold.svg")]

== See also

#nlink(<graphics:2_graphics_objects.1_object_management.ishold>)[ishold];, #nlink(<graphics:2_graphics_objects.1_object_management.newplot>)[newplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
