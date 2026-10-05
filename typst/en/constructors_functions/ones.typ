#import "nelson_help.typ": *

= ones <constructors_functions:ones>

Creates an matrix made of ones.

== Syntax

- #raw("R = ones");
- #raw("R = ones(n)");
- #raw("R = ones(n, m)");
- #raw("R = ones(n, m, ..., z)");
- #raw("R = ones(n, m, ..., z, 'like', V)");
- #raw("R = ones(n, m, ..., z, classname)");

== Input argument

/ n: a variable: n-by-n matrix
/ m: a variable: n-by-m matrix

== Description

#strong[ones]; returns a matrix made of ones.


== Examples

``````matlab
ones(3,2)
``````

``````matlab
ones(3,1,3,'single')
``````

``````matlab
A = single([3 3])
B = ones(2,4,'like', A)
``````

``````matlab
tic(); single(1) * ones(1000); toc()
tic();ones(1000,'single'); toc()
``````


== See also

#nlink(<constructors_functions:eye>)[eye];, #nlink(<constructors_functions:zeros>)[zeros];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
