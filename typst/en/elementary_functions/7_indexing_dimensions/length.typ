#import "../nelson_help.typ": *

= length <elementary_functions:7_indexing_dimensions.length>

Length of an object.

== Syntax

- #raw("l = length(M)");

== Input argument

/ M: a variable

== Output argument

/ l: the length of the largest array dimension in M.

== Description

For matrix or N-dimensional array,#strong[length]; returns the number of elements along the largest dimension. For empty object, #strong[length]; returns 0. For scalar,#strong[length]; returns 1. For a vector,#strong[length]; returns the number of elements.


== Example

``````matlab
length(ones(3, 0))
length(3)
length([1 2 3 4 5])
length(ones(3, 4, 5))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.size>)[size];, #nlink(<elementary_functions:7_indexing_dimensions.numel>)[numel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
