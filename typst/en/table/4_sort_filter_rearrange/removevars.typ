#import "../nelson_help.typ": *

= removevars <table:4_sort_filter_rearrange.removevars>

Delete variables from table.

== Syntax

- #raw("TB = removevars(TA, varsNames)");

== Input argument

/ TA: Input table.
/ varsNames: Variable names in input table to remove: character vector, string array or cell array of character vectors.

== Output argument

/ TB: Table object modified.

== Description

#strong[TB \= removevars(TA, varsNames)]; removes the variables specified by#strong[varsNames]; from the table #strong[TA]; and stores the remaining variables in #strong[T2];.

 You can specify the variables by name, position, or using logical indices.

 You can also remove variables from a table using#strong[T(:, varsNames) \= \[\]];.


== Example

``````matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C)
T2 = removevars(T1, 'C2')

``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.renamevars>)[renamevars];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [initial version],
)

// Author: Allan CORNET
