#import "../nelson_help.typ": *

= timetable2table <table:1_create_convert_tables.timetable2table>

Convert timetable to table.

== Syntax

- #raw("T = timetable2table(TT)");
- #raw("T = timetable2table(TT, 'ConvertRowTimes', tf)");

== Input argument

/ TT: Timetable object.

== Output argument

/ T: Table object.

== Description

#strong[timetable2table]; converts a timetable to a table.

 When #strong['ConvertRowTimes']; is true, row times are inserted as the first table variable.


== Example

``````matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2], 'VariableNames', {'A'});
T = timetable2table(TT, 'ConvertRowTimes', true)
``````


== See also

#nlink(<table:1_create_convert_tables.table2timetable>)[table2timetable];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
