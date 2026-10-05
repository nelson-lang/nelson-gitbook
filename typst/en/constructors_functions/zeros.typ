#import "nelson_help.typ": *

= zeros <constructors_functions:zeros>

Creates an matrix made of zeros.

== Syntax

- #raw("R = zeros");
- #raw("R = zeros(n)");
- #raw("R = zeros(n, m)");
- #raw("R = zeros(n, m, ..., z)");
- #raw("R = zeros(n, m, ..., z, 'like', V)");
- #raw("R = zeros(n, m, ..., z, classname)");

== Input argument

/ n: a variable
/ m: a variable

== Description

#strong[zeros]; returns a matrix made of zeros.


== Examples

``````matlab
zeros(3, 2)
``````

``````matlab
zeros(3, 1, 3, 'single')
``````

``````matlab
A = single([3 3])
B = zeros(2, 4, 'like', A)
``````

``````matlab
tic(); single(1) * zeros(1000); toc()
tic();zeros(1000, 'single'); toc()
``````


== See also

#nlink(<constructors_functions:eye>)[eye];, #nlink(<constructors_functions:ones>)[ones];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
