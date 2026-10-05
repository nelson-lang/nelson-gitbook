#import "../../../nelson_help.typ": *

= lines <graphics:3_labels_styling.2_color_styling.colormaps.lines>

Line color order colormap array.

== Syntax

- #raw("c = lines");
- #raw("c = lines(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Line color order colormap array.

== Description

#strong[lines]; returns a colormap based on the default axes color order.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('lines');
``````


#align(center)[#image("lines.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
