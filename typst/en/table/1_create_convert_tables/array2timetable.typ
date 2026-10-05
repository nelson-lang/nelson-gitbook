#import "../nelson_help.typ": *

= array2timetable <table:1_create_convert_tables.array2timetable>

Convert homogeneous array to timetable.

== Syntax

- #raw("TT = array2timetable(A, 'RowTimes', rowTimes)");

== Input argument

/ A: Input array.
/ rowTimes: datetime or duration vector.

== Output argument

/ TT: Timetable object.

== Description

#strong[array2timetable]; converts the columns of #strong[A]; to variables in a timetable.

 Use #strong['VariableNames']; to provide variable names for the output timetable.


== Example

``````matlab
t = datetime(2024, 1, 1) + days(0:2)';
A = [1 10; 2 20; 3 30];
TT = array2timetable(A, 'RowTimes', t)
``````


== See also

#nlink(<table:1_create_convert_tables.array2table>)[array2table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
