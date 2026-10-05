#import "../nelson_help.typ": *

= table2timetable <table:1_create_convert_tables.table2timetable>

Convert table to timetable.

== Syntax

- #raw("TT = table2timetable(T, 'RowTimes', rowTimes)");
- #raw("TT = table2timetable(T, 'TimeStep', dt)");
- #raw("TT = table2timetable(T, 'SampleRate', fs)");

== Input argument

/ T: Table object.

== Output argument

/ TT: Timetable object.

== Description

#strong[table2timetable]; converts a table to a timetable and assigns row times to the output rows.


== Example

``````matlab
T = table([1; 2; 3], 'VariableNames', {'A'});
t = datetime(2024, 1, 1) + days(0:2)';
TT = table2timetable(T, 'RowTimes', t)
``````


== See also

#nlink(<table:1_create_convert_tables.timetable2table>)[timetable2table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
