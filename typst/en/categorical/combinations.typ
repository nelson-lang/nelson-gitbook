#import "nelson_help.typ": *

= combinations <categorical:combinations>

Generate all combinations of categorical values.

== Syntax

- #raw("T = combinations(A1, A2, ...)");

== Input argument

/ A1, A2, ...: Input arrays. Each input is converted to a column before the combinations are formed.

== Output argument

/ T: Table containing one row for each combination of input elements.

== Description

#strong[combinations]; forms a table containing the Cartesian product of the supplied arrays.

 When an input variable has a name, that name is reused as the corresponding table variable name.


== Example

Combine two categorical arrays.

``````matlab
A = categorical({'small','large'}); B = categorical({'red','blue'}); T = combinations(A, B)
``````


== See also

#nlink(<categorical:categorical>)[categorical];, #nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:3_summary_information.height>)[height];, #nlink(<table:3_summary_information.width>)[width];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
