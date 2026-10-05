#import "nelson_help.typ": *

= shortcutor <operators:shortcutor>

Short circuit 'OR' operator, ||

== Syntax

- #raw("C = A || B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A || B

== Description

#strong[C \= A || B]; performs a logical#strong[OR]; operation, the second operand is evaluated only when the result is not fully determined by the first operand.


== Example

``````matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A || B

``````


== See also

#nlink(<operators:or>)[or];, #nlink(<operators:shortcutand>)[& &];, #nlink(<logical:xor>)[xor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
