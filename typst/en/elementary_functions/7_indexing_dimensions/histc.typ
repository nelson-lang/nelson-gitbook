#import "../nelson_help.typ": *

= histc <elementary_functions:7_indexing_dimensions.histc>

Histogram count with explicit edges.

== Syntax

- #raw("N = histc(X, edges)");
- #raw("[N, bin] = histc(X, edges)");
- #raw("N = histc(X, edges, dim)");

== Input argument

/ X: Numeric or logical array.
/ edges: Numeric vector of bin edges.
/ dim: Dimension to operate along.

== Output argument

/ N: Counts for each edge interval.
/ bin: Bin index for each element of X.

== Description

#strong[histc]; counts values in bins defined by #strong[edges];. Values equal to the last edge are counted in the last bin.


== Example

``````matlab
[N, bin] = histc([0 1 1.5 2], [0 1 2])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.histcounts>)[histcounts];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
