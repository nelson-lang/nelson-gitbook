#import "nelson_help.typ": *

= compan <polynomial_functions:compan>

Companion matrix.

== Syntax

- #raw("A = compan(c)");

== Input argument

/ c: a vector of polynomial coefficients, in descending powers.

== Output argument

/ A: the companion matrix whose first row is #strong[-c(2:end) \/ c(1)]; and whose first subdiagonal is ones.

== Description

#strong[compan]; returns the companion matrix of the polynomial whose coefficients are #strong[c];.

 The eigenvalues of the companion matrix are the roots of the polynomial, so #strong[eig(compan(c))]; and #strong[roots(c)]; return the same values.

 For a vector of length n, the result is an (n-1)-by-(n-1) matrix. A single coefficient returns an empty matrix.


== Example

``````matlab
A = compan([1 -6 11 -6])
r = eig(A)

``````


== See also

#nlink(<polynomial_functions:roots>)[roots];, #nlink(<polynomial_functions:poly>)[poly];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
