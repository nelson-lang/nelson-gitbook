#import "../../../nelson_help.typ": *

= turbo <graphics:3_labels_styling.2_color_styling.colormaps.turbo>

Turbo colormap array.

== Syntax

- #raw("c = turbo");
- #raw("c = turbo(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Turbo colormap array.

== Description

#strong[turbo]; returns the colormap with turbo colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('turbo');
``````


#align(center)[#image("turbo.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
