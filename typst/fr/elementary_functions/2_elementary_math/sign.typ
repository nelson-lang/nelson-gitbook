#import "../nelson_help.typ": *

= sign <elementary_functions:2_elementary_math.sign>

Calculer la fonction signe d'un nombre.

== Syntaxe

- #raw("R = sign(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: résultat de sign.

== Description

#strong[sign]; calcule la fonction signe d'un nombre.

 -1 si l'élément correspondant de M est inférieur à 0.

 0 si l'élément correspondant de M est égal à 0.

 1 si l'élément correspondant de M est supérieur à 0.

 Si l'argument d'entrée est un nombre complexe, #strong[sign]; calcule#strong[M .\/ abs(M)];.


== Exemple

``````matlab
V = [-1 0 15 NaN Inf];
sign(V)
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.conj>)[conj];, #nlink(<elementary_functions:2_elementary_math.abs>)[abs];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
