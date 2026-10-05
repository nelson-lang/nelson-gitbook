#import "../nelson_help.typ": *

= finv <statistics:2_probability_distributions.finv>

Fonction de repartition inverse F

== Syntaxe

- #raw("x = finv(p, v1, v2)");

== Argument d'entrée

/ p: tableau numerique reel : probabilites.
/ v1: tableau numerique reel positif ou scalaire : degres de liberte du numerateur.
/ v2: tableau numerique reel positif ou scalaire : degres de liberte du denominateur.

== Argument de sortie

/ x: valeurs inverses de queue inferieure de la distribution F.

== Description

#strong[finv]; calcule les probabilites inverses de queue inferieure de la distribution F.


== Exemple

``````matlab
p = [0.025 0.5 0.975];
x = finv(p, 5, 20);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.fcdf>)[fcdf];, #nlink(<statistics:2_probability_distributions.fpdf>)[fpdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
