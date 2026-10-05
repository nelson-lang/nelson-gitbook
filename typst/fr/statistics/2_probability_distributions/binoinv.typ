#import "../nelson_help.typ": *

= binoinv <statistics:2_probability_distributions.binoinv>

Fonction de repartition inverse binomiale

== Syntaxe

- #raw("x = binoinv(y, n, p)");

== Argument d'entrée

/ y: tableau numerique reel de probabilites.
/ n: nombre entier non negatif d'essais.
/ p: probabilite de succes dans \[0,1\].

== Argument de sortie

/ x: plus petites valeurs entieres dont les probabilites cumulees sont au moins y.

== Description

#strong[binoinv]; calcule les probabilites inverses de queue inferieure binomiale.


== Exemple

``````matlab
y = [0.025 0.5 0.975];
x = binoinv(y, 10, 0.4);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
