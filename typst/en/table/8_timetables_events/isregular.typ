#import "../nelson_help.typ": *

= isregular <table:8_timetables_events.isregular>

Determine if timetable row times are regularly spaced.

== Syntax

- #raw("tf = isregular(TT)");

== Input argument

/ TT: Input timetable.

== Output argument

/ tf: Logical scalar.

== Description

#strong[isregular]; returns true when all adjacent row-time differences are equal.


== Example

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
isregular(TT)

``````


== See also

#nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
