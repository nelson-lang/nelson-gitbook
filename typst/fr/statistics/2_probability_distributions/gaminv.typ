#import "../nelson_help.typ": *

= gaminv <statistics:2_probability_distributions.gaminv>

Fonction de repartition inverse gamma

== Syntaxe

- #raw("x = gaminv(p, a)");
- #raw("x = gaminv(p, a, b)");

== Argument d'entrée

/ p: tableau numerique reel de probabilites.
/ a: parametre de forme positif.
/ b: parametre d'echelle positif, 1 par defaut.

== Argument de sortie

/ x: valeurs inverses de queue inferieure gamma.

== Description

#strong[gaminv]; calcule les probabilites inverses de queue inferieure gamma.


== Exemple

``````matlab
p = [0.025 0.5 0.975];
x = gaminv(p, 2, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
