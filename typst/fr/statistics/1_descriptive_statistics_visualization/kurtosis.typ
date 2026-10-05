#import "../nelson_help.typ": *

= kurtosis <statistics:1_descriptive_statistics_visualization.kurtosis>

Aplatissement d'un jeu de donnees.

== Syntaxe

- #raw("k = kurtosis(X)");
- #raw("k = kurtosis(X, flag)");
- #raw("k = kurtosis(X, flag, dim)");
- #raw("k = kurtosis(X, flag, vecdim)");
- #raw("k = kurtosis(X, flag, 'all')");

== Description

#strong[kurtosis]; calcule l'aplatissement d'echantillon de donnees numeriques. Les valeurs #strong[NaN]; sont omises.

 #strong[flag]; vaut 1 par defaut. Mettre #strong[flag]; a 0 applique la correction de biais.


== Exemple

``````matlab
X = [1 2 5; 2 4 8; 3 8 13];
k = kurtosis(X)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.skewness>)[skewness];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
