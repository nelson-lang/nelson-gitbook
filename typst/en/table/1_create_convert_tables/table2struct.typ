#import "../nelson_help.typ": *

= table2struct <table:1_create_convert_tables.table2struct>

Convert table to structure array

== Syntax

- #raw("S = table2struct(T)");
- #raw("S = table2struct(T, \"ToScalar\", true)");

== Input argument

/ T: a table object

== Output argument

/ S: Structure.

== Description

#strong[S \= table2struct(T)]; converts the table #strong[T]; into a structure array #strong[S];, where each variable in#strong[T]; is represented as a field in #strong[S];.

 If #strong[T]; is an m-by-n table,#strong[S]; will be an m-by-1 structure array with n fields.

 the output #strong[S]; will not contain any table properties from#strong[T.Properties];.

 #strong[S \= table2struct(T, "ToScalar", true)]; converts the table #strong[T]; into a scalar structure #strong[S];, where each variable in#strong[T]; becomes a field in #strong[S];.

 If #strong[T]; is an m-by-n table,#strong[S]; will contain n fields, and each field will have m rows.


== Example

``````matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
S1 = table2struct(T)
S1 = table2struct(T, "ToScalar", true)
``````


== See also

#nlink(<table:1_create_convert_tables.struct2table>)[struct2table];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
