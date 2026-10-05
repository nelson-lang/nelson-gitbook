#import "../nelson_help.typ": *

= timetable <table:1_create_convert_tables.timetable>

Create timetable from variables and row times.

== Syntax

- #raw("TT = timetable(rowTimes, var1, ..., varN)");
- #raw("TT = timetable(var1, ..., varN, 'RowTimes', rowTimes)");
- #raw("TT = timetable('Size', sz, 'VariableTypes', types)");

== Input argument

/ rowTimes: datetime or duration vector used as row times.
/ var1, ..., varN: Variables with one row per row time.

== Output argument

/ TT: Timetable object.

== Description

#strong[timetable]; creates a timetable, a tabular object whose rows are identified by times.

 Row times can be provided as the first input or with the #strong['RowTimes']; name-value argument.

 Variable names, dimension names, description, user data, and custom properties are stored in #strong[TT.Properties];.


== Example

``````matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [10; 20; 30], 'VariableNames', {'A'});
TT.Properties.RowTimes
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:1_create_convert_tables.array2timetable>)[array2timetable];, #nlink(<table:1_create_convert_tables.table2timetable>)[table2timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
