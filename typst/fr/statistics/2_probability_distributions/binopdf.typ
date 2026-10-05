#import "../nelson_help.typ": *

= binopdf <statistics:2_probability_distributions.binopdf>

Fonction de masse binomiale

== Syntaxe

- #raw("y = binopdf(x, n, p)");

== Argument d'entrée

/ x: tableau numerique reel.
/ n: nombre entier non negatif d'essais.
/ p: probabilite de succes dans \[0,1\].

== Argument de sortie

/ y: valeurs de masse de probabilite.

== Description

#strong[binopdf]; calcule les valeurs de masse de probabilite binomiale.


== Exemple

``````matlab
x = 0:10;
y = binopdf(x, 10, 0.4);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
