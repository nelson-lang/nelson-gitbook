#import "../nelson_help.typ": *

= nbinpdf <statistics:2_probability_distributions.nbinpdf>

Probabilites binomiales negatives

== Syntaxe

- #raw("y = nbinpdf(x, r, p)");

== Argument d'entrée

/ x: tableau numerique reel : nombre d'echecs.
/ r: scalaire positif ou tableau : nombre de succes.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.

== Argument de sortie

/ y: probabilites.

== Description

#strong[nbinpdf]; calcule les probabilites de la loi binomiale negative.


== Exemple

``````matlab
x = 0:5;
y = nbinpdf(x, 3, 0.4);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
