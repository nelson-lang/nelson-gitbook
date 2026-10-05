#import "../nelson_help.typ": *

= tensorprod <linear_algebra:1_linear_systems.tensorprod>

Tensor products between two arrays.

== Syntax

- #raw("C = tensorprod(A, B)");
- #raw("C = tensorprod(A, B, dimA, dimB)");
- #raw("C = tensorprod(A, B, 'all')");
- #raw("C = tensorprod(___, 'NumDimensionsA', value)");

== Input argument

/ A, B: numeric arrays.
/ dimA, dimB: vectors listing the dimensions of A and B to contract. size(A, dimA(k)) must equal size(B, dimB(k)).
/ value: number of dimensions of A, used to account for trailing singleton dimensions.

== Output argument

/ C: tensor product. Its dimensions are the uncontracted dimensions of A followed by the uncontracted dimensions of B.

== Description

#strong[tensorprod(A, B)]; returns the outer product of A and B, an array of size \[size(A) size(B)\].

 #strong[tensorprod(A, B, dimA, dimB)]; contracts (sums the products over) the dimensions dimA of A with the dimensions dimB of B. For matrices, #strong[tensorprod(A, B, 2, 1)]; is the matrix product A\*B.

 #strong[tensorprod(A, B, 'all')]; contracts every dimension and returns the full inner product; A and B must have the same size.

 #strong['NumDimensionsA']; specifies how many dimensions A has so that trailing singleton dimensions can be contracted.


== Example

``````matlab
A = [1 2; 3 4];
B = [5 6; 7 8];
C = tensorprod(A, B, 2, 1)
``````


== See also

#nlink(<linear_algebra:1_linear_systems.kron>)[kron];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
