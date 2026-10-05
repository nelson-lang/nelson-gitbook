#import "nelson_help.typ": *

= spalloc <sparse:spalloc>

Create a sparse matrix with allocated storage.

== Syntax

- #raw("S = spalloc(m, n, nz)");

== Input argument

/ m: number of rows.
/ n: number of columns.
/ nz: requested storage allocation for nonzero elements.

== Output argument

/ S: a sparse double matrix.

== Description

#strong[spalloc]; creates an m-by-n sparse double matrix and reserves storage for up to #strong[nz]; nonzero elements.


== Example

``````matlab
S = spalloc(3, 4, 5)
nzmax(S)
``````


== See also

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nzmax>)[nzmax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
