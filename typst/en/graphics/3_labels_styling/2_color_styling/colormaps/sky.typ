#import "../../../nelson_help.typ": *

= sky <graphics:3_labels_styling.2_color_styling.colormaps.sky>

Sky colormap array.

== Syntax

- #raw("c = sky");
- #raw("c = sky(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Sky colormap array.

== Description

#strong[sky]; returns the colormap with sky colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('sky');
``````


#align(center)[#image("sky.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
