#import "../nelson_help.typ": *

= istabular <table:3_summary_information.istabular>

Determine if input is a tabular object.

== Syntax

- #raw("tf = istabular(A)");

== Input argument

/ A: Input array.

== Output argument

/ tf: Logical scalar.

== Description

#strong[istabular(A)]; returns true when #strong[A]; is a table or timetable.


== Example

``````matlab
T = table([1; 2]);
istabular(T)
``````


== See also

#nlink(<table:3_summary_information.istable>)[istable];, #nlink(<table:3_summary_information.istimetable>)[istimetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
