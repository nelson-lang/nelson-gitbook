#import "../nelson_help.typ": *

= istriu <elementary_functions:7_indexing_dimensions.isdiag>

Checks if matrix is diagonal.

== Syntax

- #raw("tf = isdiag(M)");

== Input argument

/ M: a numeric array

== Output argument

/ tf: logical: result of 'isdiag'.

== Description

#strong[isdiag]; returns an scalar logical if entry is diag.


== Example

``````matlab
A = eye(3, 3);
R = isdiag(A)
R = isdiag(A(:,1))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isdiag>)[istriu];, #nlink(<elementary_functions:7_indexing_dimensions.istril>)[istril];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
