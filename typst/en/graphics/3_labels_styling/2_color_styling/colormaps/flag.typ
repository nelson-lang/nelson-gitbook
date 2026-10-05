#import "../../../nelson_help.typ": *

= flag <graphics:3_labels_styling.2_color_styling.colormaps.flag>

Flag colormap array.

== Syntax

- #raw("c = flag");
- #raw("c = flag(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Flag colormap array.

== Description

#strong[flag]; returns the colormap with flag colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('flag');
``````


#align(center)[#image("flag.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
