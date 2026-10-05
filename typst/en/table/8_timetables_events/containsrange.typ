#import "../nelson_help.typ": *

= containsrange <table:8_timetables_events.containsrange>

Determine if timetable row times contain a time range.

== Syntax

- #raw("[tf, tfRow] = containsrange(TT, timeSpec)");

== Input argument

/ TT: Input timetable.
/ timeSpec: Time range specification.

== Output argument

/ tf: Logical scalar.
/ tfRow: Logical row selector.

== Description

#strong[containsrange]; tests whether timetable row times cover the specified time range.


== Example

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
containsrange(TT, seconds([1.5; 2.5]))

``````


== See also

#nlink(<table:8_timetables_events.withinrange>)[withinrange];, #nlink(<table:8_timetables_events.overlapsrange>)[overlapsrange];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
