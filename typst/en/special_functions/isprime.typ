#import "nelson_help.typ": *

= isprime <special_functions:isprime>

Determine which array elements are prime.

== Syntax

- #raw("TF = isprime(X)");

== Input argument

/ X: a scalar, vector, or matrix of nonnegative integers.

== Output argument

/ TF: logical array, true where the corresponding element of X is a prime number.

== Description

#strong[isprime]; returns a logical array the same size as X, containing true where the elements of X are prime numbers and false where they are not.


== Example

``````matlab
isprime([2 3 4 5 6 7 8 9 10 11])
``````


== See also

#nlink(<special_functions:primes>)[primes];, #nlink(<special_functions:factor>)[factor];, #nlink(<special_functions:gcd>)[gcd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
