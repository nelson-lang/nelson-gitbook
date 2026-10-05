#import "../nelson_help.typ": *

= extractevents <table:8_timetables_events.extractevents>

Extract an event table from rows of a timetable.

== Syntax

- #raw("ET = extractevents(TT, rows)");
- #raw("ET = extractevents(TT, labels)");
- #raw("ET = extractevents(..., Name, Value)");
- #raw("[ET, TT2] = extractevents(...)");

== Input argument

/ TT: Input timetable.
/ rows: Rows of #strong[TT];: row numbers, logical mask, row times (datetime or duration), timerange or ':'.
/ labels: categorical vector with one element per row of #strong[TT];: the defined elements are the labels of the events, the rows with \<undefined\> are not events.
/ Name, Value: #strong[EventLabels];, #strong[EventLengths];, #strong[EventEnds];: values (scalar or one per event); #strong[EventLabelsVariable];, #strong[EventLengthsVariable];, #strong[EventEndsVariable];: variable of #strong[TT]; holding them; #strong[EventDataVariables];: variables of #strong[TT]; copied to the event table; #strong[PreserveEventVariables];: true to keep these variables in #strong[TT2]; (default false).

== Output argument

/ ET: Event table: the row times of the selected rows and the event variables.
/ TT2: Copy of #strong[TT]; without the variables copied to #strong[ET];, unless #strong[PreserveEventVariables]; is true.

== Description

#strong[extractevents]; creates an event table from rows of a timetable. Only the variables named by the options are copied: the event lengths or ends variable first, then the event labels variable, then the data variables, then the variables made from the #strong[EventLabels];, #strong[EventLengths]; and #strong[EventEnds]; values.

 An event variable cannot also be listed in #strong[EventDataVariables];. #strong[PreserveEventVariables]; requires at least one variable option and the second output.

 To read the event table attached to a timetable, use #strong[TT.Properties.Events];.


== Examples

``````matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], ["a"; "b"; "c"; "d"], 'VariableNames', {'A', 'L'});
ET = extractevents(TT, [2 4], 'EventLabelsVariable', 'L')
[ET, TT2] = extractevents(TT, timerange(seconds(2), seconds(4)), 'EventDataVariables', 'A')

``````

``````matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'A'});
ET = extractevents(TT, categorical(["start"; ""; ""; "stop"]))

``````


== See also

#nlink(<table:8_timetables_events.syncevents>)[syncevents];, #nlink(<table:8_timetables_events.eventtable>)[eventtable];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
