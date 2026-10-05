#import "../nelson_help.typ": *

= gamcdf <statistics:2_probability_distributions.gamcdf>

Fonction de repartition gamma

== Syntaxe

- #raw("p = gamcdf(x, a)");
- #raw("p = gamcdf(x, a, b)");
- #raw("p = gamcdf(x, a, b, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel.
/ a: parametre de forme positif.
/ b: parametre d'echelle positif, 1 par defaut.

== Argument de sortie

/ p: probabilites cumulees ou de queue superieure.

== Description

#strong[gamcdf]; calcule par defaut les probabilites de queue inferieure gamma et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = [0 0.5 1 2 5];
p = gamcdf(x, 2, 3);
q = gamcdf(x, 2, 3, 'upper');
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
