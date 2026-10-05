#import "../nelson_help.typ": *

= mad <statistics:1_descriptive_statistics_visualization.mad>

Ecart absolu moyen ou median.

== Syntaxe

- #raw("y = mad(X)");
- #raw("y = mad(X, flag)");
- #raw("y = mad(X, flag, dim)");
- #raw("y = mad(X, flag, vecdim)");
- #raw("y = mad(X, flag, 'all')");

== Description

#strong[mad]; calcule l'ecart absolu moyen lorsque #strong[flag]; vaut 0, et l'ecart absolu median lorsque #strong[flag]; vaut 1. Les valeurs #strong[NaN]; sont omises.

 Les dimensions de calcul peuvent etre une dimension scalaire, un vecteur de dimensions ou #strong[all];.


== Exemple

``````matlab
X = [1 2 3; 4 NaN 6; 7 8 9];
y = mad(X)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<statistics:1_descriptive_statistics_visualization.iqr>)[iqr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
