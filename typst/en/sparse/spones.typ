#import "nelson_help.typ": *

= spones <sparse:spones>

Replaces non zero sparse matrix elements with ones.

== Syntax

- #raw("s = spones(S)");

== Input argument

/ S: sparse or full 2-D matrix.

== Output argument

/ s: a sparse matrix with ones at nonzero positions.

== Description

#strong[s \= spones(S)]; returns a matrix#strong[s]; with the same sparsity structure as#strong[S];, but with one's in the nonzero positions.

 Double, single, logical, complex double, and complex single sparse inputs are supported. The result is sparse and uses double values except when the sparse numeric input is single, in which case the result keeps class single.

 Stored zero values do not become ones; only entries whose value is actually nonzero are kept in the output pattern.


== Examples

``````matlab
S = sparse([1,0;3,4]);
R = spones(S)
``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
R = spones(S)
``````


== See also

#nlink(<sparse:speye>)[speye];, #nlink(<sparse:sparse>)[sparse];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [extended sparse single and complex single support],
  [1.0.0], [initial version],
)

// Author: Allan CORNET
