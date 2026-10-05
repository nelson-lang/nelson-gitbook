#import "../nelson_help.typ": *

= ndgrid <elementary_functions:1_array_creation_shape.ndgrid>

Grille rectangulaire dans un espace à N dimensions

== Syntaxe

- #raw("[X1, X2, ..., Xn] = ndgrid(x1, x2, ... , xn)");
- #raw("[X1, X2, ..., Xn] = ndgrid(xg)");

== Argument d'entrée

/ x1, x2, â€¦ , xn: vecteur : vecteurs de grille passés comme arguments séparés.
/ xg: vecteur : vecteur de grille pour toutes les dimensions.

== Argument de sortie

/ X1, X2, â€¦ , Xn: tableau : représentation complète de la grille.

== Description

#strong[\[X1, X2, â€¦ , Xn\] \= ndgrid(x1, x2, â€¦ , xn)]; génère une grille complète à n dimensions en répliquant chaque vecteur de grille.

 #strong[\[X1, X2, â€¦ , Xn\] \= ndgrid(xg)]; Dans ce cas, l'unique vecteur de grille#strong[xg]; est utilisé pour toutes les dimensions. Le nombre d'arguments de sortie détermine la dimensionnalité n de la grille résultante.


== Exemples

``````matlab
M = {'apple', 'banana', 'cherry'};
N = {'blue', 'green', 'red'};
ndgrid(M , N)

``````

``````matlab
[X, Y] = ndgrid(1:2:19, 2:2:12)
``````


== Voir aussi

#nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [version initiale],
)

// Auteur: Allan CORNET
