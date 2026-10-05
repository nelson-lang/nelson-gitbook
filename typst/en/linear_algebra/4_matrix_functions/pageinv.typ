#import "../nelson_help.typ": *

= pageinv <linear_algebra:4_matrix_functions.pageinv>

Page-wise matrix inverse.

== Syntax

- #raw("Y = pageinv(X)");

== Input argument

/ X: N-D array whose pages are square matrices.

== Output argument

/ Y: array where each page is the inverse of the corresponding page of X.

== Description

#strong[pageinv]; computes the inverse of each page (the first two dimensions) of the N-D array X: Y(:,:,i) \= inv(X(:,:,i)). Each page must be a square matrix.


== Example

``````matlab
M = cat(3, [2 0; 0 4], [1 2; 3 4]);
Y = pageinv(M)
``````


== See also

#nlink(<linear_algebra:1_linear_systems.inv>)[inv];, #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
