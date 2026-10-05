#import "nelson_help.typ": *

= alphaShape <geometry:alphaShape>

Alpha shape object

== Syntax

- #raw("SHP = alphaShape(P)");
- #raw("SHP = alphaShape(x, y)");
- #raw("SHP = alphaShape(x, y, z)");
- #raw("SHP = alphaShape(..., alpha)");
- #raw("SHP = alphaShape(..., 'HoleThreshold', value, 'RegionThreshold', value)");
- #raw("K = boundaryFacets(SHP)");
- #raw("A = area(SHP)");
- #raw("plot(SHP)");

== Description

#strong[alphaShape]; stores points and alpha parameters for boundary and shape queries.


== Example

Create and plot an alpha shape.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
SHP = alphaShape(P);
A = area(SHP);
plot(SHP)
``````


== See also

#nlink(<geometry:boundary>)[boundary];, #nlink(<geometry:convhull>)[convhull];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
