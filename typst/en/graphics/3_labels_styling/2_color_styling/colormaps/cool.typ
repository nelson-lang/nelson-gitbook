#import "../../../nelson_help.typ": *

= cool <graphics:3_labels_styling.2_color_styling.colormaps.cool>

Cool colormap array.

== Syntax

- #raw("c = cool");
- #raw("c = cool(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Cool colormap array.

== Description

#strong[cool]; returns the colormap with cool colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('cool');
``````


#align(center)[#image("cool.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
