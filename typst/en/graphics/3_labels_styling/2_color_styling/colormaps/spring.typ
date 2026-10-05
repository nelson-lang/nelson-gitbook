#import "../../../nelson_help.typ": *

= spring <graphics:3_labels_styling.2_color_styling.colormaps.spring>

Spring colormap array.

== Syntax

- #raw("c = spring");
- #raw("c = spring(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Spring colormap array.

== Description

#strong[spring]; returns the colormap with spring colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('spring');
``````


#align(center)[#image("spring.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
