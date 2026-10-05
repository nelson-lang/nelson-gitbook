#import "../nelson_help.typ": *

= rows2vars <table:4_sort_filter_rearrange.rows2vars>

Reorient table rows into variables.

== Syntax

- #raw("T2 = rows2vars(T)");
- #raw("T2 = rows2vars(T, 'VariableNamesSource', var)");

== Input argument

/ T: Input table.

== Output argument

/ T2: Reoriented table.

== Description

#strong[rows2vars]; creates table variables from rows of the input table.


== Example

``````matlab
T = table({'r1'; 'r2'}, [10; 20], 'VariableNames', {'Name', 'Value'});
R = rows2vars(T, 'VariableNamesSource', 'Name')
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
