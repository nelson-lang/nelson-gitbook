#import "../nelson_help.typ": *

= corrcoef <statistics:1_descriptive_statistics_visualization.corrcoef>

Coefficients de corrélation

== Syntaxe

- #raw("R = corrcoef(M)");

== Argument d'entrée

/ M: un vecteur ou une matrice

== Argument de sortie

/ R: Coefficients de corrélation de M.

== Description

#strong[R \= corrcoef(M)]; renvoie la matrice des coefficients de corrélation pour#strong[M];, où les colonnes de #strong[M]; représentent des variables aléatoires et les lignes représentent des observations.


== Fonction(s) utilisée(s)

cov std var

== Exemple

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
R = corrcoef(M)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
