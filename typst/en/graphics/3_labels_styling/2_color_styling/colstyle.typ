#import "../../nelson_help.typ": *

= colstyle <graphics:3_labels_styling.2_color_styling.colstyle>

Parse color and style from string.

== Syntax

- #raw("[linespec, colorspec, markerspec, msg] = colstyle (str)");
- #raw("[linespec, colorspec, markerspec, msg] = colstyle (str, 'plot')");

== Input argument

/ str: a row vector of character or scalar string: line specification.
/ 'plot': linespec returns 'none' and not ' ' with this option.

== Output argument

/ linespec: a string: line type.
/ colorspec: a string: color part.
/ markerspec: a string: marker part.
/ msg: a string: contain the error message string.

== Description

#strong[colstyle]; parses color and style from string.


== Example

``````matlab
[l, c, m, msg] = colstyle('r:x')
[l, c, m, msg] = colstyle('*')
[l, c, m, msg] = colstyle('*', 'plot')
``````


== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
