#import "../nelson_help.typ": *

= mink <elementary_functions:2_elementary_math.mink>

k smallest elements of an array

== Syntax

- #raw("B = mink(A, k)");
- #raw("[B, I] = mink(A, k)");
- #raw("B = mink(A, k, dim)");

== Input argument

/ A: numeric array (vector or matrix)
/ k: positive integer specifying how many smallest elements to return
/ dim: optional dimension along which to operate (default: first non-singleton dimension)

== Output argument

/ B: array containing the k smallest elements of A along the specified dimension
/ I: indices of the k smallest elements with respect to A along the specified dimension

== Description

#strong[mink]; returns the k smallest elements of array#strong[A];. When A is a vector, the result is the k smallest values from A. When A is a matrix,#strong[mink]; operates along the specified dimension (or the first non-singleton dimension by default) and returns the k smallest elements for each slice along that dimension.

 If #strong[k]; is larger than the number of available elements along the operating dimension, all elements are returned (sorted ascending). When called as #strong[\[B, I\] \= mink(A, k)];,#strong[I]; contains the indices of the returned elements with respect to #strong[A];.


== Examples

Vector example

``````matlab

A = [5 2 4 1];
B = mink(A, 2)   % returns [1 2]
[B, I] = mink(A, 3) % returns [1 2 4] and indices [4 2 3]
            
``````

Matrix example (along columns)

``````matlab

M = [4 2; 1 3];
B = mink(M, 1)   % returns [1 2] operating along first non-singleton dimension (columns)
B = mink(M, 2, 1) % returns 2 smallest per column
            
``````


== See also

#nlink(<elementary_functions:2_elementary_math.maxk>)[maxk];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
