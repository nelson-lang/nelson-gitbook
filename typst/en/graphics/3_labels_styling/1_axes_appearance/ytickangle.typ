#import "../../nelson_help.typ": *

= ytickangle <graphics:3_labels_styling.1_axes_appearance.ytickangle>

Rotate y-axis tick labels.

== Syntax

- #raw("ytickangle(angle)");
- #raw("angle = ytickangle()");
- #raw("ytickangle(ax, ...)");

== Input argument

/ angle: Rotation angle in degrees, specified as a scalar numeric value.
/ ax: Target axes. Default is the current axes.

== Output argument

/ angle: Current rotation angle in degrees.

== Description

#strong[ytickangle]; rotates the y-axis tick labels of the current axes by the given angle.

 A positive angle rotates the labels counterclockwise; a negative angle rotates them clockwise.


== Example

Rotate y-axis tick labels by 45 degrees.

``````matlab

x = linspace(0, 10, 50);
plot(x, 1000 * sin(x));
ytickangle(45);

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.yticks>)[yticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
