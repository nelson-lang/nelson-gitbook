#import "../nelson_help.typ": *

= width <table:3_summary_information.width>

Number of table variables

== Syntax

- #raw("W = width(T)");

== Input argument

/ T: Input array (table or other).

== Output argument

/ W: a integer value: Number of Variables in Table or size(T, 2).

== Description

#strong[W \= width(T)]; returns the number of variables in the table T.

 The function #strong[width(T)]; is equivalent to #strong[size(T, 2)];, which also provides the number of columns in the table.


== Example

``````matlab
T = table();
width(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
width(T)

``````


== See also

#nlink(<table:3_summary_information.height>)[height];, #nlink(<elementary_functions:7_indexing_dimensions.size>)[size];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
