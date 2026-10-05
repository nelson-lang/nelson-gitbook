#import "../nelson_help.typ": *

= unidcdf <statistics:2_probability_distributions.unidcdf>

Fonction de repartition uniforme discrete

== Syntaxe

- #raw("p = unidcdf(x, n)");

== Argument d'entrée

/ x: tableau numerique reel.
/ n: scalaire entier positif ou tableau : valeur maximale.

== Argument de sortie

/ p: probabilites cumulees.

== Description

#strong[unidcdf]; calcule les probabilites cumulees de la loi uniforme discrete sur les entiers de 1 a #strong[n];.


== Exemple

``````matlab
x = 0:6;
p = unidcdf(x, 5);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
