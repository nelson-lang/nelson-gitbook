#import "../nelson_help.typ": *

= numel <elementary_functions:7_indexing_dimensions.numel>

Number of elements.

== Syntax

- #raw("nbel = numel(M)");

== Input argument

/ M: a variable

== Output argument

/ nbel: the number of elements.

== Description

Return the number of elements in the object M.


== Example

``````matlab
numel(ones(3, 0))
numel(ones(3,4))
numel(ones(3,4,5))
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
