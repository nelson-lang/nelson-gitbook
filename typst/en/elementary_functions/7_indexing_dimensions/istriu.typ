#import "../nelson_help.typ": *

= istriu <elementary_functions:7_indexing_dimensions.istriu>

Checks if matrix is upper triangular.

== Syntax

- #raw("tf = istriu(M)");

== Input argument

/ M: a numeric array

== Output argument

/ tf: logical: result of 'istriu'.

== Description

#strong[istriu]; returns an scalar logical if entry is upper triangular.


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
