#import "nelson_help.typ": *

= gammaln <special_functions:gammaln>

Logarithm of gamma function

== Syntax

- #raw("R = gammaln(M)");

== Input argument

/ M: a real single or real double matrix.

== Output argument

/ R: result of gammaln function.

== Description

The function#strong[gammaln(A)]; computes the natural logarithm of the gamma function for a given input#strong[A];, expressed as #strong[gammaln(A) \= log(gamma(A))];.

 It's important to note that A must be a nonnegative real number.

 Using gammaln helps prevent potential underflow and overflow issues that might arise if directly computing #strong[log(gamma(A))];.


== Example

``````matlab
R = gammaln([0:0.1:pi])
``````


== See also

#nlink(<special_functions:gamma>)[gamma];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
