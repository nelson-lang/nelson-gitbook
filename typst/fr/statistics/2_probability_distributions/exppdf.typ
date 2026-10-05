#import "../nelson_help.typ": *

= exppdf <statistics:2_probability_distributions.exppdf>

Densite de probabilite exponentielle

== Syntaxe

- #raw("y = exppdf(x)");
- #raw("y = exppdf(x, mu)");

== Argument d'entrée

/ x: tableau numerique reel.
/ mu: moyenne positive, 1 par defaut.

== Argument de sortie

/ y: valeurs de densite de probabilite.

== Description

#strong[exppdf]; calcule les valeurs de densite de la distribution exponentielle.


== Exemple

``````matlab
x = [0 0.5 1 2];
y = exppdf(x, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
