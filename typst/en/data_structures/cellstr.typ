#import "nelson_help.typ": *

= cellstr <data_structures:cellstr>

Converts to cell of character array.

== Syntax

- #raw("ce = cellstr(A)");

== Input argument

/ A: a string, a string array, cell of character array.

== Output argument

/ ce: a cell of character array

== Description

#strong[cellstr(A)]; converts to cell of character array.


== Examples

``````matlab
cellstr('Nelson')
``````

``````matlab
cellstr({'Nelson'})
``````

``````matlab
cellstr({})
``````


== See also

#nlink(<data_structures:iscellstr>)[iscellstr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
