#import "nelson_help.typ": *

= primes <special_functions:primes>

Prime numbers less than or equal to input value

== Syntax

- #raw("p = primes(n)");

== Input argument

/ n: scalar, real integer value

== Output argument

/ p: vector with prime numbers.

== Description

#strong[p \= primes(n)]; returns a row vector containing all the prime numbers less than or equal to n.

 The data type of p is the same as that of n.


== Example

``````matlab
p = primes(15)
``````


== See also

#nlink(<special_functions:factor>)[factor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
