#import "nelson_help.typ": *

= gcd <special_functions:gcd>

Greatest common divisor

== Syntax

- #raw("G = gcd(A, B)");
- #raw("[G, C, D] = gcd(A, B)");

== Input argument

/ A: a scalar, vector, or matrix of real integer values.
/ B: a scalar, vector, or matrix of real integer values.

== Output argument

/ G: result of gcd function (Greatest common divisor).
/ C, D: Bezout coefficients such that C .\* A + D .\* B \=\= G.

== Description

#strong[G \= gcd(A, B)]; computes the greatest common divisor using the Euclidian algorithm.

 #strong[\[G, C, D\] \= gcd(A, B)]; also returns the Bezout coefficients #strong[C]; and #strong[D]; such that #strong[C .\* A + D .\* B \=\= G];. Unsigned integer inputs are not supported by this syntax.


== Bibliography

Knuth, D. “Algorithms A and X.” The Art of Computer Programming, Vol. 2, Section 4.5.2. Reading, MA: Addison-Wesley, 1973.

== Example

``````matlab
A = [-5 7; 10 0];
B = [-15 3; 50 0];
G = gcd(A, B)
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
