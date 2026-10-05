#import "nelson_help.typ": *

= groupcounts <data_analysis:groupcounts>

Count groups.

== Syntax

- #raw("counts = groupcounts(A)");
- #raw("[counts, groups] = groupcounts(A)");
- #raw("G = groupcounts(T, groupVars)");

== Input argument

/ A: Input array.
/ T: Input table.
/ groupVars: Grouping variables.

== Output argument

/ counts: Number of elements in each group.
/ groups: Unique group values.
/ G: Table containing groups, counts, and percentages.

== Description

#strong[groupcounts]; counts the number of elements or table rows in each group.


== Example

``````matlab
[counts, groups] = groupcounts([1; 1; 2; 3; 3; 3])
T = table({'a'; 'a'; 'b'}, [1; 2; 4], 'VariableNames', {'G', 'X'});
C = groupcounts(T, 'G')
``````


== See also

#nlink(<data_analysis:groupsummary>)[groupsummary];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
