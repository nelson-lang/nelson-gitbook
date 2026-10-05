#import "nelson_help.typ": *

= griddata <geometry:griddata>

Interpolate scattered data

== Syntax

- #raw("Vq = griddata(P, V, xq, yq)");
- #raw("Vq = griddata(x, y, V, xq, yq)");
- #raw("Vq = griddata(x, y, z, V, xq, yq, zq)");
- #raw("Vq = griddata(..., method)");
- #raw("[Xq, Yq, Vq] = griddata(x, y, V, xq, yq)");

== Description

#strong[griddata]; interpolates scattered samples at query coordinates.


== Example

Linear interpolation on planar scattered data.

``````matlab
x = [0; 1; 1; 0];
y = [0; 0; 1; 1];
V = x + y;
Vq = griddata(x, y, V, 0.25, 0.25)
``````


== See also

#nlink(<geometry:scatteredInterpolant>)[scatteredInterpolant];, #nlink(<geometry:delaunayn>)[delaunayn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
