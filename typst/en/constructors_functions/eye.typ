#import "nelson_help.typ": *

= eye <constructors_functions:eye>

Creates an identity matrix.

== Syntax

- #raw("R = eye");
- #raw("R = eye(n)");
- #raw("R = eye(n, m)");
- #raw("R = eye(n, m, ..., z)");
- #raw("R = eye(n, m, ..., z, 'like', V)");
- #raw("R = eye(n, m, ..., z, classname)");

== Input argument

/ n: a variable: n-by-n matrix
/ m: a variable: n-by-m matrix

== Description

#strong[eye]; returns an identity matrix.


== Examples

``````matlab
eye(3)
``````

``````matlab
eye(3,1,3,'single')
``````

``````matlab
A = single([3 3])
B = eye(2,4,'like', A)
``````

``````matlab
A = eye(0, 4)
``````


== See also

#nlink(<constructors_functions:ones>)[ones];, #nlink(<constructors_functions:zeros>)[zeros];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
