#import "../nelson_help.typ": *

= kron <linear_algebra:1_linear_systems.kron>

Kronecker tensor product.

== Syntax

- #raw("K = kron(A, B)");

== Input argument

/ A: a matrix: scalars, vectors or matrices.
/ B: a matrix: scalars, vectors or matrices.

== Output argument

/ K: result: Kronecker Tensor Product.

== Description

#strong[K \= kron(A, B)]; computes the Kronecker tensor product of matrices#strong[A]; and #strong[B];.

 For matrices

 #latex("A"); of size

 #latex("m \\times n"); and

 #latex("B"); of size

 #latex("p \\times q"); , the Kronecker product is:

 #latex("A \\otimes B = \\begin{pmatrix} a_{11}B & a_{12}B & \\cdots & a_{1n}B \\\\ a_{21}B & a_{22}B & \\cdots & a_{2n}B \\\\ \\vdots & \\vdots & \\ddots & \\vdots \\\\ a_{m1}B & a_{m2}B & \\cdots & a_{mn}B \\end{pmatrix}"); The result is an

 #latex("mp \\times nq"); matrix.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/Kronecker\_product

== Example

``````matlab
A = [1, 2; 3, 4];
B = [0, 5; 6, 7];
K = kron(A, B)

``````


== See also

#nlink(<special_functions:cross>)[cross];, #nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
