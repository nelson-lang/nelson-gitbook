#import "../nelson_help.typ": *

= unidpdf <statistics:2_probability_distributions.unidpdf>

Probabilites de loi uniforme discrete

== Syntaxe

- #raw("y = unidpdf(x, n)");

== Argument d'entrée

/ x: tableau numerique reel.
/ n: scalaire entier positif ou tableau : valeur maximale.

== Argument de sortie

/ y: probabilites.

== Description

#strong[unidpdf]; calcule les probabilites de la loi uniforme discrete sur les entiers de 1 a #strong[n];.


== Exemple

``````matlab
x = 0:6;
y = unidpdf(x, 5);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
