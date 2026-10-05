#import "../nelson_help.typ": *

= log10 <elementary_functions:2_elementary_math.log10>

Common logarithm (base 10).

== Syntax

- #raw("R = log10(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of log: base 10.

== Description

#strong[log10]; computes common logarithm (base 10).

 For negative real and complex values of M,#strong[log10]; function returns complex values.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = log10(x)
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
