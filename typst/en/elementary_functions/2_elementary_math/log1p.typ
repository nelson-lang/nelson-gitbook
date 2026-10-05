#import "../nelson_help.typ": *

= log1p <elementary_functions:2_elementary_math.log1p>

log(1 + x) accurately for small values of x.

== Syntax

- #raw("R = log1p(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of log(1 + x) accurately for small values of x.

== Description

#strong[log1p]; computes log(1 + x) accurately for small values of x.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = log1p(x)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.log>)[log];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
