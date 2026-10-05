#import "nelson_help.typ": *

= nonzeros <sparse:nonzeros>

Nonzero matrix elements.

== Syntax

- #raw("v = nonzeros(A)");

== Input argument

/ A: numeric, logical, or character array, including sparse numeric and sparse logical matrices.

== Output argument

/ v: dense column vector containing the nonzero values of A.

== Description

#strong[nonzeros]; returns the nonzero values of #strong[A]; in column-major order.

 For sparse input, the output is a dense column vector containing only values that are actually nonzero. Stored zero values in a sparse matrix are skipped.

 The output keeps the value class of #strong[A];, including single, complex single, logical, and integer inputs.


== Examples

``````matlab
A = sparse([1 0 2; 0 3 0]);
v = nonzeros(A)

``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
v = nonzeros(S)

``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.find>)[find];, #nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nnz>)[nnz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
