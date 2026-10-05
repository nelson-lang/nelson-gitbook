#import "../nelson_help.typ": *

= pagetranspose <linear_algebra:4_matrix_functions.pagetranspose>

Page-wise transpose.

== Syntax

- #raw("Y = pagetranspose(X)");

== Input argument

/ X: N-D array.

== Output argument

/ Y: array where the first two dimensions of each page are transposed.

== Description

#strong[pagetranspose]; transposes the first two dimensions of each page of the N-D array X: Y(:,:,i) \= X(:,:,i).'. Complex values are not conjugated.


== Example

``````matlab
X = reshape(1:24, 2, 3, 4);
Y = pagetranspose(X)
``````


== See also

#nlink(<linear_algebra:4_matrix_functions.pagectranspose>)[pagectranspose];, #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes];, #nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
