#import "../nelson_help.typ": *

= cov <statistics:1_descriptive_statistics_visualization.cov>

Covariance

== Syntaxe

- #raw("C = cov(M)");

== Argument d'entrée

/ M: un vecteur ou une matrice

== Argument de sortie

/ V: Covariance de M.

== Description

#strong[C \= cov(M)]; renvoie la covariance.


== Fonction(s) utilisée(s)

corrcoef std var

== Exemple

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
C = cov(M)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
