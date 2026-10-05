#import "../../nelson_help.typ": *

= xtickangle <graphics:3_labels_styling.1_axes_appearance.xtickangle>

Rotate x-axis tick labels.

== Syntax

- #raw("xtickangle(angle)");
- #raw("angle = xtickangle()");
- #raw("xtickangle(ax, ...)");

== Input argument

/ angle: Rotation angle in degrees, specified as a scalar numeric value.
/ ax: Target axes. Default is the current axes.

== Output argument

/ angle: Current rotation angle in degrees.

== Description

#strong[xtickangle]; rotates the x-axis tick labels of the current axes by the given angle.

 A positive angle rotates the labels counterclockwise; a negative angle rotates them clockwise.


== Example

Rotate x-axis tick labels by 45 degrees.

``````matlab

bar([10 20 30 41]);
xticklabels({'January','February','March','April'});
xtickangle(45);

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickangle>)[ytickangle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
