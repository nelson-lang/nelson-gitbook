#import "../nelson_help.typ": *

= pagectranspose <linear_algebra:4_matrix_functions.pagectranspose>

Page-wise complex conjugate transpose.

== Syntax

- #raw("Y = pagectranspose(X)");

== Input argument

/ X: N-D array.

== Output argument

/ Y: array where each page is replaced by its complex conjugate transpose.

== Description

#strong[pagectranspose]; applies the complex conjugate transpose to the first two dimensions of each page of the N-D array X: Y(:,:,i) \= X(:,:,i)'.


== Example

``````matlab
X = reshape((1:8) + 1i, 2, 2, 2);
Y = pagectranspose(X)
``````


== See also

#nlink(<linear_algebra:4_matrix_functions.pagetranspose>)[pagetranspose];, #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes];, #nlink(<operators:ctranspose>)[ctranspose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
