#import "nelson_help.typ": *

= nelson.io.RowFilter <parquet:class_RowFilter>

Object that stores a row filter expression.

== Syntax

- #raw("rf = rowfilter(names)");
- #raw("expr = rf.VariableName operator value");
- #raw("T = expr.apply(T)");

== Input argument

/ names: variable names specified as a string array or cell array of character vectors.
/ T: a table or timetable.

== Output argument

/ rf: a #strong[nelson.io.RowFilter]; object.
/ expr: a #strong[nelson.io.RowFilter]; object containing a filter expression.

== Description

#strong[nelson.io.RowFilter]; stores the variable names and expression used to select rows.

 Variable names are accessed with dot notation. Relational and logical operators create a filter expression. The expression is evaluated when #strong[apply]; is called or when the object is used as a #strong[RowFilter]; argument for Parquet reading functions.

 The #strong[variables]; method returns the names referenced by the expression.


== Example

``````matlab
T = table([1; 2; 3; 4], [10; 20; 30; 40], ...
  'VariableNames', {'Id', 'Value'});
rf = rowfilter({'Id', 'Value'});
expr = rf.Id > 1 & rf.Value <= 30;
expr.variables()
R = expr.apply(T)
``````


== See also

#nlink(<parquet:rowfilter>)[rowfilter];, #nlink(<parquet:parquetread>)[parquetread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
