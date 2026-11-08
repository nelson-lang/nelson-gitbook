#import "nelson_help.typ": *

= findgroups <data_analysis:findgroups>

Find groups and return group numbers.

== Syntax

- #raw("G = findgroups(A)");
- #raw("[G, ID] = findgroups(A)");
- #raw("[G, ID1, ..., IDn] = findgroups(A1, ..., An)");

== Input argument

/ A, A1, ..., An: grouping variables with the same number of elements.

== Output argument

/ G: group numbers; missing values map to #strong[NaN];.
/ ID: the group identifiers, one output per grouping variable.

== Description

#strong[G \= findgroups(A)]; returns a vector of group numbers created from the grouping variable #strong[A];.

 Use #strong[G]; with #strong[splitapply]; to apply a function to each group.


== Example

``````matlab
[G, id] = findgroups([10; 20; 10; 30; 20])
``````


== See also

#nlink(<data_analysis:splitapply>)[splitapply];, #nlink(<data_analysis:accumarray>)[accumarray];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
