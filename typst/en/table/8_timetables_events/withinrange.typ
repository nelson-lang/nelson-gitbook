#import "../nelson_help.typ": *

= withinrange <table:8_timetables_events.withinrange>

Find timetable rows within a time range.

== Syntax

- #raw("[tf, tfRow] = withinrange(TT, timeSpec)");

== Input argument

/ TT: Input timetable.
/ timeSpec: Time range specification.

== Output argument

/ tf: Logical scalar.
/ tfRow: Logical row selector.

== Description

#strong[withinrange]; tests whether timetable row times are within a specified time range.


== Example

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
withinrange(TT, seconds([1; 2]))

``````


== See also

#nlink(<table:8_timetables_events.containsrange>)[containsrange];, #nlink(<table:8_timetables_events.overlapsrange>)[overlapsrange];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
