#import "../nelson_help.typ": *

= det <linear_algebra:1_linear_systems.det>

Matrix determinant.

== Syntax

- #raw("res = det(x)");

== Input argument

/ x: a numeric value: scalar or square matrix (double or single), dense or sparse

== Output argument

/ res: real or complex number (double or single), the determinant base 10.

== Description

#strong[res \= det(x)]; returns the determinant of square matrix x.

 Sparse double, single, complex double, and complex single matrices are supported. The result keeps single precision for single inputs.

 For a

 #latex("2 \\times 2"); matrix:

 #latex("\\det\\begin{pmatrix} a & b \\\\ c & d \\end{pmatrix} = ad - bc"); For larger matrices, the determinant can be computed using cofactor expansion:

 #latex("\\det(A) = \\sum_{j=1}^{n} (-1)^{i+j} a_{ij} M_{ij}"); where

 #latex("M_{ij}"); is the minor of element

 #latex("a_{ij}");
== Examples

``````matlab
A = [10 -20 40; -50 20 0; 10 0 30]
D = det(A)

``````

``````matlab
A = sparse(single([1 + 2i 0; 0 3]));
D = det(A)
``````


== See also

#nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [added sparse single and complex single support],
)

// Author: Allan CORNET
