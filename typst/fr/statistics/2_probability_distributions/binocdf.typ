#import "../nelson_help.typ": *

= binocdf <statistics:2_probability_distributions.binocdf>

Fonction de repartition binomiale

== Syntaxe

- #raw("p = binocdf(x, n, prob)");
- #raw("p = binocdf(x, n, prob, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel.
/ n: nombre entier non negatif d'essais.
/ prob: probabilite de succes dans \[0,1\].

== Argument de sortie

/ p: probabilites cumulees ou de queue superieure.

== Description

#strong[binocdf]; calcule par defaut les probabilites de queue inferieure binomiale et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = 0:10;
p = binocdf(x, 10, 0.4);
q = binocdf(x, 10, 0.4, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];, #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
