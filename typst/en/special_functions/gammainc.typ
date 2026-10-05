#import "nelson_help.typ": *

= gammainc <special_functions:gammainc>

Incomplete gamma function.

== Syntax

- #raw("Y = gammainc(X, A)");
- #raw("Y = gammainc(X, A, tail)");

== Input argument

/ X: nonnegative real values.
/ A: nonnegative real values.
/ tail: 'lower' (default) or 'upper'.

== Output argument

/ Y: regularized incomplete gamma function.

== Description

#strong[gammainc]; returns the lower regularized incomplete gamma function evaluated at the elements of X and A. gammainc(X, A, 'upper') returns the upper (complementary) regularized incomplete gamma function. X and A must be the same size, or either can be a scalar.


== Example

``````matlab
Y = gammainc(0.5, 2)
``````


== See also

#nlink(<special_functions:gamma>)[gamma];, #nlink(<special_functions:gammaln>)[gammaln];, #nlink(<special_functions:betainc>)[betainc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
