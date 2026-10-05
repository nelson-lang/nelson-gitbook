#import "nelson_help.typ": *

= transpose <operators:transpose>

Returns vector or matrix transpose: .' operator.

== Syntax

- #raw("C= transpose(A)");
- #raw("C = A .'");

== Input argument

/ A: a variable

== Output argument

/ C: result: transpose of A.

== Description

#strong[C \= transpose(A)]; returns the transpose of A.


== Examples

``````matlab
A = 3
B = A.'
``````

``````matlab
A = -i
B = A.'
``````

``````matlab
 A = sparse(eye(3, 4) * i)
B = A.'
``````


== See also

#nlink(<operators:ctranspose>)[ctranspose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
