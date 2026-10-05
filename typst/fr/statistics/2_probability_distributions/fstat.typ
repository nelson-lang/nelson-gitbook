#import "../nelson_help.typ": *

= fstat <statistics:2_probability_distributions.fstat>

Moyenne et variance F

== Syntaxe

- #raw("[m, v] = fstat(v1, v2)");

== Argument d'entrée

/ v1: scalaire positif ou tableau : degres de liberte du numerateur.
/ v2: scalaire positif ou tableau : degres de liberte du denominateur.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[fstat]; retourne la moyenne et la variance de la loi F.


== Exemple

``````matlab
[m, v] = fstat(5, 6);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
