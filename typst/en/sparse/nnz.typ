#import "nelson_help.typ": *

= nnz <sparse:nnz>

Return the number of nonzero elements.

== Syntax

- #raw("v = nnz(M)");

== Input argument

/ M: numeric, logical, or character array, sparse or full.

== Output argument

/ v: a integer value.

== Description

#strong[nnz]; returns the number of non zero elements in an matrix.

 Dense inputs can be multidimensional. Sparse inputs are 2-D and may store double, single, logical, complex double, or complex single values.

 For sparse matrices, #strong[nnz]; counts only values that are actually nonzero. Stored zero values are ignored.


== Examples

``````matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
n = nnz(S)
``````


== See also

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nzmax>)[nzmax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [documented sparse single and stored zero behavior],
  [1.0.0], [initial version],
)

// Author: Allan CORNET
