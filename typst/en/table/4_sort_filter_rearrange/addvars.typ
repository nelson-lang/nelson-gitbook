#import "../nelson_help.typ": *

= addvars <table:4_sort_filter_rearrange.addvars>

Add variables to a table or timetable.

== Syntax

- #raw("TB = addvars(TA, X)");
- #raw("TB = addvars(TA, X1, ... , XN, 'NewVariableNames', names)");
- #raw("TB = addvars(TA, X, 'Before', varName)");
- #raw("TB = addvars(TA, X, 'After', varName)");

== Input argument

/ TA: Input table or timetable.
/ X, X1, ... , XN: Variable data to add. Each variable must have the same number of rows as #strong[TA];.
/ names: Names for the new variables.
/ varName: Reference variable used with #strong[Before]; or #strong[After];.

== Output argument

/ TB: Table or timetable with added variables.

== Description

#strong[addvars]; adds one or more variables to a table and updates #strong[T.Properties.VariableNames];.

 New variables are appended by default. Use #strong[Before]; or #strong[After]; to choose the insertion position.

 Without #strong[NewVariableNames];, a variable passed by name keeps that name and any other input is named #strong[Var]; followed by its column number; a name already used by the table or by another new variable is suffixed with #strong[\_1];, #strong[\_2];, ...

 For a timetable, the row times and the timetable properties are kept.


== Examples

Add a variable at the end of a table

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'})
``````

Add a variable before an existing variable

``````matlab
T = table([1; 2], [5; 6], 'VariableNames', {'A', 'C'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'}, 'Before', 'C')
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.movevars>)[movevars];, #nlink(<table:4_sort_filter_rearrange.removevars>)[removevars];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
