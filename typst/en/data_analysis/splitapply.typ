#import "nelson_help.typ": *

= splitapply <data_analysis:splitapply>

Split data into groups and apply a function.

== Syntax

- #raw("Y = splitapply(func, A, G)");
- #raw("Y = splitapply(func, A1, ..., An, G)");
- #raw("[Y1, ..., Ym] = splitapply(func, ..., G)");

== Input argument

/ func: a function handle applied to each group.
/ A, A1, ..., An: the data to split by group (rows).
/ G: group numbers, typically from #strong[findgroups];.

== Output argument

/ Y: the results, with one row per group.

== Description

#strong[Y \= splitapply(func, A, G)]; splits #strong[A]; into groups according to #strong[G]; and applies #strong[func]; to each group, concatenating the results.


== Example

``````matlab
G = findgroups([1; 2; 1; 2; 1]);
Y = splitapply(@sum, [10; 20; 30; 40; 50], G)
``````


== See also

#nlink(<data_analysis:findgroups>)[findgroups];, #nlink(<data_analysis:accumarray>)[accumarray];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
