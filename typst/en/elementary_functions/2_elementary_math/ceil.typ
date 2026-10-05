#import "../nelson_help.typ": *

= ceil <elementary_functions:2_elementary_math.ceil>

Round up

== Syntax

- #raw("C = ceil(A)");

== Input argument

/ A: a variable

== Output argument

/ C: result of ceil.

== Description

#strong[ceil]; returns an integer or complex matrix made of rounded up elements.

 Sparse single and sparse single complex inputs are supported. Only stored nonzero entries are rounded and the result keeps the sparse storage and the input precision.


== Examples

``````matlab
ceil(pi)
``````

Round a sparse single matrix upward.

``````matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = ceil(S)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.floor>)[floor];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.round>)[round];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and sparse single complex inputs supported.],
)

// Author: Allan CORNET
