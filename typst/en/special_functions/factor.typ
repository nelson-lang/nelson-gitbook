#import "nelson_help.typ": *

= factor <special_functions:factor>

Prime factors

== Syntax

- #raw("f = factor(n)");

== Input argument

/ n: real, nonnegative integer scalar

== Output argument

/ p: vector with Prime factors.

== Description

#strong[f \= factor(n)]; returns a row vector with the prime factors of #strong[n];.

 Vector #strong[f]; is of the same data type as #strong[n];.


== Example

``````matlab
f = factor(204)
``````


== See also

#nlink(<special_functions:primes>)[primes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
