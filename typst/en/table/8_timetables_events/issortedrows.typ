#import "../nelson_help.typ": *

= issortedrows <table:8_timetables_events.issortedrows>

Determine if timetable rows are sorted.

== Syntax

- #raw("tf = issortedrows(A)");

== Input argument

/ A: Input timetable.

== Output argument

/ tf: Logical scalar.

== Description

#strong[issortedrows]; returns true when timetable rows are sorted by row times.


== Example

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
issortedrows(TT)

``````


== See also

#nlink(<table:4_sort_filter_rearrange.sortrows>)[sortrows];, #nlink(<data_analysis:issorted>)[issorted];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
