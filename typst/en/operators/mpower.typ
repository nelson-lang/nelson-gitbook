#import "nelson_help.typ": *

= mpower <operators:mpower>

Matrix power, ^ operator

== Syntax

- #raw("C = mpower(A, B)");
- #raw("C = A ^ B");

== Input argument

/ A: a variable
/ B: a variable

== Output argument

/ C: result of A^B

== Description

#strong[C \= mpower(A, B)]; performs matrix power operation: A^B

 Sparse floating-point square matrices are supported for integer scalar exponents. Double, single, complex double, and complex single sparse matrices keep sparse storage when possible.

 For non-integer scalar exponents, Nelson uses a dense matrix-function fallback when the sparse input class supports it.


== Examples

``````matlab
mpower(3, 4)
3^4
``````

``````matlab
A = sparse(single([1 2; 3 4]));
R = A ^ 2
full(R)
``````


== See also

#nlink(<operators:power>)[power];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [expanded sparse single and complex single matrix power support],
)

// Author: Allan CORNET
