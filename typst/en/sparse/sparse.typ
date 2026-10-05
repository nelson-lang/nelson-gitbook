#import "nelson_help.typ": *

= sparse <sparse:sparse>

Sparse matrix definition.

== Syntax

- #raw("sp = sparse(M)");
- #raw("sp = sparse(m, n)");
- #raw("sp = sparse(I, J, V)");
- #raw("sp = sparse(I, J, V, m, n)");
- #raw("sp = sparse(I, J, V, m, n, nz)");

== Input argument

/ M: a matrix: double or logical.
/ m: an integer value: rows dimension.
/ n: an integer value: columns dimension
/ I: a vector.
/ J: a vector.
/ V: a vector.
/ nz: an integer value: storage allocation for nonzero elements.

== Output argument

/ S: a single.

== Description

#strong[sparse]; is used to build a sparse matrix. Only non-zero entries are stored.

 If #strong[M]; is a full matrix,#strong[sparse]; converts it to a sparse matrix representation, removing all zero values.

 If nz is not specified,#strong[sparse]; uses as default value: nz \= max(\[numel(i), numel(j), numel(v)\])

 If multiple values are specified with the same i, j indices, the associated value will be the sum of the values at the repeated index.


== Examples

``````matlab
sp = sparse(eye(3,3))
``````

``````matlab
sp = sparse(3, 3)
``````

``````matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V)
size(sp)
``````

``````matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4)
size(sp)
nnz(sp)
nzmax(sp)
``````

``````matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
``````


== See also

#nlink(<sparse:full>)[full];, #nlink(<sparse:IJV>)[IJV];, #nlink(<sparse:nnz>)[nnz];, #nlink(<sparse:nzmax>)[nzmax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
