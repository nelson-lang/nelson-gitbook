#import "nelson_help.typ": *

= summary <data_analysis:summary>

Summarize table variables or categorical values.

== Syntax

- #raw("S = summary(T)");
- #raw("summary(A)");

== Input argument

/ T: Input table.
/ A: Input categorical array.

== Output argument

/ S: Structure with table variable summary information.

== Description

#strong[summary]; returns size and type information for each table variable.

 Numeric table variables also include minimum, maximum, mean, median, standard deviation, and missing value counts.

 For categorical arrays, #strong[summary]; displays the count for each category and for undefined values.


== Examples

Summarize a table.

``````matlab
T = table([1; 2; 3], ["a"; "b"; "c"], 'VariableNames', {'A', 'Label'});
S = summary(T)
``````

Display categorical counts.

``````matlab
A = categorical({'red','blue','red',''});
summary(A)
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:countcats>)[countcats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
