#import "nelson_help.typ": *

= cscd <trigonometric_functions:cscd>

Cosécante de l'argument en degrés.

== Syntaxe

- #raw("res = cscd(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[cscd]; calcule la cosécante de l'argument en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
R = cscd([35+i 15+2i 10+3i])
``````


== Voir aussi

#nlink(<trigonometric_functions:cosh>)[csc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
