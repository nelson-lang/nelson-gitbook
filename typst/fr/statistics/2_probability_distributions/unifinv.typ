#import "../nelson_help.typ": *

= unifinv <statistics:2_probability_distributions.unifinv>

Fonction de repartition inverse uniforme continue

== Syntaxe

- #raw("x = unifinv(p)");
- #raw("x = unifinv(p, a, b)");

== Argument d'entrée

/ p: tableau numerique reel de probabilites.
/ a: borne inferieure, 0 par defaut.
/ b: borne superieure, 1 par defaut.

== Argument de sortie

/ x: valeurs inverses de queue inferieure uniforme continue.

== Description

#strong[unifinv]; calcule les probabilites inverses de queue inferieure de la distribution uniforme continue.


== Exemple

``````matlab
p = [0.25 0.5 0.75];
x = unifinv(p, -1, 1);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
