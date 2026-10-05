#import "../nelson_help.typ": *

= istril <elementary_functions:7_indexing_dimensions.istril>

Checks if matrix is lower triangular.

== Syntax

- #raw("tf = istril(M)");

== Input argument

/ M: a numeric array

== Output argument

/ tf: logical: result of 'istril'.

== Description

#strong[istril]; returns an scalar logical if entry is lower triangular.


== Example

``````matlab
A = eye(3, 3);
R = istriu(A)
R = istriu(A(:,1))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isdiag>)[isdiag];, #nlink(<elementary_functions:7_indexing_dimensions.istril>)[istril];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
