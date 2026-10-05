#import "../nelson_help.typ": *

= table2array <table:1_create_convert_tables.table2array>

Convert table to homogeneous array.

== Syntax

- #raw("A = table2array(T)");

== Input argument

/ T: table object.

== Output argument

/ A: matrix: single, double, integer types, logical, char, string, struct, cell.

== Description

#strong[A \= table2array(T)]; converts the input table #strong[T]; into a homogeneous array #strong[A];, where the variables in#strong[T]; become the columns of #strong[A];.

 The output #strong[A]; does not retain the table properties from#strong[T.Properties];.

 If #strong[T]; is a table with row names, these row names will not be included in#strong[A];.


== Example

``````matlab
A = magic(6);
T = array2table(A);
A = table2array(T)
``````


== See also

#nlink(<table:1_create_convert_tables.array2table>)[array2table];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
