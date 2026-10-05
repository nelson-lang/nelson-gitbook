#import "nelson_help.typ": *

= dot <special_functions:dot>

Dot product.

== Syntax

- #raw("R = dot(A, B)");
- #raw("R = dot(A, B, dim)");

== Input argument

/ A, B: numeric arrays.
/ dim: positive integer scalar: Dimension to operate along.

== Output argument

/ R: Scalar Dot Product.

== Description

#strong[R \= dot(A, B)]; returns the scalar dot product of #strong[A]; and #strong[B];.

 For real vectors

 #latex("\\mathbf{a}"); and

 #latex("\\mathbf{b}"); of length

 #latex("n"); :

 #latex("\\mathbf{a} \\cdot \\mathbf{b} = \\sum_{i=1}^{n} a_i b_i = a_1 b_1 + a_2 b_2 + \\cdots + a_n b_n"); For complex vectors, the dot product is:

 #latex("\\mathbf{a} \\cdot \\mathbf{b} = \\sum_{i=1}^{n} \\overline{a_i} b_i"); where

 #latex("\\overline{a_i}"); denotes the complex conjugate of

 #latex("a_i");
== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Dot\_product

== Example

``````matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = dot(A, B)
R = dot(A, B, 2)
``````


== See also

#nlink(<elementary_functions:3_complex_numbers.conj>)[conj];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
