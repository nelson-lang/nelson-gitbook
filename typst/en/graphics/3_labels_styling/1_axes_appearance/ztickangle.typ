#import "../../nelson_help.typ": *

= ztickangle <graphics:3_labels_styling.1_axes_appearance.ztickangle>

Rotate z-axis tick labels.

== Syntax

- #raw("ztickangle(angle)");
- #raw("angle = ztickangle()");
- #raw("ztickangle(ax, ...)");

== Input argument

/ angle: Rotation angle in degrees, specified as a scalar numeric value.
/ ax: Target axes. Default is the current axes.

== Output argument

/ angle: Current rotation angle in degrees.

== Description

#strong[ztickangle]; rotates the z-axis tick labels of the current axes by the given angle.

 A positive angle rotates the labels counterclockwise; a negative angle rotates them clockwise.


== Example

Rotate z-axis tick labels by 45 degrees.

``````matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t);
ztickangle(45);

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.zticks>)[zticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
