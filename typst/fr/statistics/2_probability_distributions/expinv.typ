#import "../nelson_help.typ": *

= expinv <statistics:2_probability_distributions.expinv>

Fonction de repartition inverse exponentielle

== Syntaxe

- #raw("x = expinv(p)");
- #raw("x = expinv(p, mu)");

== Argument d'entrée

/ p: tableau numerique reel de probabilites.
/ mu: moyenne positive, 1 par defaut.

== Argument de sortie

/ x: valeurs inverses de queue inferieure exponentielle.

== Description

#strong[expinv]; calcule les probabilites inverses de queue inferieure exponentielle.


== Exemple

``````matlab
p = [0.025 0.5 0.975];
x = expinv(p, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
