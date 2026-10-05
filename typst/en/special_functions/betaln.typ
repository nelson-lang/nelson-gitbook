#import "nelson_help.typ": *

= betaln <special_functions:betaln>

Logarithm of the beta function.

== Syntax

- #raw("L = betaln(Z, W)");

== Input argument

/ Z: real scalar, vector, or matrix.
/ W: real scalar, vector, or matrix.

== Output argument

/ L: natural logarithm of the beta function.

== Description

#strong[betaln]; computes the natural logarithm of the beta function, log(beta(Z,W)), without the underflow or overflow that a direct computation may cause for large Z and W.


== Example

``````matlab
L = betaln(10, 20)
``````


== See also

#nlink(<special_functions:beta>)[beta];, #nlink(<special_functions:gammaln>)[gammaln];, #nlink(<special_functions:gamma>)[gamma];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
