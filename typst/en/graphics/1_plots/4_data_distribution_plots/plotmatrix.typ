#import "../../nelson_help.typ": *

= plotmatrix <graphics:1_plots.4_data_distribution_plots.plotmatrix>

Display a matrix of pairwise plots.

== Syntax

- #raw("plotmatrix(X)");
- #raw("plotmatrix(X, Y)");
- #raw("plotmatrix(..., marker)");
- #raw("[h, ax, bigax, p, pax] = plotmatrix(...)");

== Description

#strong[plotmatrix]; creates a grid of pairwise plots for the columns of numeric matrices. With one input matrix, the diagonal cells include histograms returned in #strong[p];, while #strong[h]; contains the scatter line objects.


== Examples

Create a plot matrix for three variables.

``````matlab
X = [1 2 3; 2 3 5; 3 5 8; 4 7 13; 5 11 21];
plotmatrix(X);
``````


#align(center)[#image("plotmatrix_1.svg")]
Compare columns from two matrices.

``````matlab
X = rand(30, 2);
Y = [X(:, 1).^2, sin(X(:, 2)), X(:, 1) + X(:, 2)];
plotmatrix(X, Y, 'o');
``````


#align(center)[#image("plotmatrix_2.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];, #nlink(<graphics:2_graphics_objects.2_layout_objects.subplot>)[subplot];.
