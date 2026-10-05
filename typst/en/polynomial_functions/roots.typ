#import "nelson_help.typ": *

= roots <polynomial_functions:roots>

Find polynomial roots.

== Syntax

- #raw("r = roots(p)");

== Input argument

/ p: vector: polynomial coefficients

== Output argument

/ r: roots

== Description

#strong[r \= roots(c)]; finds the roots of the polynomial #strong[c];.#strong[r]; is a column vector.

 This function uses the companion matrix of the polynomial to find the roots.


== Example

``````matlab

p = [1 0 0 0 -1];
r = roots(p)
``````


== See also

#nlink(<polynomial_functions:poly>)[poly];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
