#import "nelson_help.typ": *

= nzmax <sparse:nzmax>

Reserved size for nonzero elements.

== Syntax

- #raw("v = nzmax(M)");

== Input argument

/ M: numeric, logical, or character array, sparse or full.

== Output argument

/ v: a integer value.

== Description

#strong[nzmax]; returns the amount of storage allocated for nonzero elements.

 For full arrays, #strong[nzmax]; returns #strong[numel(M)];. For sparse matrices, it returns the reserved sparse storage capacity, which can be larger than #strong[nnz(M)];.

 Sparse double, single, logical, complex double, and complex single matrices are supported. Stored zero values may contribute to the reserved capacity even though #strong[nnz]; ignores them.


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
[nnz(S), nzmax(S)]
``````


== See also

#nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nnz>)[nnz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [documented sparse single and reserved storage behavior],
  [1.0.0], [initial version],
)

// Author: Allan CORNET
