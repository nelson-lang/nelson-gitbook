#import "../nelson_help.typ": *

= renamevars <table:4_sort_filter_rearrange.renamevars>

Rename variables in table.

== Syntax

- #raw("TB = renamevars(TA, varsNames, newNames)");

== Input argument

/ TA: Input table.
/ varsNames: Variable names in input table: character vector, string array or cell array of character vectors.
/ newNames: New names for variables: character vector, string array or cell array of character vectors.

== Output argument

/ TB: Table object with variable names modified.

== Description

#strong[TB \= renamevars(TA, varsNames, newNames)]; renames the variables in the table #strong[TA]; as specified by#strong[varsNames]; and assigns them the new names provided in#strong[newNames];.

 You can also rename all the variables in a table by assigning new names to its#strong[VariableNames]; property using#strong[T.Properties.VariableNames \= newNames];.

 In this case,#strong[newNames]; must be a string array or a cell array of character vectors.


== Example

``````matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C);
T2 = renamevars(T1, {'C1', 'C2'}, {'Name', 'Age'})
T3 = cell2table(C);
T3.Properties.VariableNames = {'Name', 'Age', 'Married'};
T3
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:4_sort_filter_rearrange.removevars>)[removevars];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [initial version],
)

// Author: Allan CORNET
