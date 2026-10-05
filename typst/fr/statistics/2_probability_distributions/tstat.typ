#import "../nelson_help.typ": *

= tstat <statistics:2_probability_distributions.tstat>

Moyenne et variance Student t

== Syntaxe

- #raw("[m, v] = tstat(nu)");

== Argument d'entrée

/ nu: scalaire positif ou tableau : degres de liberte.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[tstat]; retourne la moyenne et la variance de la loi Student t.


== Exemple

``````matlab
[m, v] = tstat([1.5 3 Inf]);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
