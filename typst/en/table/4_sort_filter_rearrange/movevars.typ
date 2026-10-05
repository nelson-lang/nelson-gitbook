#import "../nelson_help.typ": *

= movevars <table:4_sort_filter_rearrange.movevars>

Move variables in a table.

== Syntax

- #raw("TB = movevars(TA, vars, 'Before', location)");
- #raw("TB = movevars(TA, vars, 'After', location)");
- #raw("TB = movevars(TA, vars, 'Before', ref)");
- #raw("TB = movevars(TA, vars, 'After', ref)");

== Input argument

/ TA: Input table.
/ vars: Variables to move, specified by names, indices or logical selectors.
/ ref: Reference variable used with #strong[Before]; or #strong[After];.

== Output argument

/ TB: Table with variables reordered.

== Description

#strong[movevars]; reorders table variables without changing their data. The location can be a variable name or a variable index.


== Examples

Move a variable to the first position

``````matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'});
T = movevars(T, 'B', 'Before', 1)
``````

Move a variable after another variable

``````matlab
T = table([1; 2], [3; 4], [5; 6], 'VariableNames', {'A', 'B', 'C'});
T = movevars(T, 'A', 'After', 'C')
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.addvars>)[addvars];, #nlink(<table:4_sort_filter_rearrange.renamevars>)[renamevars];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
