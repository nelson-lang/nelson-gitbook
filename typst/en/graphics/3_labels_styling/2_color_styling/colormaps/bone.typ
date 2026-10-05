#import "../../../nelson_help.typ": *

= bone <graphics:3_labels_styling.2_color_styling.colormaps.bone>

Bone colormap array.

== Syntax

- #raw("c = bone");
- #raw("c = bone(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Bone colormap array.

== Description

#strong[bone]; returns the colormap with bone colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('bone');
``````


#align(center)[#image("bone.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
