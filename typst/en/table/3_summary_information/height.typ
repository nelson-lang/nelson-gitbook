#import "../nelson_help.typ": *

= height <table:3_summary_information.height>

Number of table rows

== Syntax

- #raw("H = height(T)");

== Input argument

/ T: Input array (table or other).

== Output argument

/ H: a integer value: Number of table rows in Table or size(T, 1).

== Description

#strong[H \= height(T)]; returns the number of rows in the table #strong[T];.

 The function #strong[height(T)]; is equivalent to #strong[size(T, 1)];, which also provides the number of rows in the table.


== Example

``````matlab
T = table();
height(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
height(T)

``````


== See also

#nlink(<table:3_summary_information.width>)[width];, #nlink(<elementary_functions:7_indexing_dimensions.size>)[size];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
