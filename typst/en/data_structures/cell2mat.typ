#import "nelson_help.typ": *

= cell2mat <data_structures:cell2mat>

Transform a cell array containing matrices into a single, concatenated matrix.

== Syntax

- #raw("M = cell2mat(ce)");

== Input argument

/ ce: a cell.

== Output argument

/ M: array.

== Description

#strong[M \= cell2smat(ce)]; creates a single matrix by merging all elements within the cell array #strong[ce]; into a multi-dimensional array. The elements in #strong[ce]; can consist of numeric, logical, or character matrices, cell arrays, or structs, and they must be compatible for concatenation using #strong[cat]; function.


== Example

``````matlab
C = {[10], [20 30 40]; [90; 50], [60 76 88; 110 111 112]};
 M = cell2mat(C)
``````


== See also

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:struct2cell>)[struct2cell];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
