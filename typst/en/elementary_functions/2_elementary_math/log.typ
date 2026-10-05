#import "../nelson_help.typ": *

= log <elementary_functions:2_elementary_math.log>

Natural logarithm.

== Syntax

- #raw("R = log(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of log: Natural logarithm.

== Description

#strong[log]; computes the natural logarithm.

 For real positive numbers:

 #latex("\\ln(x)"); For complex numbers #strong[z];:

 #latex("\\ln(z) = \\ln|z| + i\\arg(z)"); where

 #latex("|z|"); is the modulus and

 #latex("\\arg(z)"); is the argument of #strong[z];.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = log(x)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.exp>)[exp];, #nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<elementary_functions:3_complex_numbers.angle>)[angle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
