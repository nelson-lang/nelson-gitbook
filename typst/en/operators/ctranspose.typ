#import "nelson_help.typ": *

= ctranspose <operators:ctranspose>

Returns complex conjugate transpose: ' operator.

== Syntax

- #raw("C= ctranspose(A)");
- #raw("C = A'");

== Input argument

/ A: a variable

== Output argument

/ C: result: complex conjugate transpose of A.

== Description

#strong[C \= ctranspose(A)]; returns the complex conjugate transpose of A.


== Examples

``````matlab
A = 3
B = A'
``````

``````matlab
A = -i
B = A'
``````

``````matlab
 A = sparse(eye(3, 4) * i)
B = A'
``````


== See also

#nlink(<operators:transpose>)[transpose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
