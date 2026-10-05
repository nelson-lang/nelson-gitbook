#import "nelson_help.typ": *

= spfun <sparse:spfun>

Apply a function to the nonzero elements of a sparse matrix.

== Syntax

- #raw("R = spfun(fun, S)");

== Input argument

/ fun: a function handle applied to the vector of nonzero values.
/ S: a sparse matrix. A full matrix is first converted to sparse.

== Output argument

/ R: a sparse matrix with the same size and nonzero locations as #strong[S];, whose values are #strong[fun]; applied to the nonzero values of #strong[S];.

== Description

#strong[spfun]; evaluates #strong[fun]; only on the nonzero elements of #strong[S];, which avoids applying the function to the many stored zeros and preserves the sparse structure.

 The function handle must accept and return a column vector of the same length. Any resulting zero value is pruned from the sparse result.


== Examples

``````matlab
S = sparse([2 0 -3; 0 4 0]);
R = spfun(@(x) x .* 10, S)

``````

``````matlab
S = sparse([2 0; 0 4]);
R = spfun(@(x) 1 ./ x, S)

``````


== See also

#nlink(<sparse:spones>)[spones];, #nlink(<sparse:nonzeros>)[nonzeros];, #nlink(<elementary_functions:7_indexing_dimensions.find>)[find];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
