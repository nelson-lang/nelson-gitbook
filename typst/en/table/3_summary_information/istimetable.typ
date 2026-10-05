#import "../nelson_help.typ": *

= istimetable <table:3_summary_information.istimetable>

Determine if input is a timetable.

== Syntax

- #raw("tf = istimetable(A)");

== Input argument

/ A: Input array.

== Output argument

/ tf: Logical scalar.

== Description

#strong[istimetable(A)]; returns true when #strong[A]; is a timetable.


== Example

``````matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2]);
istimetable(TT)
``````


== See also

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<table:3_summary_information.istabular>)[istabular];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
