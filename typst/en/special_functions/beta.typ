#import "nelson_help.typ": *

= beta <special_functions:beta>

Beta function.

== Syntax

- #raw("B = beta(Z, W)");

== Input argument

/ Z: real scalar, vector, or matrix.
/ W: real scalar, vector, or matrix.

== Output argument

/ B: value of the beta function.

== Description

#strong[beta]; computes the beta function B(Z,W) \= gamma(Z).\*gamma(W).\/gamma(Z+W).


== Example

``````matlab
B = beta(2, 3)
``````


== See also

#nlink(<special_functions:betaln>)[betaln];, #nlink(<special_functions:gamma>)[gamma];, #nlink(<special_functions:gammaln>)[gammaln];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
