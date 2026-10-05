#import "../nelson_help.typ": *

= overlapsrange <table:8_timetables_events.overlapsrange>

Determine if timetable row times overlap a time range.

== Syntax

- #raw("[tf, tfRow] = overlapsrange(TT, timeSpec)");

== Input argument

/ TT: Input timetable.
/ timeSpec: Time range specification.

== Output argument

/ tf: Logical scalar.
/ tfRow: Logical row selector.

== Description

#strong[overlapsrange]; tests whether timetable row times overlap the specified time range.


== Example

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
overlapsrange(TT, seconds([2; 4]))

``````


== See also

#nlink(<table:8_timetables_events.withinrange>)[withinrange];, #nlink(<table:8_timetables_events.containsrange>)[containsrange];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
