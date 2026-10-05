#import "../nelson_help.typ": *

= istable <table:3_summary_information.istable>

Determine if input is table.

== Syntax

- #raw("tf = istable(A)");

== Input argument

/ A: Input array.

== Output argument

/ tf: a logical: true if it is a table.

== Description

#strong[tf \= istable(A)]; returns #strong[true]; if #strong[A]; is a table, and #strong[false]; if it is not.


== Example

``````matlab
T = table();
istable(T)
M = magic(6);
istable(M)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
