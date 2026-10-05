#import "../nelson_help.typ": *

= syncevents <table:8_timetables_events.syncevents>

Add and synchronize the variables of the attached event table to a timetable.

== Syntax

- #raw("TT2 = syncevents(TT)");
- #raw("TT2 = syncevents(TT, defaultLabel)");
- #raw("TT2 = syncevents(..., 'EventDataVariables', vars)");

== Input argument

/ TT: Input timetable with an event table in #strong[TT.Properties.Events];.
/ defaultLabel: Scalar: label of the rows without event, converted to the type of the event labels.
/ vars: Variables of the event table to copy: names (string array, character vector, cell array of character vectors), indices or logical mask.

== Output argument

/ TT2: Timetable with the event variables added.

== Description

#strong[syncevents]; copies the variables of the event table attached to #strong[TT]; into the timetable. Each row of #strong[TT]; gets the values of the events that happen at its row time: an event without length or end matches the rows at its time, an event with a length or an end matches the rows in \[time, end). A row matched by several events is repeated, once per event, in the order of the event table. The other rows get missing values (NaN, NaT, \<missing\>, \<undefined\>, an empty character vector in a cell, 0 or false).

 By default, all the variables of the event table are copied except the event lengths or ends variable. With #strong[EventDataVariables];, only the listed variables are copied, in that order.

 A copied variable whose name is already a variable of #strong[TT]; is added with the suffix #strong[\_et];, the variable of #strong[TT]; being renamed with the suffix #strong[\_tt];. The units and descriptions of the event variables are copied. The event table stays attached to the result.

 An error is raised when no event table is attached to #strong[TT];. To attach events, assign #strong[TT.Properties.Events];.


== Examples

``````matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'A'});
TT.Properties.Events = eventtable(seconds([2; 4]), 'EventLabels', ["start"; "stop"]);
syncevents(TT)
syncevents(TT, "none")

``````

``````matlab
TT = timetable(seconds((1:5)'), (1:5)', 'VariableNames', {'A'});
E = timetable(seconds(1.5), "heat", seconds(2), 80, 'VariableNames', {'L', 'D', 'Power'});
TT.Properties.Events = eventtable(E, 'EventLabelsVariable', 'L', 'EventLengthsVariable', 'D');
syncevents(TT, 'EventDataVariables', "Power")

``````


== See also

#nlink(<table:8_timetables_events.extractevents>)[extractevents];, #nlink(<table:8_timetables_events.eventtable>)[eventtable];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
