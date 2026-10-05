#import "nelson_help.typ": *

= speye <sparse:speye>

Sparse identity matrix.

== Syntax

- #raw("S = speye()");
- #raw("S = speye(n)");
- #raw("S = speye(n, m)");
- #raw("S = speye(sz)");

== Input argument

/ n, m: dimension sizes: nonnegative integer scalar.
/ sz: dimension sizes: two-element row vector.

== Output argument

/ S: a sparse matrix.

== Description

#strong[S \= speye()]; returns a sparse scalar 1.

 #strong[S \= speye(n)]; returns a sparse n-by-n identity matrix, with ones on the main diagonal.

 #strong[S \= speye(n, m)]; returns a sparse n-by-m matrix, with ones on the main diagonal.

 #strong[S \= speye(sz)]; returns a matrix with ones on the main diagonal.


== Example

``````matlab

tic();S = speye(5000, 5000);toc()
tic();S = sparse(eye(5000, 5000));toc()
    
``````


== See also

#nlink(<sparse:sparse>)[sparse];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
