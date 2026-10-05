#import "../../nelson_help.typ": *

= parallelplot <graphics:1_plots.4_data_distribution_plots.parallelplot>

Display parallel coordinates plot.

== Syntax

- #raw("parallelplot(X)");
- #raw("parallelplot(T)");
- #raw("parallelplot(T, 'CoordinateVariables', variables)");
- #raw("parallelplot(..., 'GroupData', group)");
- #raw("parallelplot(..., 'GroupVariable', groupVariable)");
- #raw("parallelplot(..., 'CoordinateTickLabels', labels)");
- #raw("h = parallelplot(...)");

== Description

#strong[parallelplot]; displays rows of a numeric matrix or numeric table variables as parallel coordinate lines.

 The returned object has type #strong[parallelplot];. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>)[parallelplot properties]; for the complete property list.


== Examples

Plot matrix rows as parallel coordinates.

``````matlab
X = [1 10 100; 2 20 50; 3 30 0; 4 15 70];
parallelplot(X, 'CoordinateTickLabels', {'A', 'B', 'C'});
``````


#align(center)[#image("parallelplot_1.svg")]
Plot selected table variables and group rows by a table variable.

``````matlab
T = table([1; 2; 3], [4; 5; 6], {'a'; 'a'; 'b'}, 'VariableNames', {'A', 'B', 'G'});
parallelplot(T, 'CoordinateVariables', {'A', 'B'}, 'GroupVariable', 'G');
``````


#align(center)[#image("parallelplot_2.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.plotmatrix>)[plotmatrix];, #nlink(<graphics:1_plots.4_data_distribution_plots.stackedplot>)[stackedplot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>)[parallelplot properties];, #nlink(<table:1_create_convert_tables.table>)[table];.
