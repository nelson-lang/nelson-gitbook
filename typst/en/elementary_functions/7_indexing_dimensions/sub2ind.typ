#import "../nelson_help.typ": *

= sub2ind <elementary_functions:7_indexing_dimensions.sub2ind>

Matrix subscript values to linear index

== Syntax

- #raw("ind = sub2ind(sz, row, col)");
- #raw("ind = sub2ind(sz, I1, I2, ..., In)");

== Input argument

/ sz: size of array: vector of positive integers.
/ row: row subscripts.
/ col: column subscripts.
/ I1, I2, ..., In: multidimensional subscripts.

== Output argument

/ ind: linear indices.

== Description

#strong[sub2ind]; converts subscripts to linear indices. .


== Example

``````matlab
row = [2 3 4 2];
col = [2 2 2 3];
sz = [3 3];
ind = sub2ind(sz, row, col)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.sub2ind>)[ind2sub];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
