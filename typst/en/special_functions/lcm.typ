#import "nelson_help.typ": *

= lcm <special_functions:lcm>

Least common multiple.

== Syntax

- #raw("L = lcm(A, B)");

== Input argument

/ A: a scalar, vector, or matrix of real integer values.
/ B: a scalar, vector, or matrix of real integer values.

== Output argument

/ L: least common multiple of A and B.

== Description

#strong[lcm]; returns the least common multiple of corresponding elements of A and B. Inputs must be real integers.


== Example

``````matlab
A = [4 6 8];
B = [6 9 12];
L = lcm(A, B)
``````


== See also

#nlink(<special_functions:gcd>)[gcd];, #nlink(<special_functions:factor>)[factor];, #nlink(<special_functions:primes>)[primes];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
