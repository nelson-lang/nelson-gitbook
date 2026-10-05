#import "../nelson_help.typ": *

= maxk <elementary_functions:2_elementary_math.maxk>

k largest elements of an array

== Syntax

- #raw("B = maxk(A, k)");
- #raw("[B, I] = maxk(A, k)");
- #raw("B = maxk(A, k, dim)");

== Input argument

/ A: numeric array (vector or matrix)
/ k: positive integer specifying how many largest elements to return
/ dim: optional dimension along which to operate (default: first non-singleton dimension)

== Output argument

/ B: array containing the k largest elements of A along the specified dimension
/ I: indices of the k largest elements with respect to A along the specified dimension

== Description

#strong[maxk]; returns the k largest elements of array#strong[A];. When A is a vector, the result is the k largest values from A. When A is a matrix,#strong[maxk]; operates along the specified dimension (or the first non-singleton dimension by default) and returns the k largest elements for each slice along that dimension.

 If #strong[k]; is larger than the number of available elements along the operating dimension, all elements are returned (sorted descending). When called as #strong[\[B, I\] \= maxk(A, k)];,#strong[I]; contains the indices of the returned elements with respect to #strong[A];.


== Examples

Vector example

``````matlab

A = [5 2 4 1];
B = maxk(A, 2)   % returns [5 4]
[B, I] = maxk(A, 3) % returns [5 4 2] and indices [1 3 2]
            
``````

Matrix example (along columns)

``````matlab

M = [4 2; 1 3];
B = maxk(M, 1)   % returns [4 3] operating along first non-singleton dimension (columns)
B = maxk(M, 2, 1) % returns 2 largest per column
            
``````


== See also

#nlink(<elementary_functions:2_elementary_math.mink>)[mink];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
