#import "../../../nelson_help.typ": *

= pink <graphics:3_labels_styling.2_color_styling.colormaps.pink>

Pink colormap array.

== Syntax

- #raw("c = pink");
- #raw("c = pink(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Pink colormap array.

== Description

#strong[pink]; returns the colormap with pink colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('pink');
``````


#align(center)[#image("pink.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
