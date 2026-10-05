#import "nelson_help.typ": *

= asecd <trigonometric_functions:asecd>

Sécante inverse de l'argument en degrés.

== Syntaxe

- #raw("res = asecd(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[asecd]; calcule la sécante inverse de l'argument en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
R = asecd([1, 10+3i, 15+2i, 35+i])
``````


== Voir aussi

#nlink(<trigonometric_functions:asec>)[asec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
