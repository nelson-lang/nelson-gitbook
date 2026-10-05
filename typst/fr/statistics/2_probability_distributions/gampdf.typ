#import "../nelson_help.typ": *

= gampdf <statistics:2_probability_distributions.gampdf>

Densite de probabilite gamma

== Syntaxe

- #raw("y = gampdf(x, a)");
- #raw("y = gampdf(x, a, b)");

== Argument d'entrée

/ x: tableau numerique reel.
/ a: parametre de forme positif.
/ b: parametre d'echelle positif, 1 par defaut.

== Argument de sortie

/ y: valeurs de densite de probabilite.

== Description

#strong[gampdf]; calcule les valeurs de densite de la distribution gamma.


== Exemple

``````matlab
x = [0 0.5 1 2 5];
y = gampdf(x, 2, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
