#import "../nelson_help.typ": *

= ndims <elementary_functions:7_indexing_dimensions.ndims>

Number of dimensions of an array.

== Syntax

- #raw("n = ndims(M)");

== Input argument

/ M: a variable

== Output argument

/ n: a integer value: Number of dimensions of M.

== Description

#strong[n \= ndims(M)]; return the number of dimension of the array#strong[M];.

 #strong[M]; is greater than or equal to 2.


== Example

``````matlab
ndims(ones(3, 0))
ndims(3)
ndims([1 2 3 4 5])
ndims(ones(3, 4, 5))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.size>)[size];, #nlink(<elementary_functions:7_indexing_dimensions.length>)[length];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
