#import "../nelson_help.typ": *

= triu <elementary_functions:7_indexing_dimensions.triu>

Upper triangular part of matrix

== Syntax

- #raw("T = triu(M)");
- #raw("T = triu(M, k)");

== Input argument

/ M: 2D input matrix
/ k: Diagonals to include: integer real value

== Output argument

/ R: Upper Triangular Portions of Matrix

== Description

#strong[triu]; computes Upper Triangular Portions of Matrix.

 #strong[R \= triu(M, k)]; returns the elements on and above the kth diagonal of M.

 Sparse double, single, complex double, and complex single inputs keep sparse storage and preserve the input numeric class.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = triu(x)
``````


== See also

#nlink(<constructors_functions:diag>)[diag];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [added sparse single and complex single support],
)

// Author: Allan CORNET
