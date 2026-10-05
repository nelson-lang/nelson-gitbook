#import "../nelson_help.typ": *

= unifcdf <statistics:2_probability_distributions.unifcdf>

Fonction de repartition uniforme continue

== Syntaxe

- #raw("p = unifcdf(x)");
- #raw("p = unifcdf(x, a, b)");
- #raw("p = unifcdf(..., 'upper')");

== Argument d'entrée

/ x: tableau numerique reel.
/ a: borne inferieure, 0 par defaut.
/ b: borne superieure, 1 par defaut.

== Argument de sortie

/ p: probabilites cumulees ou de queue superieure.

== Description

#strong[unifcdf]; calcule par defaut les probabilites de queue inferieure uniforme continue et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = 0:0.25:1;
p = unifcdf(x);
q = unifcdf(x, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];, #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
