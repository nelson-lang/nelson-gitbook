#import "../nelson_help.typ": *

= array2table <table:1_create_convert_tables.array2table>

Convert homogeneous array to table.

== Syntax

- #raw("T = array2table(A)");

== Input argument

/ A: matrix: single, double, integer types, logical, char, string, struct, cell.

== Output argument

/ T: Table object.

== Description

#strong[T \= array2table(A)]; converts an m-by-n array#strong[A]; into an m-by-n table, where each column of #strong[A]; becomes a variable in the resulting table #strong[T];.

 By default,#strong[array2table]; uses the name of the input array, combined with the column number, to create variable names in the table. If these names are not valid identifiers, it assigns default names of the form#strong['Var1', 'Var2', ... , 'VarN'];, where #strong[N]; is the number of columns in #strong[A];.


== Example

``````matlab
A = magic(6);
T = array2table(A)
T = array2table(magic(6))
``````


== See also

#nlink(<table:1_create_convert_tables.table2array>)[table2array];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
