#import "../nelson_help.typ": *

= tcdf <statistics:2_probability_distributions.tcdf>

Fonction de repartition de Student t

== Syntaxe

- #raw("p = tcdf(x, v)");
- #raw("p = tcdf(x, v, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel : valeurs ou la distribution est evaluee.
/ v: tableau numerique reel positif ou scalaire : degres de liberte.

== Argument de sortie

/ p: probabilites cumulees ou probabilites de queue superieure.

== Description

#strong[tcdf]; calcule par defaut les probabilites de queue inferieure de Student t et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = [-3 -1 0 1 3];
p = tcdf(x, 5);
q = tcdf(x, 5, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.tpdf>)[tpdf];, #nlink(<statistics:2_probability_distributions.tinv>)[tinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
