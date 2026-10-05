#import "nelson_help.typ": *

= histcounts <categorical:histcounts>

Count categorical values for histogram-style summaries.

== Syntax

- #raw("counts = histcounts(A)");

== Input argument

/ A: Input categorical array.

== Output argument

/ counts: Counts for each category in category order.

== Description

#strong[histcounts]; returns category counts for a categorical array.

 The result is equivalent to #strong[countcats(A)];; undefined elements are ignored.


== Example

Count values for each category.

``````matlab
A = categorical({'red','blue','red'}); counts = histcounts(A)
``````


== See also

#nlink(<categorical:countcats>)[countcats];, #nlink(<categorical:categories>)[categories];, #nlink(<categorical:isundefined>)[isundefined];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
