#import "nelson_help.typ": *

= uplus <operators:uplus>

Unary plus, + operator

== Syntax

- #raw("C = uplus(A)");
- #raw("C = +A");

== Input argument

/ A: a variable

== Output argument

/ C: result of +A

== Description

#strong[C \= uplus(A)]; performs unary plus ie +A.


== Example

``````matlab
M =-3;
+M
``````


== See also

#nlink(<operators:uminus>)[uminus];, #nlink(<operators:plus>)[plus];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
