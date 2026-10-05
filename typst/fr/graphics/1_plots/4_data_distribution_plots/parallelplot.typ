#import "../../nelson_help.typ": *

= parallelplot <graphics:1_plots.4_data_distribution_plots.parallelplot>

Affiche un graphique en coordonnees paralleles.

== Syntaxe

- #raw("parallelplot(X)");
- #raw("parallelplot(T)");
- #raw("parallelplot(T, 'CoordinateVariables', variables)");
- #raw("parallelplot(..., 'GroupData', groupe)");
- #raw("parallelplot(..., 'GroupVariable', variableGroupe)");
- #raw("parallelplot(..., 'CoordinateTickLabels', etiquettes)");
- #raw("h = parallelplot(...)");

== Description

#strong[parallelplot]; affiche les lignes d'une matrice numerique ou les variables numeriques d'une table sous forme de coordonnees paralleles.

 L'objet retourne a le type #strong[parallelplot];. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>)[proprietes de parallelplot]; pour la liste complete des proprietes.


== Exemples

Tracer les lignes d'une matrice en coordonnees paralleles.

``````matlab
X = [1 10 100; 2 20 50; 3 30 0; 4 15 70];
parallelplot(X, 'CoordinateTickLabels', {'A', 'B', 'C'});
``````


#align(center)[#image("parallelplot_1.svg")]
Tracer des variables selectionnees dans une table et grouper les lignes par variable de table.

``````matlab
T = table([1; 2; 3], [4; 5; 6], {'a'; 'a'; 'b'}, 'VariableNames', {'A', 'B', 'G'});
parallelplot(T, 'CoordinateVariables', {'A', 'B'}, 'GroupVariable', 'G');
``````


#align(center)[#image("parallelplot_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.plotmatrix>)[plotmatrix];, #nlink(<graphics:1_plots.4_data_distribution_plots.stackedplot>)[stackedplot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>)[proprietes de parallelplot];, #nlink(<table:1_create_convert_tables.table>)[table];.
