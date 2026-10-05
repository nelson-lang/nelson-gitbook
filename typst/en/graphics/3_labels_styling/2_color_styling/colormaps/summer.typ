#import "../../../nelson_help.typ": *

= summer <graphics:3_labels_styling.2_color_styling.colormaps.summer>

Summer colormap array.

== Syntax

- #raw("c = summer");
- #raw("c = autumn(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Summer colormap array.

== Description

#strong[summer]; returns the colormap with summer colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('summer');
``````


#align(center)[#image("summer.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
