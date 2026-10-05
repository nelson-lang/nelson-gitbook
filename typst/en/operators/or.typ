#import "nelson_help.typ": *

= or <operators:or>

logical 'OR' operator, |

== Syntax

- #raw("C = or(A, B)");
- #raw("C = A | B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A | B

== Description

#strong[C \= or(A, B)]; performs a logical #strong[OR]; operation.


== Example

``````matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A | B
D = or(B, A)
C == D
``````


== See also

#nlink(<operators:and>)[and];, #nlink(<logical:xor>)[xor];, #nlink(<operators:all>)[all];, #nlink(<operators:any>)[any];, #nlink(<operators:not>)[not];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
