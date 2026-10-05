#import "nelson_help.typ": *

= cell <data_structures:cell>

Create cell array of empty matrices.

== Syntax

- #raw("C = cell()");
- #raw("C = cell(m)");
- #raw("C = cell(m, n)");
- #raw("C = cell(m, n, ... , p)");
- #raw("C = cell(sz)");
- #raw("C = cell(A)");

== Input argument

/ m, n, ... , p: dimensions of the cell to create.
/ sz: a vector of integer values (dimensions of the cell to create).
/ A: a string array.

== Output argument

/ C: a cell

== Description

#strong[cell]; returns a cell array of empty matrices.

 #strong[cell()]; is equivalent to #strong[cell(0)];

 #strong[cell(A)]; with A a string array converts to cell.


== Examples

``````matlab
A = eye(2, 4);
sz = size(A)
C = cell(sz)
``````

``````matlab
A = ["Nel", "son"; "open", "source"];
C = cell(A)
``````


== See also

#nlink(<data_structures:struct>)[struct];, #nlink(<types:iscell>)[iscell];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
