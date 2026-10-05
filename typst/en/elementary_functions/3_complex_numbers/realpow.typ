#import "../nelson_help.typ": *

= realpow <elementary_functions:3_complex_numbers.realpow>

Element-wise power with real-only result.

== Syntax

- #raw("Z = realpow(X, Y)");

== Input argument

/ X: Real base values.
/ Y: Real exponent values.

== Output argument

/ Z: result of X .^ Y when all values are real.

== Description

#strong[realpow]; computes element-wise powers and returns an error if an input or the result is complex.

 #strong[X]; and #strong[Y]; must have compatible sizes for element-wise power.


== Example

``````matlab
X = -2 * ones(3, 3);
Y = pascal(3);
Z = realpow(X, Y)
``````


== See also

#nlink(<operators:power>)[power];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];, #nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:2_elementary_math.nthroot>)[nthroot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
