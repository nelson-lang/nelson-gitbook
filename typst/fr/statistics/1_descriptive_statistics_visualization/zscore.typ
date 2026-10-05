#import "../nelson_help.typ": *

= zscore <statistics:1_descriptive_statistics_visualization.zscore>

Scores z standardises.

== Syntaxe

- #raw("Z = zscore(X)");
- #raw("Z = zscore(X, flag)");
- #raw("Z = zscore(X, flag, dim)");
- #raw("Z = zscore(X, flag, vecdim)");
- #raw("Z = zscore(X, flag, 'all')");
- #raw("[Z, mu, sigma] = zscore(...)");

== Description

#strong[zscore]; centre et reduit des donnees numeriques en soustrayant la moyenne puis en divisant par l'ecart type.

 #strong[flag]; vaut 0 pour l'ecart type d'echantillon et 1 pour l'ecart type de population. Les echantillons contenant #strong[NaN]; retournent des scores #strong[NaN];. Les echantillons constants retournent des scores nuls.


== Exemple

``````matlab
X = [1 2 3; 4 5 6];
[Z, mu, sigma] = zscore(X, 0, 1)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];, #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
