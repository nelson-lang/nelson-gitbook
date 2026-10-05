#import "../../nelson_help.typ": *

= spy <graphics:1_plots.4_data_distribution_plots.spy>

Visualize sparsity pattern of matrix.

== Syntax

- #raw("spy(S)");
- #raw("spy(S, LineSpec)");
- #raw("spy(S, LineSpec, MarkerSize)");

== Input argument

/ S: matrix: sparse or dense.
/ LineSpec: Line style, marker, and\/or color: character vector or scalar string.
/ MarkerSize: positive integer scalar value.

== Description

#strong[spy(S)]; plots the sparsity pattern of the sparse matrix#strong[S];.


== Examples

``````matlab
f = figure();
rng('default');
S = sparse(round((rand(1, 10) + 1) * 100), round((rand(1, 10) + 1) * 100) , (rand(1, 10) + 1) * 10);
spy(S);
``````


#align(center)[#image("spy_1.svg")]
``````matlab
f = figure();
rng('default');
S = sparse(round((rand(1, 10) + 1) * 100), round((rand(1, 10) + 1) * 100) , (rand(1, 10) + 1) * 100);
spy(S, 45);
``````


#align(center)[#image("spy_2.svg")]
``````matlab
f = figure();
spy();
``````


#align(center)[#image("spy_3.svg")]

== See also

#nlink(<sparse:sparse>)[sparse];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
