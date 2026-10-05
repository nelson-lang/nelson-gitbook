#import "../nelson_help.typ": *

= sqrt <elementary_functions:2_elementary_math.sqrt>

Square root.

== Syntax

- #raw("R = sqrt(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of sqrt: square root.

== Description

#strong[sqrt]; computes the square root.

 For real positive numbers:

 #latex("\\sqrt{x}"); For complex numbers #strong[z \= x + iy];:

 #latex("\\sqrt{z} = \\sqrt{r} e^{i\\phi/2}"); where

 #latex("r = |z| = \\sqrt{x^2 + y^2}"); and

 #latex("\\phi = \\arg(z) = \\text{atan2}(y, x)");
== Example

``````matlab
x = -3:3;
r = sqrt(x)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<elementary_functions:3_complex_numbers.angle>)[angle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
