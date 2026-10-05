#import "../../../nelson_help.typ": *

= hot <graphics:3_labels_styling.2_color_styling.colormaps.hot>

Hot colormap array.

== Syntax

- #raw("c = hot");
- #raw("c = hot(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Hot colormap array.

== Description

#strong[hot]; returns the colormap with hot colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('hot');
``````


#align(center)[#image("hot.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
