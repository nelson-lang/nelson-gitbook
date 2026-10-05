#import "../nelson_help.typ": *

= withtol <table:8_timetables_events.withtol>

Time tolerance for timetable row subscripting.

== Syntax

- #raw("S = withtol(rowTimes, tol)");

== Input argument

/ rowTimes: datetime or duration vector, or text converted to datetime.
/ tol: Nonnegative scalar duration.

== Output argument

/ S: Timetable row subscript.

== Description

#strong[withtol]; creates a row subscript that selects the rows of a timetable whose row times are within #strong[tol]; of the times in #strong[rowTimes]; (bounds included). The rows are listed time by time, in the order of #strong[rowTimes];.

 It can be used in #strong[TT(S, vars)];, #strong[TT{S, vars}];, #strong[TT.name(S)];, and in assignments and deletions.

 The tolerance must be less than half the smallest interval between distinct times of #strong[rowTimes];, so that no row is selected twice. The times must have the same type as the row times of the timetable.


== Example

``````matlab
TT = timetable(seconds([1; 2; 2.05; 3; 4]), (1:5)', 'VariableNames', {'A'});
S = withtol(seconds([2 3.9]), seconds(0.2))
TT(S, :)
TT.A(withtol(seconds(2), seconds(0.1)))

``````


== See also

#nlink(<table:8_timetables_events.timerange>)[timerange];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
