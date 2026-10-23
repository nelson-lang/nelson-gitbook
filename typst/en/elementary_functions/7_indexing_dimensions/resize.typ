#import "../nelson_help.typ": *

= resize <elementary_functions:7_indexing_dimensions.resize>

Resize an array by truncating or padding.

== Syntax

- #raw("B = resize(A, m)");
- #raw("B = resize(A, sz)");
- #raw("B = resize(A, sz, 'FillValue', v)");

== Input argument

/ A: the array to resize.
/ m: a scalar length, used to resize a vector.
/ sz: a size vector #strong[\[m n ...\]]; giving the size of the result.
/ v: the value used to fill added elements (default #strong[0]; for a numeric array).

== Output argument

/ B: the resized array, of the requested size and the class of #strong[A];.

== Description

#strong[resize]; returns an array of the requested size. Along each dimension, elements of #strong[A]; beyond the new size are dropped and positions beyond the original data are filled with a fill value, which is #strong[0]; for a numeric array unless #strong['FillValue']; is given. A scalar size resizes the length of a vector and keeps its orientation.


== Example

``````matlab
resize([1 2 3], 6)
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
