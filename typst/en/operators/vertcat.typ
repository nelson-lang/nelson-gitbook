#import "nelson_help.typ": *

= vertcat <operators:vertcat>

Vertical concatenation.

== Syntax

- #raw("R = vertcat(M1, M2, ... , MN)");
- #raw("R = [M1; M2; ... ; MN]");

== Input argument

/ M1: a variable
/ M2: a variable
/ MN: a variable

== Output argument

/ R: result of \[M1; M2; ... ; MN\]

== Description

#strong[R \= vertcat(M1, M2, ... , MN)]; returns the vertical concatenation of M1, M2, ... , MN along the dimension 1.


== Examples

``````matlab
A = eye(2, 2);
B = ones(2, 2);
C = vertcat(A, B)
D = [A; B]
``````

``````matlab
A = 'nel';
B = 'son';
C = vertcat(A, B)
``````

Concatenate character and numeric values as character codes.

``````matlab
C = [char(65); 1];
double(C)
``````


== See also

#nlink(<operators:horzcat>)[horzcat];, #nlink(<operators:cat>)[cat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
