#import "nelson_help.typ": *

= cell2struct <data_structures:cell2struct>

Creates a struct from a cell.

== Syntax

- #raw("st = cell2struct(ce, fields)");
- #raw("st = cell2struct(ce, fields, dim)");

== Input argument

/ ce: a cell.
/ fields: a cell of strings.
/ dim: dimension along cell is converted.

== Output argument

/ st: a struct array.

== Description

#strong[st \= cell2struct(ce, fields)]; creates a struct from a cell.


== Example

``````matlab
ce = {85, 50, 68; 'Pierre', 'Anna', 'Roberto'}
fields = {'Height','Name'}
A = cell2struct (ce, fields, 1)
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
