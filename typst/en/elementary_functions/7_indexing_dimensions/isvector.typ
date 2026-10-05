#import "../nelson_help.typ": *

= isvector <elementary_functions:7_indexing_dimensions.isvector>

Checks input is vector.

== Syntax

- #raw("tf = isvector(M)");

== Input argument

/ M: a variable

== Output argument

/ tf: logical: result of 'isvector'.

== Description

#strong[isvector]; returns an scalar logical if entry is an vector.


== Example

``````matlab
A = eye(3, 3);
R = isvector(A)
R = isvector(A(:,1))
``````


== See also

#nlink(<types:isempty>)[isempty];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
