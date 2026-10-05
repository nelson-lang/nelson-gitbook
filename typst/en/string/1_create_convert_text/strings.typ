#import "../nelson_help.typ": *

= strings <string:1_create_convert_text.strings>

Create string array without characters.

== Syntax

- #raw("C = strings()");
- #raw("C = strings(m)");
- #raw("C = strings(m, n)");
- #raw("C = strings(m, n, ... , p)");
- #raw("C = strings(sz)");

== Input argument

/ m, n, ... , p: dimensions of the string array to create.
/ sz: a vector of integer values (dimensions of the cell to create).

== Output argument

/ C: a string array

== Description

#strong[strings]; returns a cell array of empty matrices.


== Example

``````matlab
A = eye(2, 4);
sz = size(A)
C = strings(sz)
``````


== See also

#nlink(<data_structures:cell>)[cell];, #nlink(<types:isstring>)[isstring];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
