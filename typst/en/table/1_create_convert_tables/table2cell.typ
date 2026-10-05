#import "../nelson_help.typ": *

= table2cell <table:1_create_convert_tables.table2cell>

Convert table to cell array

== Syntax

- #raw("S = table2cell(T)");
- #raw("S = table2cell(T, \"ToScalar\", true)");

== Input argument

/ T: a table object

== Output argument

/ C: Cell array.

== Description

#strong[C \= table2cell(T)]; converts the table #strong[T]; into a cell array #strong[C];, where each variable in#strong[T]; is transformed into a column of cells in #strong[C];.

 The output #strong[C]; does not include any properties from#strong[T.Properties];.

 If #strong[T]; contains row names, these will not be included in#strong[C];.


== Example

``````matlab
S = ["Y";"Y";"N";"N";"N"];
A = [38;43;38;40;49];
B = [124 93;109 77; 125 83; 117 75; 122 80];
T = table(S, A, B, 'VariableNames',["Smoker" "Age" "BloodPressure"], 'RowNames',["Chang" "Brown" "Ruiz" "Lee" "Garcia"])
C = table2cell(T)
``````


== See also

#nlink(<table:1_create_convert_tables.cell2table>)[cell2table];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
