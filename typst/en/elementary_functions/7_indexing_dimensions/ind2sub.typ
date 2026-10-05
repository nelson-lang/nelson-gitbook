#import "../nelson_help.typ": *

= ind2sub <elementary_functions:7_indexing_dimensions.ind2sub>

Linear index to matrix subscript values

== Syntax

- #raw("[row, col] = ind2sub(sz, ind)");
- #raw("[I1, I2, ..., In] = ind2sub(sz, ind)");

== Input argument

/ sz: size of array: vector of positive integers.
/ ind: linear indices.

== Output argument

/ row: row subscripts.
/ col: column subscripts.
/ I1, I2, ..., In: multidimensional subscripts.

== Description

#strong[ind2sub]; converts linear indices to subscript.


== Example

``````matlab
ind = [4 5 6 7];
sz = [4 4];
[row,col] = ind2sub(sz,ind)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.sub2ind>)[sub2ind];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
