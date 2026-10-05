#import "../nelson_help.typ": *

= size <elementary_functions:7_indexing_dimensions.size>

Size of an object.

== Syntax

- #raw("s = size(X)");
- #raw("sdim = size(X, dim)");
- #raw("vec = size(X, dims)");
- #raw("[r, c] = size(X)");
- #raw("[s1, ... , sn] = size(X)");

== Input argument

/ X: a variable
/ dim: a variable: a positive integer to get the dimth dimension.
/ dims: a variable: a vector of positive integer to get the dimth dimensions.

== Output argument

/ s: a row vector whose elements contain the length of the corresponding dimension of X.
/ sdim: the length of dimension dim.
/ vec: length of dimensions dims.
/ \[r, c\]: number of rows, and product of the remaining dimensions (number of columns for a matrix).
/ \[s1, ... , sn\]: length of each dimension; sn is the product of the remaining dimensions, and outputs beyond ndims(X) are 1.

== Examples

``````matlab
X = rand(3, 4, 5, 6);
size(X)
size(X, 3)
size(X, [2 4])
[r, c] =size(X)
[s1, s2, s3, s4] = size(X)
``````

``````matlab
size(cell(4,3))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.length>)[length];, #nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
