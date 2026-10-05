#import "nelson_help.typ": *

= mat2cell <data_structures:mat2cell>

Split an array into a cell array.

== Syntax

- #raw("C = mat2cell(A, rowSizes)");
- #raw("C = mat2cell(A, rowSizes, colSizes, ...)");

== Input argument

/ A: Input array.
/ rowSizes: Block sizes for the first dimension.

== Output argument

/ C: Cell array containing blocks of A.

== Description

#strong[mat2cell]; splits #strong[A]; into cells whose sizes are given for each dimension.


== Example

``````matlab
C = mat2cell(reshape(1:12, [3 4]), [1 2], [3 1])
``````


== See also

#nlink(<data_structures:num2cell>)[num2cell];, #nlink(<data_structures:cell2mat>)[cell2mat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
