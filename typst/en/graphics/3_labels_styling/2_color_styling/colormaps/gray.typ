#import "../../../nelson_help.typ": *

= gray <graphics:3_labels_styling.2_color_styling.colormaps.gray>

Gray colormap array.

== Syntax

- #raw("c = gray");
- #raw("c = gray(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Gray colormap array.

== Description

#strong[gray]; returns the colormap with gray colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('gray');
``````


#align(center)[#image("gray.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
