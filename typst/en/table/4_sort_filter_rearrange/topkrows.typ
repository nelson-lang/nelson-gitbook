#import "../nelson_help.typ": *

= topkrows <table:4_sort_filter_rearrange.topkrows>

Return top rows of a table or timetable.

== Syntax

- #raw("B = topkrows(A, k)");
- #raw("[B, I] = topkrows(A, k, vars)");

== Input argument

/ A: Input table or timetable.
/ k: Number of rows.

== Output argument

/ B: Output table or timetable.
/ I: Selected row indices.

== Description

#strong[topkrows]; returns the first #strong[k]; rows after sorting by row times or selected variables.


== Example

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 30; 20], 'VariableNames', {'A'});
topkrows(TT, 2, 'A')

``````


== See also

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<data_analysis:sort>)[sort];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
