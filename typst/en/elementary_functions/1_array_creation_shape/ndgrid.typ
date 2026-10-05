#import "../nelson_help.typ": *

= ndgrid <elementary_functions:1_array_creation_shape.ndgrid>

Rectangular grid in N-D space

== Syntax

- #raw("[X1, X2, ..., Xn] = ndgrid(x1, x2, ... , xn)");
- #raw("[X1, X2, ..., Xn] = ndgrid(xg)");

== Input argument

/ x1, x2, â€¦ , xn: vector: grid vectors as separate arguments.
/ xg: vector: grid vector for all dimensions.

== Output argument

/ X1, X2, â€¦ , Xn: array: full grid representation.

== Description

#strong[\[X1, X2, â€¦ , Xn\] \= ndgrid(x1, x2, â€¦ , xn)]; generates an n-dimensional full grid by replicating each grid vector.

 #strong[\[X1, X2, â€¦ , Xn\] \= ndgrid(xg)]; In this scenario, the single grid vector#strong[xg]; is used for all dimensions. The number of output arguments determines the dimensionality n of the resulting grid.


== Examples

``````matlab
M = {'apple', 'banana', 'cherry'};
N = {'blue', 'green', 'red'};
ndgrid(M , N)

``````

``````matlab
[X, Y] = ndgrid(1:2:19, 2:2:12)
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [initial version],
)

// Author: Allan CORNET
