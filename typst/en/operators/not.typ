#import "nelson_help.typ": *

= not <operators:not>

not logical, \~ operator

== Syntax

- #raw("C = not(A)");
- #raw("C = ~A");

== Input argument

/ A: a variable

== Output argument

/ C: result of \~A

== Description

#strong[C \= not(A)]; performs not logical \~A.


== Example

``````matlab
M = false(3, 3);
~M
``````


== See also

#nlink(<operators:or>)[or];, #nlink(<operators:any>)[any];, #nlink(<operators:all>)[all];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
