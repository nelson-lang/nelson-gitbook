#import "../nelson_help.typ": *

= unifpdf <statistics:2_probability_distributions.unifpdf>

Densite de probabilite uniforme continue

== Syntaxe

- #raw("y = unifpdf(x)");
- #raw("y = unifpdf(x, a, b)");

== Argument d'entrée

/ x: tableau numerique reel.
/ a: borne inferieure, 0 par defaut.
/ b: borne superieure, 1 par defaut.

== Argument de sortie

/ y: valeurs de densite de probabilite.

== Description

#strong[unifpdf]; calcule les valeurs de densite de la distribution uniforme continue.


== Exemple

``````matlab
x = 0:0.25:1;
y = unifpdf(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
