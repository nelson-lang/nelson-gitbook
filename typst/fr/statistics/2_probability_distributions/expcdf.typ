#import "../nelson_help.typ": *

= expcdf <statistics:2_probability_distributions.expcdf>

Fonction de repartition exponentielle

== Syntaxe

- #raw("p = expcdf(x)");
- #raw("p = expcdf(x, mu)");
- #raw("p = expcdf(x, mu, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel.
/ mu: moyenne positive, 1 par defaut.

== Argument de sortie

/ p: probabilites cumulees ou de queue superieure.

== Description

#strong[expcdf]; calcule par defaut les probabilites de queue inferieure exponentielle et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = [0 0.5 1 2];
p = expcdf(x, 3);
q = expcdf(x, 3, 'upper');
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
