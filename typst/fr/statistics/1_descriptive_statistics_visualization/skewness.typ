#import "../nelson_help.typ": *

= skewness <statistics:1_descriptive_statistics_visualization.skewness>

Asymetrie d'un jeu de donnees.

== Syntaxe

- #raw("y = skewness(X)");
- #raw("y = skewness(X, flag)");
- #raw("y = skewness(X, flag, dim)");
- #raw("y = skewness(X, flag, vecdim)");
- #raw("y = skewness(X, flag, 'all')");

== Description

#strong[skewness]; calcule l'asymetrie d'echantillon de donnees numeriques. Les valeurs #strong[NaN]; sont omises.

 #strong[flag]; vaut 1 par defaut. Mettre #strong[flag]; a 0 applique la correction de biais.


== Exemple

``````matlab
X = [1 2 5; 2 4 8; 3 8 13];
y = skewness(X)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.kurtosis>)[kurtosis];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
