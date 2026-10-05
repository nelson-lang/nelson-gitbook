#import "../nelson_help.typ": *

= floor <elementary_functions:2_elementary_math.floor>

Round down

== Syntax

- #raw("C = floor(A)");

== Input argument

/ A: a variable

== Output argument

/ C: result of floor.

== Description

#strong[floor]; returns an integer matrix made of nearest rounded down integers.

 Sparse single and sparse single complex inputs are supported. Only stored nonzero entries are rounded and the result keeps the sparse storage and the input precision.


== Examples

``````matlab
floor(pi)
``````

Round a sparse single matrix downward.

``````matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = floor(S)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.round>)[round];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and sparse single complex inputs supported.],
)

// Author: Allan CORNET
