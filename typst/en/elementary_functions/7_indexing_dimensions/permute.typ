#import "../nelson_help.typ": *

= permute <elementary_functions:7_indexing_dimensions.permute>

Permute array dimensions.

== Syntax

- #raw("R = permute(A, order)");

== Input argument

/ A: an array.
/ order: Dimension order: row vector

== Output argument

/ R: result array rearranged with new dimension order.

== Description

#strong[permute]; rearranges the dimensions of an array according to the specified order.


== Example

``````matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.ipermute>)[ipermute];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];, #nlink(<operators:transpose>)[transpose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
