#import "../nelson_help.typ": *

= fcdf <statistics:2_probability_distributions.fcdf>

Fonction de repartition F

== Syntaxe

- #raw("p = fcdf(x, v1, v2)");
- #raw("p = fcdf(x, v1, v2, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel : valeurs ou la distribution est evaluee.
/ v1: tableau numerique reel positif ou scalaire : degres de liberte du numerateur.
/ v2: tableau numerique reel positif ou scalaire : degres de liberte du denominateur.

== Argument de sortie

/ p: probabilites cumulees ou probabilites de queue superieure.

== Description

#strong[fcdf]; calcule par defaut les probabilites de queue inferieure de la distribution F et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = [0.5 1 2 5];
p = fcdf(x, 5, 20);
q = fcdf(x, 5, 20, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.fpdf>)[fpdf];, #nlink(<statistics:2_probability_distributions.finv>)[finv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
