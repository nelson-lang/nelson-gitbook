#import "../../../nelson_help.typ": *

= white <graphics:3_labels_styling.2_color_styling.colormaps.white>

white colormap array.

== Syntax

- #raw("c = white");
- #raw("c = white(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: White colormap array.

== Description

#strong[white]; returns the colormap with white colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('white');
``````


#align(center)[#image("white.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
