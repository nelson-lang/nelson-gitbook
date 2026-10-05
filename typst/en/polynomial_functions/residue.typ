#import "nelson_help.typ": *

= residue <polynomial_functions:residue>

Partial fraction expansion (residues)

== Syntax

- #raw("[r, p, k] = residue(b, a)");
- #raw("[b, a] = residue(r, p, k)");

== Input argument

/ b: vector: numerator polynomial coefficients.
/ a: vector: denominator polynomial coefficients.
/ r: column vector: residues.
/ p: column vector: poles.
/ k: row vector: direct term (empty when the rational function is proper).

== Output argument

/ r: column vector: residues.
/ p: column vector: poles.
/ k: row vector: direct term.

== Description

#strong[residue]; computes the partial fraction expansion of the ratio of two polynomials b(s) \/ a(s).

 With two inputs, it returns the residues r, the poles p and the direct term k such that

 b(s) \/ a(s) \= r(1) \/ (s - p(1)) + ... + r(n) \/ (s - p(n)) + k(s).

 For a pole of multiplicity m repeated in p, the corresponding terms are r(j) \/ (s - p) ^ 1, ..., r(j + m - 1) \/ (s - p) ^ m.

 With three inputs, #strong[residue]; performs the reverse operation and returns the numerator b and the denominator a of the equivalent rational function.


== Examples

``````matlab
[r, p, k] = residue([1 0], [1 -3 2])
``````

``````matlab
[r, p, k] = residue([2 5 3 6], [1 6 11 6]);
[b, a] = residue(r, p, k)
``````


== See also

#nlink(<polynomial_functions:poly>)[poly];, #nlink(<polynomial_functions:roots>)[roots];, #nlink(<polynomial_functions:deconv>)[deconv];.

// Author: Allan CORNET
