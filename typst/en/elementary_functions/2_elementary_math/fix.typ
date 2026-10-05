#import "../nelson_help.typ": *

= fix <elementary_functions:2_elementary_math.fix>

Round towards zero

== Syntax

- #raw("C = fix(A)");

== Input argument

/ A: a variable

== Output argument

/ C: result of fix.

== Description

#strong[fix]; returns an integer matrix made of nearest rounded integers toward zeros.

 Sparse single and sparse single complex inputs are supported. Only stored nonzero entries are rounded and the result keeps the sparse storage and the input precision.


== Examples

``````matlab
fix(pi)
``````

Round a sparse single matrix toward zero.

``````matlab
S = sparse(single([1.2 0; -2.7 3.1]));
C = fix(S)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.floor>)[floor];, #nlink(<elementary_functions:2_elementary_math.round>)[round];, #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [sparse single and sparse single complex inputs supported.],
)

// Author: Allan CORNET
