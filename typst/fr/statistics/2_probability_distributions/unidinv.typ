#import "../nelson_help.typ": *

= unidinv <statistics:2_probability_distributions.unidinv>

Inverse de repartition uniforme discrete

== Syntaxe

- #raw("x = unidinv(p, n)");

== Argument d'entrée

/ p: probabilites dans l'intervalle \[0, 1\].
/ n: scalaire entier positif ou tableau : valeur maximale.

== Argument de sortie

/ x: valeurs inverses.

== Description

#strong[unidinv]; calcule l'inverse de repartition de la loi uniforme discrete sur les entiers de 1 a #strong[n];.


== Exemple

``````matlab
p = [0 0.1 0.5 1];
x = unidinv(p, 5);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
