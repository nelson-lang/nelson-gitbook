#import "nelson_help.typ": *

= secd <trigonometric_functions:secd>

Sécante de l'argument en degrés.

== Syntaxe

- #raw("res = secd(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[secd]; calcule la sécante de l'argument en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
R = secd([1, 10+3i, 15+2i, 35+i])
``````


== Voir aussi

#nlink(<trigonometric_functions:sec>)[sec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
