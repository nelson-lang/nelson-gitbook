#import "../nelson_help.typ": *

= blkdiag <elementary_functions:1_array_creation_shape.blkdiag>

Block diagonal matrix

== Syntax

- #raw("R = blkdiag(M1, ... , MN)");

== Input argument

/ M1, ..., MN: a numeric 2D matrix

== Output argument

/ R: a matrix.

== Description

#strong[R \= blkdiag(M1, ... , MN)]; build the block diagonal matrix created by aligning the input matrices#strong[M1, ... , MN]; along the diagonal of #strong[R];.


== Example

``````matlab
blkdiag(magic(2), magic(3), magic(4))
``````


== See also

#nlink(<constructors_functions:diag>)[diag];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
