#import "nelson_help.typ": *

= power <operators:power>

Element wise power, .^ operator

== Syntax

- #raw("C = power(A, B)");
- #raw("C = A .^ B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A.^B

== Description

#strong[C \= power(A, B)]; performs an element wise power operation: A .^ B .

 Sparse floating-point inputs are supported for double, single, complex double, and complex single data. Sparse bases preserve sparse storage for scalar, dense, or sparse exponents when the result can be represented as a sparse matrix.

 If an exponent makes implicit sparse zeros nonzero, for example exponent 0 or a negative exponent, Nelson materializes the corresponding sparse pattern entries.


== Examples

``````matlab
power(3, 4)
3.^4
``````

``````matlab
A = sparse(single([2 0; 0 3]));
R = A .^ 2
full(R)
C = sparse(single([1 + 2i 0; 0 3]));
full(C .^ 2)
``````


== See also

#nlink(<operators:mpower>)[mpower];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [expanded sparse single and complex single support],
)

// Author: Allan CORNET
