#import "nelson_help.typ": *

= struct2cell <data_structures:struct2cell>

Creates a cell from a structure.

== Syntax

- #raw("ce = struct2cell(st)");

== Input argument

/ st: a structure.

== Output argument

/ ce: a cell.

== Description

#strong[ce \= struct2cell(st)]; returns a new cell from the structure.


== Example

``````matlab
names = {'Pierre', 'Anna', 'Roberto'}
values =  {45, 42, 13}
st = struct ('name', names, 'age', values);
ce = struct2cell(st)
``````


== See also

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
