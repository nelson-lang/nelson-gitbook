#import "../nelson_help.typ": *

= nextpow2 <elementary_functions:2_elementary_math.nextpow2>

Exponent of next higher power of 2

== Syntax

- #raw("R = nextpow2(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of nextpow2: next higher power of 2.

== Description

if #strong[M]; is a vector or a matrix#strong[nextpow2(M)]; applies element-wise.

 If #strong[M]; is a scalar, #strong[nextpow2(M)]; returns the first#strong[p]; such that #strong[2^p \>\= abs(M)];.


== Example

``````matlab
R = nextpow2([10, Inf, 30, -Inf, 90, NaN])
M = uint32([1020 4000 32700]);
R = nextpow2(M)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.pow2>)[pow2];, #nlink(<elementary_functions:2_elementary_math.log2>)[log2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
