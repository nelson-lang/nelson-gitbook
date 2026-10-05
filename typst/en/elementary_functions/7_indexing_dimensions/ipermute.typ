#import "../nelson_help.typ": *

= ipermute <elementary_functions:7_indexing_dimensions.ipermute>

Inverse permute array dimensions.

== Syntax

- #raw("R = ipermute(A, order)");

== Input argument

/ A: an array.
/ order: Dimension order: row vector

== Output argument

/ R: result array rearranged with new dimension order.

== Description

#strong[ipermute]; permutes the dimensions of an array (in inverse order of #strong[permute];).
== Example

``````matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
x2 = ipermute(y,[3 1 2])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];, #nlink(<operators:transpose>)[transpose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
