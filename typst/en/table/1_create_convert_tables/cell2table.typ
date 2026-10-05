#import "../nelson_help.typ": *

= cell2table <table:1_create_convert_tables.cell2table>

Convert cell array to table.

== Syntax

- #raw("T = cell2table(C)");
- #raw("T = cell2table(C, Name, Value)");

== Input argument

/ C: 2-D cell array.
/ Name, Value: Name-value arguments, in any order: 'VariableNames' (string array or cell array of character vectors, one name per column of C), 'RowNames' (string array or cell array of nonempty names, one name per row of C), 'DimensionNames' (two names). Names are case-insensitive.

== Output argument

/ T: Table object.

== Description

#strong[T \= cell2table(C)]; converts the contents of an m-by-n cell array#strong[C]; into an m-by-n table.

 Each column of the input cell array becomes the data for a corresponding variable in the output table.

 To generate variable names in the output table,#strong[cell2table]; appends the column numbers to the name of the input array.

 If the input array does not have a name,#strong[cell2table]; assigns default variable names in the format#strong["Var1", "Var2", ... , "VarN"];, where #strong[N]; is the number of columns in the cell array.

 #strong[T \= cell2table(C, Name, Value)]; creates the table with the name-value arguments #strong[VariableNames];, #strong[RowNames]; and #strong[DimensionNames];. These values are validated like the ones given to #strong[table];; any other name raises an error.


== Examples

``````matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T = cell2table(C)
``````

Variable and row names

``````matlab
C = {'John', 28; 'Alice', 35};
T = cell2table(C, 'VariableNames', {'Name', 'Age'}, 'RowNames', {'r1', 'r2'})
``````


== See also

#nlink(<table:1_create_convert_tables.table2cell>)[table2cell];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
