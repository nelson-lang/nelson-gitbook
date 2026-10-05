#import "../nelson_help.typ": *

= tril <elementary_functions:7_indexing_dimensions.tril>

Lower triangular part of matrix

== Syntax

- #raw("T = tril(M)");
- #raw("T = tril(M, k)");

== Input argument

/ M: 2D input matrix
/ k: Diagonals to include: integer real value

== Output argument

/ R: Lower Triangular Portions of Matrix

== Description

#strong[tril]; computes Lower Triangular Portions of Matrix.

 #strong[R \= tril(M, k)]; returns the elements on and below the kth diagonal of M.

 Sparse double, single, complex double, and complex single inputs keep sparse storage and preserve the input numeric class.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = tril(x)
``````


== See also

#nlink(<constructors_functions:diag>)[diag];, #nlink(<elementary_functions:7_indexing_dimensions.triu>)[triu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [added sparse single and complex single support],
)

// Author: Allan CORNET
