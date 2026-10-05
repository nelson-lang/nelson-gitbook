#import "nelson_help.typ": *

= uminus <operators:uminus>

Unary minus, - operator

== Syntax

- #raw("C = uminus(A)");
- #raw("C = -A");

== Input argument

/ A: a variable

== Output argument

/ C: result of -A

== Description

#strong[C \= uminus(A)]; performs unary minus ie -A.


== Example

``````matlab
M = 3;
-M
``````


== See also

#nlink(<operators:uplus>)[uplus];, #nlink(<operators:minus>)[minus];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
